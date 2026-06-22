<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Buty Lumberjack</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="job-tracker" id="jobTracker">
  <div class="jt-header">
    <div class="jt-icon"><svg viewBox="0 0 24 24"><path d="M20 8h-3V4H3c-1.1 0-2 .9-2 2v11h2c0 1.66 1.34 3 3 3s3-1.34 3-3h6c0 1.66 1.34 3 3 3s3-1.34 3-3h2v-5l-3-4z"/></svg></div>
    <div><div class="jt-title" data-i18n="UI_ACTIVE_JOB">Active Job</div><div class="jt-route" id="jtRoute">Route 1</div></div>
  </div>
  <div class="jt-steps" id="jtSteps"></div>
  <div class="jt-damage" id="jtDamage">
    <div class="jt-damage-header">
      <div class="jt-damage-label"><svg viewBox="0 0 24 24"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 15l-5-5 1.41-1.41L10 14.17l7.59-7.59L19 8l-9 9z"/></svg><span data-i18n="UI_CARGO_LABEL">Cargo</span></div>
      <div class="jt-damage-pct" id="jtDamagePct">100%</div>
    </div>
    <div class="jt-damage-bar"><div class="jt-damage-fill" id="jtDamageFill" style="width:100%"></div></div>
    <div class="jt-damage-penalty" id="jtDamagePenalty"></div>
  </div>
  <div class="jt-capacity" id="jtCapacity" style="display:none">
    <div class="jt-cap-header">
      <div class="jt-cap-label"><svg viewBox="0 0 24 24"><path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V7H6v12zM19 4h-3.5l-1-1h-5l-1 1H5v2h14V4z"/></svg><span>Capacity</span></div>
      <div class="jt-cap-count" id="jtCapCount">0 / 20</div>
    </div>
    <div class="jt-cap-bar"><div class="jt-cap-fill" id="jtCapFill" style="width:0%"></div></div>
  </div>
  <div class="jt-compartments" id="jtCompartments" style="display:none"></div>
  <div class="jt-footer">
    <div class="jt-footer-stat"><svg viewBox="0 0 24 24"><path d="M21 3L3 10.53v.98l6.84 2.65L12.48 21h.98L21 3z"/></svg><span class="jt-val" id="jtDist">-</span></div>
    <div class="jt-footer-stat"><svg viewBox="0 0 24 24"><path d="M11.99 2C6.47 2 2 6.48 2 12s4.47 10 9.99 10C17.52 22 22 17.52 22 12S17.52 2 11.99 2zM12 20c-4.42 0-8-3.58-8-8s3.58-8 8-8 8 3.58 8 8-3.58 8-8 8zm.5-13H11v6l5.25 3.15.75-1.23-4.5-2.67z"/></svg><span class="jt-val" id="jtEta">-</span></div>
  </div>
</div>

<div class="toast-container" id="toastContainer"></div>
<div id="gsFloatingTip"></div>

<div class="invite-notification" id="inviteNotification">
  <div class="invite-notif-header">
    <div class="invite-notif-icon">
      <svg viewBox="0 0 24 24"><path d="M20 8h-3V4H3c-1.1 0-2 .9-2 2v11h2c0 1.66 1.34 3 3 3s3-1.34 3-3h6c0 1.66 1.34 3 3 3s3-1.34 3-3h2v-5l-3-4z"/></svg>
    </div>
    <div class="invite-notif-text">
      <div class="invite-notif-title"><span>JOB</span> INVITE</div>
      <div class="invite-notif-desc"><span class="invite-notif-player" id="inviteFromName" data-i18n="UI_PLAYER">Player</span> <span data-i18n="UI_JOB_INVITE_DESC">invited you to join the job</span></div>
    </div>
  </div>
  <div class="invite-notif-btns">
    <button class="g-btn outline" onclick="rejectInvite()" data-i18n="UI_DECLINE">Decline</button>
    <button class="g-btn primary" onclick="acceptInvite()" data-i18n="UI_ACCEPT">Accept</button>
  </div>
</div>

<div class="confirm-overlay" id="confirmOverlay">
  <div class="confirm-box">
    <div class="confirm-icon" id="confirmIcon"></div>
    <div class="confirm-title" id="confirmTitle"></div>
    <div class="confirm-desc" id="confirmDesc"></div>
    <div class="confirm-amount" id="confirmAmount"></div>
    <div class="confirm-btns">
      <button class="g-btn outline" onclick="closeConfirm()" data-i18n="UI_CANCEL">Cancel</button>
      <button class="g-btn danger" id="confirmBtn" onclick="confirmAction()" data-i18n="UI_CONFIRM_BTN">Confirm</button>
    </div>
  </div>
</div>

<div class="modal-overlay" id="modalOverlay">
  <div class="modal-box">
    <div class="modal-title">
      <svg viewBox="0 0 24 24"><path d="M15 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm-9-2V7H4v3H1v2h3v3h2v-3h3v-2H6zm9 4c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg>
      <span data-i18n="UI_INVITE_PLAYER">Invite Player</span>
    </div>
    <p class="modal-subtitle" data-i18n="UI_SELECT_PLAYER">Select a player to join your crew</p>
    <div class="modal-list" id="modalList"></div>
    <button class="modal-close-btn" onclick="closeModal()" data-i18n="UI_CANCEL">Cancel</button>
  </div>
</div>

<div class="panel-bg" id="panelBg"></div>

