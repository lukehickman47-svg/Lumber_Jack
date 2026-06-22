var SVG = {
  user: '<svg viewBox="0 0 24 24"><path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg>',
  group: '<svg viewBox="0 0 24 24"><path d="M16 11c1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3 1.34 3 3 3zm-8 0c1.66 0 3-1.34 3-3S9.66 5 8 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5z"/></svg>',
  close: '<svg viewBox="0 0 24 24"><path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"/></svg>',
  plus: '<svg viewBox="0 0 24 24"><path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"/></svg>'
};

var routes = [];

var currentMission = 2;
var partners = [];
var outfitMode = 1;
var inviteInputOpen = false;
var pendingInviteFrom = null;
var myPlayerName = 'Player';
var myPlayerLevel = 0;
var myPlayerXp = 0;
var myPlayerXpNeeded = 500;

var routeSelected = false;
var mapShowingUnload = false;

var truckData = {
  name: 'Tool',
  upgrades: {
    speed: { level: 1, maxLevel: 5, start: 1, price: 2000 },
    carry: { level: 1, maxLevel: 5, start: 1, price: 2500 },
    aim:   { level: 1, maxLevel: 5, start: 1, price: 1800 },
    yield: { level: 1, maxLevel: 5, start: 1, price: 3000 },
  }
};
var inUpgradeMode = false;
var pendingUpgradeKey = null;

var AXE_SVG = '<svg viewBox="0 0 24 24"><path d="M3.5 20.5l9-9M13 3l8 8-2.5 2.5-3-3L7 21l-4-4 8.5-8.5-3-3L11 3z"/></svg>';


var UPGRADE_KEY_MAP = { speed: 'UI_UPG_SPEED', carry: 'UI_UPG_CARRY', aim: 'UI_UPG_AIM', yield: 'UI_UPG_YIELD' };
function upgradeLabel(key) {
  var k = UPGRADE_KEY_MAP[key];
  return k ? T(k) : (key.charAt(0).toUpperCase() + key.slice(1));
}

function sortedUpgradeKeys() {
  var _upg = truckData.upgrades || {};
  var keys = [];
  for (var k in _upg) { if (_upg.hasOwnProperty(k)) keys.push(k); }
  keys.sort(function(a, b) {
    var la = (_upg[a].levelReq || 0), lb = (_upg[b].levelReq || 0);
    if (la !== lb) return la - lb;
    return upgradeLabel(a).localeCompare(upgradeLabel(b));
  });
  return keys;
}


var _confirmCallback = null;

function openConfirm(opts) {
  _confirmCallback = opts.onConfirm || null;
  var ic = document.getElementById('confirmIcon');
  var ti = document.getElementById('confirmTitle');
  var de = document.getElementById('confirmDesc');
  var am = document.getElementById('confirmAmount');
  var bt = document.getElementById('confirmBtn');
  if (ic) ic.innerHTML = opts.icon || '';
  if (ti) ti.textContent = opts.title || '';
  if (de) de.textContent = opts.desc || '';
  if (am) am.textContent = opts.amount || '';
  if (bt) bt.textContent = opts.btnLabel || T('UI_CONFIRM_BTN');
  document.getElementById('confirmOverlay').classList.add('visible');
}

function closeConfirm() {
  _confirmCallback = null;
  document.getElementById('confirmOverlay').classList.remove('visible');
}

function confirmAction() {
  if (_confirmCallback) _confirmCallback();
  closeConfirm();
}


function gmSwitchTab(tab) {
  document.querySelectorAll('.gm-tab').forEach(function(b) { b.classList.toggle('active', b.id === 'gmTab' + tab.charAt(0).toUpperCase() + tab.slice(1)); });
}

function updateProfile() {
  var nameEl = document.getElementById('profileName');
  var levelEl = document.getElementById('pillLevel');
  var expEl = document.getElementById('pillExp');
  if (nameEl) nameEl.textContent = myPlayerName;
  if (levelEl) levelEl.textContent = myPlayerLevel;
  if (expEl) expEl.textContent = myPlayerXp + '/' + myPlayerXpNeeded;
}

function updateHeatBar() {
  var el = document.getElementById('heatSection');
  if (!el) return;
  if (!window.isIllegalMode) { el.style.display = 'none'; return; }
  el.style.display = '';
  var heat = window.playerHeat || 0;
  var max = window.maxHeat || 100;
  var pct = Math.min(100, Math.round((heat / max) * 100));
  var eventChance = heat <= 20 ? 10 : heat <= 50 ? 30 : heat <= 80 ? 60 : 90;
  var fill = document.getElementById('heatFill');
  var val = document.getElementById('heatVal');
  var chance = document.getElementById('heatChance');
  if (fill) {
    fill.style.width = pct + '%';
    fill.style.background = pct <= 30 ? '#e8b840' : pct <= 60 ? '#e67e22' : '#e74c3c';
  }
  if (val) val.textContent = heat + '/' + max;
  if (chance) chance.textContent = eventChance + '%';
}

function renderPlayers() {
  var html = '';
  html += '<div class="player-slot">';
  html += '  <div class="player-av owner">' + SVG.user + '</div>';
  html += '  <div class="player-info">';
  html += '    <div class="player-name">' + myPlayerName + ' <svg class="crown" viewBox="0 0 24 24"><path d="M5 16L3 5l5.5 5L12 4l3.5 6L21 5l-2 11H5z"/></svg></div>';
  html += '    <div class="player-role" data-i18n="UI_LEADER">Leader</div>';
  html += '  </div>';
  html += '  <div class="player-level-badge owner"><svg viewBox="0 0 24 24"><path d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"/></svg>Lvl ' + myPlayerLevel + '</div>';
  html += '</div>';
  for (var i = 0; i < 3; i++) {
    var p = partners[i];
    if (!p) continue;
    html += '<div class="player-slot">';
    html += '  <div class="player-av invited">' + SVG.user + '</div>';
    html += '  <div class="player-info">';
    html += '    <div class="player-name">' + p.name + '</div>';
    html += '    <div class="player-role" data-i18n="UI_PARTNER">Partner</div>';
    html += '  </div>';
    html += '  <div class="player-level-badge partner"><svg viewBox="0 0 24 24"><path d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"/></svg>Lvl ' + p.level + '</div>';
    html += '  <button class="remove-btn" onclick="kickPlayer(' + i + ')">' + SVG.close + '</button>';
    html += '</div>';
  }
  var remaining = 3 - partners.length;
  if (remaining > 0) {
    var inviteLabel = partners.length === 0 ? T('UI_INVITE_UP_TO_3') : TF('UI_INVITE_MORE', remaining);
    html += '<div class="partner-slots-cta">'
      + '<svg viewBox="0 0 24 24"><path d="M15 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm-9-2V7H4v3H1v2h3v3h2v-3h3v-2H6zm9 4c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg>'
      + inviteLabel + '</div>';
  }
  var listEl = document.getElementById('playerList');
  if (listEl) listEl.innerHTML = html;
  renderInviteArea();
  renderTeamBonus();
}

function renderTeamBonus() {
  var badge = document.getElementById('teamBonusBadge');
  if (!badge) return;
  var count = 1 + partners.length;
  var bonus = count >= 4 ? 35 : count >= 3 ? 20 : count >= 2 ? 10 : 0;
  if (bonus === 0) {
    badge.innerHTML = '<div class="tbb-cta"><svg viewBox="0 0 24 24"><path d="M16 11c1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3 1.34 3 3 3zm-8 0c1.66 0 3-1.34 3-3S9.66 5 8 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5z"/></svg>' + T('UI_INVITE_XP_BONUS') + '</div>';
    return;
  }
  badge.innerHTML = '<div class="team-bonus-badge">'
    + '<svg viewBox="0 0 24 24"><path d="M16 11c1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3 1.34 3 3 3zm-8 0c1.66 0 3-1.34 3-3S9.66 5 8 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5z"/></svg>'
    + T('UI_TEAM_BONUS') + ' <span class="tbb-value">+' + bonus + '% XP</span></div>';
}

function renderInviteArea() {
  var area = document.getElementById('inviteArea');
  if (!area) return;
  if (partners.length >= 3) {
    area.innerHTML = '';
    return;
  }
  if (inviteInputOpen) {
    area.innerHTML = '<div class="invite-input-row">'
      + '<input class="invite-input" id="inviteIdInput" type="number" placeholder="Player ID" min="1" autofocus>'
      + '<button class="invite-send-btn" onclick="sendInvite()"><svg viewBox="0 0 24 24"><path d="M2.01 21L23 12 2.01 3 2 10l15 2-15 2z"/></svg><span data-i18n="UI_SEND">Send</span></button>'
      + '<button class="invite-cancel-btn" onclick="hideInviteInput()">X</button>'
      + '</div>';
    var inp = document.getElementById('inviteIdInput');
    if (inp) {
      inp.focus();
      inp.addEventListener('keydown', function(e) {
        if (e.key === 'Enter') sendInvite();
        if (e.key === 'Escape') { e.stopPropagation(); hideInviteInput(); }
      });
    }
  } else {
    area.innerHTML = '<button class="invite-btn" onclick="showInviteInput()">'
      + '<svg viewBox="0 0 24 24"><path d="M15 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm-9-2V7H4v3H1v2h3v3h2v-3h3v-2H6zm9 4c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg>'
      + T('UI_INVITE_PLAYER') + '</button>';
  }
}

function showInviteInput() {
  if (partners.length >= 3) { showToast(T('TOAST_CREW_FULL'), 'orange'); return; }
  inviteInputOpen = true;
  renderInviteArea();
}

function hideInviteInput() {
  inviteInputOpen = false;
  renderInviteArea();
}

function sendInvite() {
  var inp = document.getElementById('inviteIdInput');
  if (!inp) return;
  var targetId = parseInt(inp.value);
  if (!targetId || targetId < 1) {
    showToast(T('TOAST_INVALID_ID'), 'red');
    return;
  }
  try {
    fetch('https://' + GetParentResourceName() + '/sendInvite', {
      method: 'POST', body: JSON.stringify({ targetId: targetId })
    });
  } catch (e) {}
  hideInviteInput();
}

function kickPlayer(idx) {
  if (idx === undefined) idx = 0;
  var p = partners[idx];
  if (!p) return;
  var name = p.name;
  try {
    fetch('https://' + GetParentResourceName() + '/kickFromSession', {
      method: 'POST', body: JSON.stringify({ targetId: p.id })
    });
  } catch (e) {}
  partners.splice(idx, 1);
  renderPlayers();
  showToast(TF('TOAST_REMOVED_CREW_NAME', name), 'red');
}

function acceptInvite() {
  if (!pendingInviteFrom) return;
  try {
    fetch('https://' + GetParentResourceName() + '/respondInvite', {
      method: 'POST', body: JSON.stringify({ fromId: pendingInviteFrom.fromId, accepted: true })
    });
  } catch (e) {}
  document.getElementById('inviteNotification').classList.remove('visible');
  if (!uiOpen()) document.body.classList.remove('visible');
  pendingInviteFrom = null;
}

function uiOpen() {
  return currentView !== 'none' && currentView !== '';
}

function rejectInvite() {
  if (!pendingInviteFrom) return;
  try {
    fetch('https://' + GetParentResourceName() + '/respondInvite', {
      method: 'POST', body: JSON.stringify({ fromId: pendingInviteFrom.fromId, accepted: false })
    });
  } catch (e) {}
  document.getElementById('inviteNotification').classList.remove('visible');
  if (!uiOpen()) document.body.classList.remove('visible');
  pendingInviteFrom = null;
}

function closeModal() {
  document.getElementById('modalOverlay').classList.remove('open');
}

function selectOutfit(mode) {
  outfitMode = mode;
  var btns = document.querySelectorAll('.outfit-btn');
  btns.forEach(function(b, i) { b.classList.toggle('active', i + 1 === mode); });
  var sub = document.querySelector('.outfit-row-sub');
  if (sub) sub.textContent = mode === 1 ? T('UI_OUTFIT_DEFAULT') : T('UI_OUTFIT_JOB');
  var ids = partners.map(function(p) { return p.id; });
  try { fetch('https://' + GetParentResourceName() + '/setOutfit', { method: 'POST', body: JSON.stringify({ mode: mode, partnerIds: ids }) }); } catch(e) {}
}

function startJob() {
  try {
    fetch('https://' + GetParentResourceName() + '/startJob', {
      method: 'POST', body: JSON.stringify({})
    });
  } catch (e) {}
}