<div class="panel" id="jobPanel" style="display:none">

  <div class="header">
    <div class="header-icon">
      <svg viewBox="0 0 24 24"><path d="M20 8h-3V4H3c-1.1 0-2 .9-2 2v11h2c0 1.66 1.34 3 3 3s3-1.34 3-3h6c0 1.66 1.34 3 3 3s3-1.34 3-3h2v-5l-3-4zM6 18.5c-.83 0-1.5-.67-1.5-1.5s.67-1.5 1.5-1.5 1.5.67 1.5 1.5-.67 1.5-1.5 1.5zm13.5-9 1.96 2.5H17V9.5h2.5zm-1.5 9c-.83 0-1.5-.67-1.5-1.5s.67-1.5 1.5-1.5 1.5.67 1.5 1.5-.67 1.5-1.5 1.5z"/></svg>
    </div>
    <div class="header-body">
      <div class="header-title"><span data-i18n="UI_TRUCKER">LUMBERJACK JOB</span></div>
      <p class="header-subtitle" data-i18n="UI_HEADER_DESC">Become a lumberjack, cut down trees, collect the timber, and deliver it for processing to earn great rewards.</p>
    </div>
  </div>

  <div class="panel-scroll">

    <div class="section">
      <div class="section-label">
        <svg viewBox="0 0 24 24"><path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg>
        <span data-i18n="UI_PROFILE">Profile</span>
      </div>
      <div class="profile-card">
        <div class="profile-avatar">
          <svg viewBox="0 0 24 24"><path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg>
        </div>
        <div class="profile-text">
          <div class="profile-label" data-i18n="UI_NICKNAME">Nickname</div>
          <div class="profile-name" id="profileName" data-i18n="UI_PLAYER">Player</div>
        </div>
        <div class="profile-pills">
          <div class="pill level">
            <div class="pill-val" id="pillLevel">0</div>
            <div class="pill-lbl" data-i18n="UI_LEVEL_WORD">Level</div>
          </div>
          <div class="pill exp">
            <div class="pill-val" id="pillExp">0/500</div>
            <div class="pill-lbl" data-i18n="UI_EXP">EXP</div>
          </div>
        </div>
      </div>
    </div>

    <div class="section">
      <div class="section-header-row">
        <div class="section-label">
          <svg viewBox="0 0 24 24"><path d="M16 11c1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3 1.34 3 3 3zm-8 0c1.66 0 3-1.34 3-3S9.66 5 8 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5z"/></svg>
          <span data-i18n="UI_PLAYER_LIST">Player List</span>
        </div>
        <div id="teamBonusBadge"></div>
      </div>
      <div class="player-list" id="playerList"></div>
      <div id="inviteArea"></div>
    </div>

    <div class="section">
      <div class="section-label">
        <svg viewBox="0 0 24 24"><path d="M11 17h2v-6h-2v6zm1-15C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zM11 9h2V7h-2v2z"/></svg>
        <span data-i18n="UI_JOB_DETAILS">Job Details</span>
      </div>
      <div class="job-details-card">
        <div class="job-details-title" data-i18n="UI_HOW_IT_WORKS">How It Works</div>
        <div class="job-details-desc" data-i18n="UI_JOB_DETAILS_DESC">Head to the marked pickup point, complete your tasks, and deliver safely to the drop-off location.</div>
      </div>
    </div>

  </div>

  <div class="panel-footer">
    <button class="start-btn" onclick="startJob()">
      <svg viewBox="0 0 24 24"><path d="M8 5v14l11-7z"/></svg><span data-i18n="UI_START_JOB_BTN">
      Start Job
    </span></button>
  </div>

</div>

<div id="uiToastContainer" class="ui-toast-container"></div>

<div class="truck-upgrade-overlay" id="truckUpgradeOverlay">
  <div class="truck-upgrade-modal">
    <div class="truck-upgrade-header">
      <div class="truck-upgrade-title">
        <svg viewBox="0 0 24 24"><path d="M19.14 12.94c.04-.3.06-.61.06-.94 0-.32-.02-.64-.07-.94l2.03-1.58c.18-.14.23-.41.12-.61l-1.92-3.32c-.12-.22-.37-.29-.59-.22l-2.39.96c-.5-.38-1.03-.7-1.62-.94l-.36-2.54c-.04-.24-.24-.41-.48-.41h-3.84c-.24 0-.43.17-.47.41l-.36 2.54c-.59.24-1.13.57-1.62.94l-2.39-.96c-.22-.08-.47 0-.59.22L2.74 8.87c-.12.21-.08.47.12.61l2.03 1.58c-.05.3-.07.62-.07.94s.02.64.07.94l-2.03 1.58c-.18.14-.23.41-.12.61l1.92 3.32c.12.22.37.29.59.22l2.39-.96c.5.38 1.03.7 1.62.94l.36 2.54c.04.24.24.41.47.41h3.84c.24 0 .44-.17.47-.41l.36-2.54c.59-.24 1.13-.56 1.62-.94l2.39.96c.22.08.47 0 .59-.22l1.92-3.32c.12-.22.07-.47-.12-.61l-2.01-1.58zM12 15.6A3.6 3.6 0 1115.6 12 3.6 3.6 0 0112 15.6z"/></svg>
        <span data-i18n="UI_UPGRADES">Upgrades</span>
      </div>
      <button class="truck-upgrade-close" onclick="closeTruckUpgrade()" type="button">
        <svg viewBox="0 0 24 24"><path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"/></svg>
      </button>
    </div>
    <div class="truck-upgrade-list" id="truckUpgradeList"></div>
  </div>
</div>

<script src="script.js"></script>
</body>
</html>