function rebuildJobPanel() {
  var headerTitle = document.querySelector('#jobPanel .header-title');
  var headerSub = document.querySelector('#jobPanel .header-subtitle');
  var headerIcon = document.querySelector('#jobPanel .header-icon');
  if (headerTitle) {
    headerTitle.innerHTML = '<span data-i18n="UI_TRUCKER">' + T('UI_TRUCKER') + '</span>';
    if (headerSub) headerSub.textContent = T('UI_HEADER_DESC');
  }

  var panelScroll = document.querySelector('#jobPanel .panel-scroll');
  var footer = document.querySelector('#jobPanel .panel-footer');
  if (!panelScroll) return;

  var html = '';

  html += '<div class="section"><div class="section-label"><svg viewBox="0 0 24 24"><path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg><span data-i18n="UI_PROFILE">Profile</span></div>';
  html += '<div class="profile-card"><div class="profile-avatar"><svg viewBox="0 0 24 24"><path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg></div>';
  html += '<div class="profile-text"><div class="profile-label" data-i18n="UI_NICKNAME">Nickname</div><div class="profile-name" id="profileName">' + myPlayerName + '</div></div>';
  html += '<div class="profile-pills"><div class="pill level"><div class="pill-val" id="pillLevel">' + myPlayerLevel + '</div><div class="pill-lbl" data-i18n="UI_LEVEL_WORD">Level</div></div>';
  html += '<div class="pill exp"><div class="pill-val" id="pillExp">' + myPlayerXp + '/' + myPlayerXpNeeded + '</div><div class="pill-lbl" data-i18n="UI_EXP">EXP</div></div></div></div></div>';

  html += '<div class="section" id="truckSection"><div class="section-label">';
  html += AXE_SVG;
  html += '<span>Tool</span></div>';
  html += '<div class="truck-card" id="truckCard">' + buildTruckCardHTML() + '</div></div>';

  html += '<div class="section"><div class="section-label"><svg viewBox="0 0 24 24"><path d="M20.5 6c-2.61.7-5.67 1-8.5 1s-5.89-.3-8.5-1L3 8c1.86.5 4 .83 6 1v13h2v-6h2v6h2V9c2-.17 4.14-.5 6-1l-.5-2zM12 6c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2z"/></svg><span>' + T('UI_OUTFIT') + '</span></div>';
  html += '<div class="outfit-row">';
  html += '<div class="outfit-row-icon"><svg viewBox="0 0 24 24"><path d="M20.5 6c-2.61.7-5.67 1-8.5 1s-5.89-.3-8.5-1L3 8c1.86.5 4 .83 6 1v13h2v-6h2v6h2V9c2-.17 4.14-.5 6-1l-.5-2zM12 6c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2z"/></svg></div>';
  html += '<div class="outfit-row-info"><div class="outfit-row-title">' + T('UI_SELECT_OUTFIT') + '</div><div class="outfit-row-sub">' + (outfitMode === 1 ? T('UI_OUTFIT_DEFAULT') : T('UI_OUTFIT_JOB')) + '</div></div>';
  html += '<div class="outfit-btns">';
  html += '<button class="outfit-btn' + (outfitMode === 1 ? ' active' : '') + '" onclick="selectOutfit(1)" type="button">1</button>';
  html += '<button class="outfit-btn' + (outfitMode === 2 ? ' active alt' : '') + '" onclick="selectOutfit(2)" type="button">2</button>';
  html += '</div></div></div>';

  html += '<div class="section"><div class="section-header-row"><div class="section-label"><svg viewBox="0 0 24 24"><path d="M16 11c1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3 1.34 3 3 3zm-8 0c1.66 0 3-1.34 3-3S9.66 5 8 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5z"/></svg><span data-i18n="UI_PLAYER_LIST">Player List</span></div><div id="teamBonusBadge"></div></div>';
  html += '<div class="player-list" id="playerList"></div>';
  html += '<div id="inviteArea"></div></div>';

  panelScroll.innerHTML = html;
  if (footer) footer.innerHTML = '<button class="start-btn" onclick="startJob()"><svg viewBox="0 0 24 24"><path d="M8 5v14l11-7z"/></svg> ' + T('UI_START_JOB_BTN') + '</button>';

  renderPlayers();
}

function showUiToast(opts) {
  var c = document.getElementById('uiToastContainer');
  if (!c) return;
  var el = document.createElement('div');
  el.className = 'ui-toast' + (opts.variant ? ' ' + opts.variant : '');
  el.innerHTML =
    (opts.icon ? '<div class="ui-toast-icon">' + opts.icon + '</div>' : '') +
    '<div class="ui-toast-body">' +
      (opts.title ? '<div class="ui-toast-title">' + opts.title + '</div>' : '') +
      (opts.message ? '<div class="ui-toast-msg">' + opts.message + '</div>' : '') +
    '</div>';
  c.appendChild(el);
  requestAnimationFrame(function() { el.classList.add('show'); });
  var ttl = opts.duration || 3400;
  setTimeout(function() {
    el.classList.remove('show');
    setTimeout(function() { if (el.parentNode) el.parentNode.removeChild(el); }, 300);
  }, ttl);
}

var _moneyIcon = '<svg viewBox="0 0 24 24"><path d="M12 1a11 11 0 100 22 11 11 0 000-22zm.9 16.42v1.08h-1.6v-1.06c-1.45-.2-2.62-1.05-2.74-2.66h1.62c.1.82.64 1.32 1.65 1.32.94 0 1.5-.43 1.5-1.1 0-.62-.4-.97-1.62-1.28-1.85-.43-2.92-1.14-2.92-2.64 0-1.22.92-2.1 2.31-2.36V7.5h1.6v1.05c1.32.22 2.2 1.04 2.3 2.32h-1.62c-.08-.72-.5-1.12-1.3-1.12-.82 0-1.32.4-1.32 1 0 .58.46.9 1.74 1.2 1.84.42 2.8 1.14 2.8 2.7 0 1.32-.93 2.22-2.4 2.47z"/></svg>';
var _toastIcons = {
  success: '<svg viewBox="0 0 24 24"><path d="M12 2a10 10 0 100 20 10 10 0 000-20zm-1.3 14.3l-4-4 1.4-1.4 2.6 2.6 5.6-5.6 1.4 1.4z"/></svg>',
  error: '<svg viewBox="0 0 24 24"><path d="M12 2a10 10 0 100 20 10 10 0 000-20zm1 15h-2v-2h2zm0-4h-2V7h2z"/></svg>',
  info: '<svg viewBox="0 0 24 24"><path d="M12 2a10 10 0 100 20 10 10 0 000-20zm1 15h-2v-6h2zm0-8h-2V7h2z"/></svg>'
};

function showGarageToast(message, color) {
  var variant = (color === 'red') ? 'error' : (color === 'orange') ? 'info' : 'success';
  var isMoney = (variant === 'error' && message && message === T('SRV_NOT_ENOUGH_MONEY'));
  showUiToast({
    variant: isMoney ? 'money' : variant,
    icon: isMoney ? _moneyIcon : _toastIcons[variant],
    title: message
  });
}

function showToast(message, color) {
  var notifyType = (color === 'red') ? 'error' : (color === 'orange') ? 'info' : 'success';
  try {
    fetch('https://' + GetParentResourceName() + '/notify', {
      method: 'POST',
      body: JSON.stringify({ type: notifyType, message: message })
    });
  } catch(e) {}
}

var currentView = 'none';
var _locales = {};

function T(key) { return _locales[key] || key; }
function TF(key) { var s = T(key); var args = Array.prototype.slice.call(arguments, 1); var i = 0; return s.replace(/%[sd]/g, function() { return args[i++] !== undefined ? args[i-1] : ''; }); }

var _i18nApplying = false;
function applyLocales() {
  if (_i18nApplying) return;
  _i18nApplying = true;
  document.querySelectorAll('[data-i18n]').forEach(function(el) {
    var key = el.getAttribute('data-i18n');
    if (_locales[key] && el.textContent !== _locales[key]) el.textContent = _locales[key];
  });
  document.querySelectorAll('[data-i18n-placeholder]').forEach(function(el) {
    var key = el.getAttribute('data-i18n-placeholder');
    if (_locales[key] && el.placeholder !== _locales[key]) el.placeholder = _locales[key];
  });
  _i18nApplying = false;
}

var _i18nTimer = null;
var _i18nObserver = new MutationObserver(function() {
  if (Object.keys(_locales).length === 0) return;
  if (_i18nTimer) clearTimeout(_i18nTimer);
  _i18nTimer = setTimeout(applyLocales, 50);
});
_i18nObserver.observe(document.body, { childList: true, subtree: true });

function showUI(visible) {
  if (visible) {
    document.body.classList.add('visible');
    openJobPanel();
  } else {
    if (inUpgradeMode) closeTruckUpgrade();
    hideAll();
    var jt = document.getElementById('jobTracker');
    var inv = document.getElementById('inviteNotification');
    var keepVisible = (jt && jt.classList.contains('visible')) || (inv && inv.classList.contains('visible'));
    if (!keepVisible) {
      document.body.classList.remove('visible');
    }
  }
}

function openStatsPanel() {
  currentView = 'stats';
  document.getElementById('jobPanel').style.display = 'none';
  document.getElementById('statsPanel').classList.add('visible');
  document.getElementById('statsContent').innerHTML = '<div style="text-align:center;padding:40px;color:var(--text-muted);font-size:11px">' + T('UI_LOADING') + '</div>';
  try { fetch('https://' + GetParentResourceName() + '/requestStats', { method: 'POST', body: '{}' }); } catch (e) {}
}

function closeStatsPanel() {
  document.getElementById('statsPanel').classList.remove('visible');
  openJobPanel();
}

function renderStatsPanel(stats, history) {
  var content = document.getElementById('statsContent');
  if (!content) return;
  var html = '';

  var totalMin = stats.total_time || 0;
  var hours = Math.floor(totalMin / 60);
  var mins = totalMin % 60;
  var timeStr = hours > 0 ? (hours + 'h ' + mins + 'm') : (mins + 'm');
  var totalEarnings = (stats.total_earnings || 0) + (stats.illegal_earnings || 0);
  var level = stats.level || 1;
  var xp = stats.xp || 0;
  var xpNeeded = stats.xp_needed || (500 + 100 * (level - 1));
  var xpPct = xpNeeded > 0 ? Math.min(100, Math.round((xp / xpNeeded) * 100)) : 0;

  html += '<div class="xp-bar-wrap">';
  html += '<div class="xp-bar-header"><div class="xp-bar-label">' + T('UI_LEVEL_WORD') + ' ' + level + ' Progress</div><div class="xp-bar-value">' + xp + ' / ' + xpNeeded + ' XP</div></div>';
  html += '<div class="xp-bar-track"><div class="xp-bar-fill" style="width:' + xpPct + '%"></div></div>';
  html += '<div class="xp-bar-levels"><div class="xp-bar-lvl current">Lv.' + level + '</div><div class="xp-bar-lvl">Lv.' + (level + 1) + '</div></div>';
  html += '</div>';

  html += '<div class="stats-hero" style="margin-top:20px">';
  html += '<div class="stats-hero-card"><div class="stats-hero-icon green"><svg viewBox="0 0 24 24"><path d="M11.8 10.9c-2.27-.59-3-1.2-3-2.15 0-1.09 1.01-1.85 2.7-1.85 1.78 0 2.44.85 2.5 2.1h2.21c-.07-1.72-1.12-3.3-3.21-3.81V3h-3v2.16c-1.94.42-3.5 1.68-3.5 3.61 0 2.31 1.91 3.46 4.7 4.13 2.5.6 3 1.48 3 2.41 0 .69-.49 1.79-2.7 1.79-2.06 0-2.87-.92-2.98-2.1h-2.2c.12 2.19 1.76 3.42 3.68 3.83V21h3v-2.15c1.95-.37 3.5-1.5 3.5-3.55 0-2.84-2.43-3.81-4.7-4.4z"/></svg></div><div class="stats-hero-val" style="color:var(--green)">$' + totalEarnings.toLocaleString() + '</div><div class="stats-hero-lbl">' + T('UI_TOTAL_EARNED') + '</div></div>';
  html += '</div>';

  html += '<div class="section" style="margin-top:36px"><div class="section-label"><svg viewBox="0 0 24 24"><path d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zM9 17H7v-7h2v7zm4 0h-2V7h2v10zm4 0h-2v-4h2v4z"/></svg><span>' + T('UI_CAREER_STATS') + '</span></div>';
  html += '<div class="stats-grid">';
  html += '<div class="stat-card accent"><div class="stat-card-val">Lv.' + level + '</div><div class="stat-card-lbl">' + T('UI_LEGAL_LEVEL') + '</div></div>';
  html += '</div></div>';

  html += '<div class="section" style="margin-top:36px"><div class="section-label"><svg viewBox="0 0 24 24"><path d="M13 3c-4.97 0-9 4.03-9 9H1l3.89 3.89.07.14L9 12H6c0-3.87 3.13-7 7-7s7 3.13 7 7-3.13 7-7 7c-1.93 0-3.68-.79-4.94-2.06l-1.42 1.42C8.27 19.99 10.51 21 13 21c4.97 0 9-4.03 9-9s-4.03-9-9-9zm-1 5v5l4.28 2.54.72-1.21-3.5-2.08V8H12z"/></svg><span>' + T('UI_DELIVERY_HISTORY') + '</span></div>';

  if (!history || history.length === 0) {
    html += '<div style="text-align:center;padding:30px;color:var(--text-muted);font-size:11px">' + T('UI_NO_HISTORY') + '</div>';
  } else {
    html += '<div class="history-list">';
    for (var i = 0; i < history.length; i++) {
      var h = history[i];
      var dateStr = h.date ? new Date(h.date).toLocaleDateString() : '';
      html += '<div class="history-item">';
      html += '<div class="history-icon legal"><svg viewBox="0 0 24 24"><path d="M20 8h-3V4H3c-1.1 0-2 .9-2 2v11h2c0 1.66 1.34 3 3 3s3-1.34 3-3h6c0 1.66 1.34 3 3 3s3-1.34 3-3h2v-5l-3-4z"/></svg></div>';
      html += '<div class="history-info"><div class="history-name">' + h.route + '</div><div class="history-date">' + dateStr + '</div></div>';
      html += '<div style="text-align:right"><div class="history-pay">+$' + (h.pay || 0).toLocaleString() + '</div></div></div>';
    }
    html += '</div>';
  }
  html += '</div>';
  content.innerHTML = html;
}

function openJobPanel() {
  currentView = 'job';
  routeSelected = false;
  document.getElementById('panelBg').classList.add('visible');
  document.getElementById('jobPanel').style.display = 'flex';
  rebuildJobPanel();
}

var missionMap = null;
var missionMapMarkers = [];

function hideAll() {
  document.getElementById('panelBg').classList.remove('visible');
  document.getElementById('jobPanel').style.display = 'none';
  var rsp = document.getElementById('routeSearchPanel');
  if (rsp) rsp.classList.remove('visible');
  rsOpen = false;
  closeModal();
  inviteInputOpen = false;
  currentView = 'none';
}

function closeUI() {
  showUI(false);
  try { fetch('https://' + GetParentResourceName() + '/closeUI', { method: 'POST', body: '{}' }); } catch (e) {}
}

function closeUIAndDisband() {
  for (var i = 0; i < partners.length; i++) {
    try { fetch('https://' + GetParentResourceName() + '/kickFromSession', { method: 'POST', body: JSON.stringify({ targetId: partners[i].id }) }); } catch (e) {}
  }
  partners = [];
  closeUI();
}

function buildTruckCardHTML() {
  var h = '';
  h += '<div class="truck-card-header">';
  h += '<div class="truck-card-icon">' + AXE_SVG + '</div>';
  h += '<div class="truck-card-title"><div class="truck-card-name">' + truckData.name + '</div>';
  var _totLvl = 0, _totMax = 0;
  for (var _k in (truckData.upgrades || {})) {
    if (truckData.upgrades.hasOwnProperty(_k)) {
      var _u = truckData.upgrades[_k];
      var _s = (_u.start != null ? _u.start : 1);
      _totLvl += ((_u.level != null ? _u.level : 1) - _s);
      _totMax += ((_u.maxLevel || 5) - _s);
    }
  }
  h += '<div class="truck-card-sub">' + _totLvl + ' / ' + _totMax + ' ' + T('UI_LEVELS') + '</div></div>';
  h += '<button class="truck-upgrade-inline" onclick="openTruckUpgrade()" type="button">';
  h += '<svg viewBox="0 0 24 24"><path d="M19.14 12.94c.04-.3.06-.61.06-.94 0-.32-.02-.64-.07-.94l2.03-1.58c.18-.14.23-.41.12-.61l-1.92-3.32c-.12-.22-.37-.29-.59-.22l-2.39.96c-.5-.38-1.03-.7-1.62-.94l-.36-2.54c-.04-.24-.24-.41-.48-.41h-3.84c-.24 0-.43.17-.47.41l-.36 2.54c-.59.24-1.13.57-1.62.94l-2.39-.96c-.22-.08-.47 0-.59.22L2.74 8.87c-.12.21-.08.47.12.61l2.03 1.58c-.05.3-.07.62-.07.94s.02.64.07.94l-2.03 1.58c-.18.14-.23.41-.12.61l1.92 3.32c.12.22.37.29.59.22l2.39-.96c.5.38 1.03.7 1.62.94l.36 2.54c.04.24.24.41.47.41h3.84c.24 0 .44-.17.47-.41l.36-2.54c.59-.24 1.13-.56 1.62-.94l2.39.96c.22.08.47 0 .59-.22l1.92-3.32c.12-.22.07-.47-.12-.61l-2.01-1.58zM12 15.6A3.6 3.6 0 1115.6 12 3.6 3.6 0 0112 15.6z"/></svg>' + T('UI_UPGRADE') + '</button>';
  h += '</div>';
  h += '<div class="truck-preview">';
  h += '<img class="truck-preview-img" src="img/axe.png" alt="" onerror="this.style.display=\'none\';this.nextElementSibling.style.display=\'flex\'">';
  h += '<div class="truck-preview-fallback">' + AXE_SVG + '</div>';
  h += '</div>';
  var _upg = truckData.upgrades || {};
  var _upgPct = function(key) {
    var u = _upg[key] || {};
    var l = (u.level != null ? u.level : 1);
    var m = u.maxLevel || 5;
    var s = (u.start != null ? u.start : 1);
    if (m - s <= 0) return 0;
    return Math.round((l - s) / (m - s) * 100);
  };
  var caps = [];
  var _capKeys = sortedUpgradeKeys();
  for (var _ci = 0; _ci < _capKeys.length; _ci++) {
    var key = _capKeys[_ci];
    caps.push({ label: upgradeLabel(key), key: key, pct: _upgPct(key) });
  }
  if (caps.length > 0) {
    h += '<div class="truck-cap-list">';
    for (var ci = 0; ci < caps.length; ci++) {
      var cap = caps[ci];
      h += '<div class="truck-cap-row">';
      h += '<div class="truck-cap-label">' + cap.label + '</div>';
      h += '<div class="truck-cap-bar-wrap"><div class="truck-cap-bar"><div class="truck-cap-fill" style="width:' + cap.pct + '%"></div></div>';
      h += '<span class="truck-cap-pct">' + cap.pct + '%</span></div></div>';
    }
    h += '</div>';
  }
  return '<div class="truck-card-body">' + h + '</div>';
}

function openTruckUpgrade() {
  if (inUpgradeMode) return;
  inUpgradeMode = true;
  var body = document.querySelector('.truck-card-body');
  if (body) {
    body.classList.add('tu-body-out');
    setTimeout(renderUpgradeView, 170);
  } else {
    renderUpgradeView();
  }
}

function closeTruckUpgrade() {
  if (!inUpgradeMode) return;
  inUpgradeMode = false;
  var card = document.getElementById('truckCard');
  if (!card) return;

  var temp = document.createElement('div');
  temp.className = 'truck-card';
  temp.style.cssText = 'position:absolute;visibility:hidden;width:' + card.offsetWidth + 'px;pointer-events:none';
  temp.innerHTML = buildTruckCardHTML();
  document.body.appendChild(temp);
  var toHeight = temp.scrollHeight;
  document.body.removeChild(temp);

  var fromHeight = card.offsetHeight;
  card.style.height = fromHeight + 'px';
  card.className = 'truck-card tu-closing';

  var rows = card.querySelectorAll('.tu-row');
  var rowCount = rows.length;
  rows.forEach(function(row, i) {
    row.style.animation = 'tuRowOut 0.2s ease-in both ' + ((rowCount - 1 - i) * 0.04) + 's';
  });

  void card.offsetHeight;
  card.style.transition = 'height 0.42s ease-in-out';
  card.style.height = toHeight + 'px';

  var totalMs = 200 + rowCount * 40 + 40;
  setTimeout(function() {
    card.style.transition = '';
    card.style.height = '';
    card.style.overflow = '';
    card.className = 'truck-card';
    card.innerHTML = buildTruckCardHTML();
  }, totalMs);
}

function upgradeBenefitText(upg) {
  if (!upg) return '';
  if (upg.carryCap != null || upg.nextCarryCap != null) {
    var parts = [];
    if (upg.nextBonus != null) parts.push((upg.bonus || 0) + '% → ' + upg.nextBonus + '% load');
    else parts.push((upg.bonus || 0) + '% load');
    var cap = upg.carryCap || 1;
    if (upg.nextCarryCap != null && upg.nextCarryCap > cap) parts.push('+1 madera');
    else if (cap > 1) parts.push(cap + ' maderas/viaje');
    return parts.join('  ·  ');
  }
  if (upg.capacity != null || upg.nextCapacity != null) {
    var parts = [];
    if (upg.nextCapacity != null) parts.push((upg.capacity || 0) + ' → ' + upg.nextCapacity);
    else parts.push((upg.capacity || 0));
    if (upg.nextPayPerBag != null) parts.push('$' + (upg.payPerBag || 0) + ' → $' + upg.nextPayPerBag + '/bag');
    else if (upg.payPerBag) parts.push('$' + upg.payPerBag + '/bag');
    return parts.join('  ·  ');
  }
  if (upg.bonus != null || upg.nextBonus != null) {
    if (upg.nextBonus != null) return (upg.bonus || 0) + '% → ' + upg.nextBonus + '%';
    return (upg.bonus || 0) + '%';
  }
  return '';
}

var upgradesList = [];

function _buildUpgradesList() {
  upgradesList = [];
  var keys = sortedUpgradeKeys();
  for (var i = 0; i < keys.length; i++) {
    upgradesList.push({ key: keys[i], label: upgradeLabel(keys[i]), icon: AXE_SVG });
  }
}

function renderUpgradeView() {
  var card = document.getElementById('truckCard');
  if (!card) return;

  if (document.getElementById('tu-row-' + (upgradesList[0] && upgradesList[0].key))) {
    for (var ui = 0; ui < upgradesList.length; ui++) {
      updateUpgradeRow(upgradesList[ui].key);
    }
    return;
  }

  _buildUpgradesList();

  var fromHeight = card.offsetHeight;
  var h = '';
  h += '<div class="tu-header">';
  h += '<button class="tu-back" onclick="closeTruckUpgrade()" type="button"><svg viewBox="0 0 24 24"><path d="M20 11H7.83l5.59-5.59L12 4l-8 8 8 8 1.41-1.41L7.83 13H20v-2z"/></svg>' + T('UI_BACK') + '</button>';
  h += '<div class="tu-truck-name">' + truckData.name + '</div>';
  h += '</div>';
  h += '<div class="tu-img-wrap"><img src="img/axe.png" class="tu-img" alt=""></div>';
  h += '<div class="tu-list">';
  for (var i = 0; i < upgradesList.length; i++) {
    var u = upgradesList[i];
    var upg = (truckData.upgrades || {})[u.key] || {};
    var level = upg.level !== undefined ? upg.level : 1;
    var price = upg.price || 0;
    var maxLevel = upg.maxLevel || 5;
    var start = (upg.start != null) ? upg.start : 1;
    var levelReq = upg.levelReq || 0;
    var fullyLocked = !!upg.locked;
    var stepLocked = !!upg.stepLocked;
    var isLocked = fullyLocked || stepLocked;
    var reqLvl = fullyLocked ? levelReq : (upg.stepReq || 0);
    var isMax = level >= maxLevel;
    var isUnlocking = level === 0;
    var dots = '';
    for (var d = 0; d < (maxLevel - start); d++) {
      dots += '<span class="tu-dot ' + (d < (level - start) ? 'tu-dot-on' : 'tu-dot-off') + '"></span>';
    }
    var btnLabel = isLocked ? T('UI_LOCKED') : isMax ? T('UI_MAX') : isUnlocking ? T('UI_UNLOCK') : T('UI_UPGRADE');
    var btnClass = 'tu-row-btn' + (isLocked || isMax ? ' tu-row-btn-max' : isUnlocking ? ' tu-row-btn-unlock' : '');
    var btnDisabled = isLocked || isMax;
    h += '<div class="tu-row" id="tu-row-' + u.key + '" style="animation-delay:' + (0.16 + i * 0.045) + 's">';
    h += '<div class="tu-row-icon' + (isLocked ? ' tu-row-icon-locked' : '') + '">' + u.icon + '</div>';
    h += '<div class="tu-row-info"><div class="tu-row-name">' + u.label + '</div>';
    if (fullyLocked) {
      h += '<div class="tu-row-lock-hint">' + T('UI_REQUIRES_LV') + reqLvl + '</div>';
    } else {
      h += '<div class="tu-row-dots">' + dots + '</div>';
    }
    if (stepLocked && !fullyLocked) {
      h += '<div class="tu-row-lock-hint" id="tu-ben-' + u.key + '">' + T('UI_NEXT_LV') + reqLvl + '</div>';
    } else {
      h += '<div class="tu-row-benefit" id="tu-ben-' + u.key + '">' + (upgradeBenefitText(upg) || '') + '</div>';
    }
    h += '</div>';
    h += '<div class="tu-row-right">';
    if (!isLocked && !isMax && price > 0) h += '<span class="tu-row-cost">$' + price.toLocaleString() + '</span>';
    h += '<button class="' + btnClass + '" onclick="' + (btnDisabled ? '' : 'upgradeTruck(\'' + u.key + '\')') + '" type="button"' + (btnDisabled ? ' disabled' : '') + '>' + btnLabel + '</button>';
    h += '</div>';
    h += '</div>';
  }
  h += '</div>';

  card.className = 'truck-card tu-expanded';
  card.style.height = fromHeight + 'px';
  card.innerHTML = h;

  void card.offsetHeight;
  var toHeight = card.scrollHeight;
  card.style.transition = 'height 0.45s cubic-bezier(0.16,1,0.3,1)';
  card.style.height = toHeight + 'px';

  setTimeout(function() {
    card.style.height = '';
    card.style.transition = '';
  }, 470);
}

function updateUpgradeRow(key) {
  var row = document.getElementById('tu-row-' + key);
  if (!row) return;
  var upg      = (truckData.upgrades || {})[key] || {};
  var level    = upg.level !== undefined ? upg.level : 1;
  var price    = upg.price || 0;
  var maxLevel = upg.maxLevel || 5;
  var start    = (upg.start != null) ? upg.start : 1;
  var levelReq = upg.levelReq || 0;
  var fullyLocked = !!upg.locked;
  var stepLocked  = !!upg.stepLocked;
  var isLocked = fullyLocked || stepLocked;
  var reqLvl   = fullyLocked ? levelReq : (upg.stepReq || 0);
  var isMax    = level >= maxLevel;
  var isUnlocking = level === 0;

  var prevFilled = (row.querySelectorAll('.tu-dot-on') || []).length;
  var filled = level - start;

  var infoSub = row.querySelector('.tu-row-dots, .tu-row-lock-hint');
  if (infoSub) {
    if (fullyLocked) {
      infoSub.className = 'tu-row-lock-hint';
      infoSub.innerHTML = T('UI_REQUIRES_LV') + reqLvl;
    } else {
      var dots = '';
      for (var d = 0; d < (maxLevel - start); d++) {
        var isNew = (d >= prevFilled && d < filled);
        dots += '<span class="tu-dot ' + (d < filled ? 'tu-dot-on' + (isNew ? ' tu-dot-new' : '') : 'tu-dot-off') + '"></span>';
      }
      infoSub.className = 'tu-row-dots';
      infoSub.innerHTML = dots;
    }
  }
  var benEl = document.getElementById('tu-ben-' + key);
  if (benEl) {
    if (stepLocked && !fullyLocked) {
      benEl.className = 'tu-row-lock-hint';
      benEl.innerHTML = T('UI_NEXT_LV') + reqLvl;
    } else {
      benEl.className = 'tu-row-benefit';
      benEl.innerHTML = upgradeBenefitText(upg) || '';
    }
  }

  var rightEl = row.querySelector('.tu-row-right');
  if (rightEl) {
    var btnLabel = isLocked ? T('UI_LOCKED') : isMax ? T('UI_MAX') : isUnlocking ? T('UI_UNLOCK') : T('UI_UPGRADE');
    var btnClass = 'tu-row-btn' + ((isLocked || isMax) ? ' tu-row-btn-max' : isUnlocking ? ' tu-row-btn-unlock' : '');
    var costHtml = (!isLocked && !isMax && price > 0) ? '<span class="tu-row-cost">$' + price.toLocaleString() + '</span>' : '';
    var onclick  = (isLocked || isMax) ? '' : 'upgradeTruck(\'' + key + '\')';
    rightEl.innerHTML = costHtml + '<button class="' + btnClass + '" onclick="' + onclick + '" type="button"' + ((isLocked || isMax) ? ' disabled' : '') + '>' + btnLabel + '</button>';
  }
}

function upgradeTruck(key) {
  pendingUpgradeKey = key;
  var row = document.getElementById('tu-row-' + key);
  if (row) {
    var btn = row.querySelector('.tu-row-btn');
    if (btn) { btn.disabled = true; btn.textContent = '...'; }
  }
  try {
    fetch('https://' + GetParentResourceName() + '/upgradeTruck', {
      method: 'POST', body: JSON.stringify({ upgrade: key })
    });
  } catch (e) {}
}


function getJtStepsBase() {
  return [
    { id: 'start',   label: T('JT_GO_START'),      icon: '<svg viewBox="0 0 24 24"><path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zm0 9.5c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5z"/></svg>' },
    { id: 'work',    label: T('JT_COMPLETE_TASK'),  icon: '<svg viewBox="0 0 24 24"><path d="M19 3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-5 14H7v-2h7v2zm3-4H7v-2h10v2zm0-4H7V7h10v2z"/></svg>' },
    { id: 'deliver', label: T('JT_DELIVER'),        icon: '<svg viewBox="0 0 24 24"><path d="M20 8h-3V4H3c-1.1 0-2 .9-2 2v11h2c0 1.66 1.34 3 3 3s3-1.34 3-3h6c0 1.66 1.34 3 3 3s3-1.34 3-3h2v-5l-3-4z"/></svg>' },
    { id: 'done',    label: T('JT_COMPLETE'),       icon: '<svg viewBox="0 0 24 24"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/></svg>' },
  ];
}

var jtStepsDef = null;

function setJobTrackerSteps(steps) {
  if (steps && steps.length > 0) {
    jtStepsDef = steps;
  } else {
    jtStepsDef = null;
  }
}

function renderJobTracker(step, routeName, dist, eta, routeType, counts) {
  var el = document.getElementById('jobTracker');
  if (!step) {
    el.classList.remove('visible');
    var inv = document.getElementById('inviteNotification');
    var invVisible = inv && inv.classList.contains('visible');
    if ((currentView === 'none' || currentView === '') && !invVisible) {
      document.body.classList.remove('visible');
    }
    return;
  }

  document.body.classList.add('visible');
  el.classList.add('visible');
  document.getElementById('jtRoute').textContent = routeName || T('UI_ACTIVE_ROUTE');
  counts = counts || {};
  var steps = jtStepsDef || getJtStepsBase();
  var stepsHtml = '';
  var activeIdx = -1;
  for (var si = 0; si < steps.length; si++) {
    if (steps[si].id === step) { activeIdx = si; break; }
  }
  for (var i = 0; i < steps.length; i++) {
    var s = steps[i];
    var ctrs = s.counters; 
    var countDone = false;
    if (ctrs && ctrs.length) {
      countDone = true;
      for (var k = 0; k < ctrs.length; k++) {
        var cc = counts[ctrs[k].key];
        if (!(cc && cc.total > 0 && cc.n >= cc.total)) countDone = false;
      }
    }
    var cls = (countDone || i < activeIdx) ? 'done' : (i === activeIdx ? 'active' : '');
    if (ctrs) cls += ' jt-step--count';
    stepsHtml += '<div class="jt-step ' + cls + '">';
    stepsHtml += '<div class="jt-step-dot">' + s.icon + '</div>';
    stepsHtml += '<div class="jt-step-line"></div>';
    stepsHtml += '<div class="jt-step-text"><div class="jt-step-label">' + (s.key ? T(s.key) : s.label) + '</div>';
    if (ctrs && ctrs.length) {
      for (var k2 = 0; k2 < ctrs.length; k2++) {
        var cd = counts[ctrs[k2].key] || { n: 0, total: 0 };
        stepsHtml += '<div class="jt-step-count">' + ctrs[k2].label + ' <span class="jt-count-n">' + cd.n + '</span> / ' + cd.total + '</div>';
      }
    } else if (i === activeIdx && dist) {
      stepsHtml += '<div class="jt-step-dist">' + dist + '</div>';
    }
    stepsHtml += '</div></div>';
  }
  document.getElementById('jtSteps').innerHTML = stepsHtml;
  document.getElementById('jtDist').textContent = dist || '-';
  document.getElementById('jtEta').textContent = eta || '-';
}

function renderCompartments(mats) {
  var el = document.getElementById('jtCompartments');
  if (!el) return;
  if (!mats || mats.length === 0) { el.innerHTML = ''; el.style.display = 'none'; return; }
  el.style.display = '';
  var html = '';
  for (var i = 0; i < mats.length; i++) {
    var m = mats[i];
    var pct = (m.max > 0) ? Math.min(100, Math.round(m.filled / m.max * 100)) : 0;
    var cls = m.locked ? 'locked' : ((m.max > 0 && m.filled >= m.max) ? 'full' : '');
    var count = m.locked ? 'Locked' : (m.filled + ' / ' + m.max);
    html += '<div class="jt-comp ' + cls + '">'
          + '<div class="jt-comp-top"><span class="jt-comp-name">' + m.label + '</span>'
          + '<span class="jt-comp-count">' + count + '</span></div>'
          + '<div class="jt-comp-bar"><div class="jt-comp-fill" style="width:' + pct + '%"></div></div>'
          + '</div>';
  }
  el.innerHTML = html;
}

window.addEventListener('message', function (e) {
  if (e.data.type === 'jobTracker') {
    if (e.data.steps) setJobTrackerSteps(e.data.steps);
    var jtDmg = document.getElementById('jtDamage');
    if (jtDmg) jtDmg.style.display = e.data.hideDamage ? 'none' : '';
    var jtFtr = document.querySelector('#jobTracker .jt-footer');
    if (jtFtr) jtFtr.style.display = e.data.hideFooter ? 'none' : '';
    renderJobTracker(e.data.step, e.data.routeName, e.data.dist, e.data.eta, e.data.routeType, e.data.counts);
  }
  if (e.data.type === 'escPressed') {
    var evt = new KeyboardEvent('keydown', { key: 'Escape', bubbles: true });
    document.dispatchEvent(evt);
  }
  if (e.data.type === 'ui') {
    window.isIllegalMode = e.data.illegalMode || false;
    if (e.data.locales) { _locales = e.data.locales; applyLocales(); }
    if (e.data.playerName) myPlayerName = e.data.playerName;
    if (e.data.playerLevel !== undefined) myPlayerLevel = e.data.playerLevel;
    if (e.data.playerXp !== undefined) myPlayerXp = e.data.playerXp;
    if (e.data.playerXpNeeded !== undefined) myPlayerXpNeeded = e.data.playerXpNeeded;
    if (e.data.hasForkliftLicense !== undefined) window.hasForkliftLicense = e.data.hasForkliftLicense;
    if (e.data.hasDockLicense !== undefined) window.hasDockLicense = e.data.hasDockLicense;
    if (e.data.routes) {
      routes = e.data.routes;
      currentMission = 0;
    }
    if (e.data.truckData) {
      truckData = e.data.truckData;
    }
    showUI(e.data.show);
  }
  if (e.data.type === 'showInvite') {
    pendingInviteFrom = { fromId: e.data.fromId, fromName: e.data.fromName };
    var invEl = document.getElementById('inviteNotification');
    var titleEl = invEl.querySelector('.invite-notif-title');
    var descEl = invEl.querySelector('.invite-notif-desc');
    if (titleEl) titleEl.innerHTML = '<span>' + T('UI_JOB_WORD') + '</span> ' + T('UI_INVITE');
    if (descEl) {
      descEl.innerHTML = '<span class="invite-notif-player" id="inviteFromName"></span> '
        + (T('UI_JOB_INVITE_DESC') || 'invited you to join the job');
      var nameEl = document.getElementById('inviteFromName');
      if (nameEl) nameEl.textContent = e.data.fromName;
    }
    invEl.classList.add('visible');
    document.body.classList.add('visible');
  }
  if (e.data.type === 'hideInvite') {
    document.getElementById('inviteNotification').classList.remove('visible');
    pendingInviteFrom = null;
  }
  if (e.data.type === 'playerJoined') {
    if (partners.length >= 3) {
      try { fetch('https://' + GetParentResourceName() + '/kickFromSession', { method: 'POST', body: JSON.stringify({ targetId: e.data.playerId }) }); } catch (e) {}
    } else {
      partners.push({ id: e.data.playerId, name: e.data.playerName, level: e.data.playerLevel || 0 });
      if (outfitMode === 2) {
        try { fetch('https://' + GetParentResourceName() + '/setPlayerOutfit', { method: 'POST', body: JSON.stringify({ playerId: e.data.playerId, mode: 2 }) }); } catch(e) {}
      }
      renderPlayers();
      showToast(TF('TOAST_CREW_JOINED_NAME', e.data.playerName), 'green');
    }
  }
  if (e.data.type === 'playerLeft') {
    var leftId = e.data.playerId;
    var leftName = '';
    partners = partners.filter(function(p) { if (p.id === leftId) { leftName = p.name; return false; } return true; });
    if (leftName) showToast(TF('TOAST_CREW_LEFT_NAME', leftName), 'red');
    renderPlayers();
  }
  if (e.data.type === 'inviteRejected') {
    showToast(T('TOAST_INVITE_DECLINED'), 'red');
  }
  if (e.data.type === 'updatePlayerInfo') {
    if (e.data.playerName) myPlayerName = e.data.playerName;
    if (e.data.playerLevel !== undefined) myPlayerLevel = e.data.playerLevel;
    if (e.data.playerXp !== undefined) myPlayerXp = e.data.playerXp;
    if (e.data.playerXpNeeded !== undefined) myPlayerXpNeeded = e.data.playerXpNeeded;
    updateProfile();
    renderPlayers();
  }
  if (e.data.type === 'setLocales') {
    if (e.data.locales) { _locales = e.data.locales; applyLocales(); }
  }
  if (e.data.type === 'playerTools') {
    if (e.data.tools) {
      truckData = e.data.tools;
      if (inUpgradeMode) {
        renderUpgradeView();
      } else {
        var tcrd = document.getElementById('truckCard');
        if (tcrd) tcrd.innerHTML = buildTruckCardHTML();
      }
    }
  }
  if (e.data.type === 'playerStats') {
    renderStatsPanel(e.data.stats || {}, e.data.history || []);
  }
  if (e.data.type === 'upgradeResult') {
    var _key = pendingUpgradeKey;
    pendingUpgradeKey = null;
    if (e.data.success) {
      if (e.data.truckData) truckData = e.data.truckData;
      showGarageToast(T('TOAST_UPGRADED') || 'Upgrade complete!', 'green');
      if (inUpgradeMode) {
        if (_key) updateUpgradeRow(_key);
      } else {
        var tcrd2 = document.getElementById('truckCard');
        if (tcrd2) tcrd2.innerHTML = buildTruckCardHTML();
      }
    } else {
      showGarageToast(e.data.message || T('SRV_NOT_ENOUGH_MONEY') || 'Not enough money.', 'red');
      if (inUpgradeMode && _key) updateUpgradeRow(_key);
    }
  }
  if (e.data.type === 'truckHud') {
    if (e.data.show) {
      showVehicleHud(e.data.name, e.data.slot);
    } else {
      hideVehicleHud();
    }
    if (e.data.health !== undefined || e.data.fuel !== undefined) {
      updateVehicleHud(e.data.health, e.data.fuel);
    }
  }
  if (e.data.type === 'truckHudUpdate') {
    updateVehicleHud(e.data.health, e.data.fuel);
  }
  if (e.data.type === 'compartments') {
    renderCompartments(e.data.mats);
  }
});

document.addEventListener('keydown', function (e) {
  if (e.key === 'Escape') {
    if (pendingInviteFrom) {
      rejectInvite();
    } else if (inviteInputOpen) {
      hideInviteInput();
    } else if (document.getElementById('confirmOverlay').classList.contains('visible')) {
      closeConfirm();
    } else if (document.getElementById('modalOverlay').classList.contains('open')) {
      closeModal();
    } else if (currentView === 'stats') {
      closeStatsPanel();
    } else {
      closeUIAndDisband();
    }
  }
});

renderPlayers();
