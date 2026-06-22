:root {
  --bg-panel: #0e0e16;
  --bg-card: rgba(255, 255, 255, 0.025);
  --bg-card-hover: rgba(255, 255, 255, 0.045);
  --border: rgba(255, 255, 255, 0.06);
  --border-hover: rgba(255, 255, 255, 0.1);
  --text-primary: #f0f0f0;
  --text-secondary: rgba(255, 255, 255, 0.5);
  --text-muted: rgba(255, 255, 255, 0.5);
  --red: #ae4ec5;
  --red-bg: rgba(174, 78, 197, 0.1);
  --red-glow: rgba(174, 78, 197, 0.25);
  --green: #2dd4a0;
  --green-bg: rgba(45, 212, 160, 0.1);
  --orange: #5bc4ff;
  --orange-bg: rgba(91, 196, 255, 0.1);
  --radius: 12px;
  --radius-sm: 9px;
  --ease: cubic-bezier(0.16, 1, 0.3, 1);
}

.illegal-mode {
  --orange: #ff4b4b;
  --orange-bg: rgba(255, 75, 75, 0.1);
  --red: #ff4b4b;
  --red-bg: rgba(255, 75, 75, 0.1);
  --red-glow: rgba(255, 75, 75, 0.25);
}
.illegal-mode .header-icon { background: linear-gradient(135deg, #ff4b4b, #8b1a1a) !important; box-shadow: 0 4px 20px rgba(255,75,75,0.25) !important; }
.illegal-mode .start-btn { background: linear-gradient(135deg, #ff4b4b, #8b1a1a) !important; box-shadow: 0 4px 20px rgba(255,75,75,0.25) !important; }
.illegal-mode .start-btn:hover { box-shadow: 0 6px 28px rgba(255,75,75,0.4) !important; }
.illegal-mode .menu-card-icon { background: linear-gradient(135deg, #ff4b4b, #8b1a1a) !important; box-shadow: 0 3px 16px rgba(255,75,75,0.2) !important; }
.panel.illegal-mode { max-height: 98vh !important; }

*, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

body {
  font-family: 'Inter', system-ui, -apple-system, sans-serif;
  background: transparent;
  color: var(--text-primary);
  overflow: hidden;
  height: 100vh;
  width: 100vw;
  user-select: none;
  -webkit-font-smoothing: antialiased;
  display: none;
}
body.visible { display: block; }

.always-visible { display: block !important; position: fixed; }

.panel {
  position: fixed;
  left: 32px;
  top: 50%;
  transform: translateY(-50%);
  max-height: 96vh;
  width: 410px;
  display: flex;
  flex-direction: column;
  background: var(--bg-panel);
  border: 1px solid var(--border);
  border-radius: 18px;
  box-shadow: 0 8px 60px rgba(0, 0, 0, 0.5), 0 0 0 1px rgba(255, 255, 255, 0.02) inset;

  animation: slideIn 0.45s var(--ease);
  z-index: 10;
  overflow: hidden;
}
@keyframes slideIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

.panel-scroll {
  flex: 1;
  overflow-y: auto;
  overflow-x: hidden;
  padding: 0 20px 10px;
  margin-top: -10px;
  position: relative;
}
.panel-scroll::-webkit-scrollbar { width: 4px; }
.panel-scroll::-webkit-scrollbar-thumb { background: rgba(255,255,255,0.08); border-radius: 4px; }
.panel-scroll::-webkit-scrollbar-thumb:hover { background: rgba(255,255,255,0.15); }

.header {
  display: flex;
  align-items: flex-start;
  gap: 14px;
  padding: 18px 20px 14px;
  flex-shrink: 0;
}
.header-icon {
  width: 50px;
  height: 50px;
  border-radius: 14px;
  background: linear-gradient(135deg, var(--red), #8a3ba0);
  display: grid;
  place-items: center;
  flex-shrink: 0;
  box-shadow: 0 4px 20px var(--red-glow);
}
.header-icon svg { width: 26px; height: 26px; fill: #fff; }
.header-body { flex: 1; padding-top: 2px; }
.header-title {
  font-size: 20px;
  font-weight: 900;
  letter-spacing: 0.5px;
  line-height: 1.1;
}
.header-title span { color: var(--red); }
.header-subtitle {
  font-size: 11px;
  color: var(--text-secondary);
  margin-top: 5px;
  line-height: 1.4;
  font-weight: 500;
}

.section { margin-top: 28px; }
.section-label {
  display: flex;
  align-items: center;
  gap: 7px;
  font-size: 11px;
  font-weight: 700;
  color: var(--text-muted);
  text-transform: uppercase;
  letter-spacing: 1.5px;
  margin-bottom: 12px;
}
.section-label svg { width: 14px; height: 14px; fill: var(--text-muted); }

.profile-card {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 11px 12px;
  background: var(--bg-card);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  transition: border-color 0.15s;
}
.profile-card:hover { border-color: var(--border-hover); }
.profile-avatar {
  width: 40px;
  height: 40px;
  border-radius: 11px;
  background: linear-gradient(135deg, #1e1e2e, #2c2c40);
  display: grid;
  place-items: center;
  flex-shrink: 0;
}
.profile-avatar svg { width: 20px; height: 20px; fill: rgba(255, 255, 255, 0.3); }
.profile-text { flex: 1; min-width: 0; }
.profile-label { font-size: 10px; color: var(--text-muted); text-transform: uppercase; letter-spacing: 0.8px; font-weight: 600; }
.profile-name { font-size: 15px; font-weight: 800; margin-top: 2px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }
.profile-pills { display: flex; gap: 8px; flex-shrink: 0; }
.pill {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 8px 14px;
  border-radius: var(--radius-sm);
  min-width: 54px;
}
.pill-val { font-size: 17px; font-weight: 900; line-height: 1; }
.pill-lbl { font-size: 8px; font-weight: 700; text-transform: uppercase; letter-spacing: 0.5px; margin-top: 3px; }
.pill.level { background: var(--red-bg); }
.pill.level .pill-val { color: var(--red); }
.pill.level .pill-lbl { color: rgba(174, 78, 197, 0.5); }
.pill.exp { background: var(--red-bg); }
.pill.exp .pill-val { color: var(--red); }
.pill.exp .pill-lbl { color: rgba(174, 78, 197, 0.5); }

.player-list { display: flex; flex-direction: column; gap: 4px; }
.player-slot {
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 9px 12px;
  border-radius: var(--radius-sm);
  background: var(--bg-card);
  border: 1px solid var(--border);
  transition: all 0.15s;
}
.player-slot:hover { background: var(--bg-card-hover); }
.player-slot.empty {
  border-style: dashed;
  border-color: rgba(255, 255, 255, 0.04);
  background: transparent;
}
.player-av {
  width: 32px;
  height: 32px;
  border-radius: 9px;
  display: grid;
  place-items: center;
  flex-shrink: 0;
}
.player-av svg { width: 15px; height: 15px; }
.player-av.owner { background: linear-gradient(135deg, var(--red), #8a3ba0); }
.player-av.owner svg { fill: #fff; }
.player-av.invited { background: linear-gradient(135deg, #4a9eff, #2b7de9); }
.player-av.invited svg { fill: #fff; }
.player-av.none { background: rgba(255, 255, 255, 0.03); }
.player-av.none svg { fill: rgba(255, 255, 255, 0.12); }
.player-info { flex: 1; min-width: 0; }
.player-name {
  font-size: 12px;
  font-weight: 600;
  display: flex;
  align-items: center;
  gap: 5px;
}
.player-name .crown { width: 11px; height: 11px; fill: var(--orange); }
.player-sub { font-size: 9px; font-weight: 600; margin-top: 1px; }
.player-sub.owner-level { color: var(--red); }
.player-sub.invited-level { color: var(--text-muted); }
.player-slot.empty .player-name { color: var(--text-muted); font-weight: 500; }
.player-level-badge {
  display: inline-flex;
  align-items: center;
  gap: 3px;
  padding: 2px 7px;
  border-radius: 6px;
  font-size: 9px;
  font-weight: 800;
  letter-spacing: 0.5px;
}
.player-level-badge.owner {
  background: var(--red-bg);
  color: var(--red);
}
.player-level-badge.partner {
  background: rgba(74,158,255,0.12);
  color: #4a9eff;
}
.player-level-badge svg { width: 9px; height: 9px; fill: currentColor; }
.player-role {
  font-size: 8px;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.8px;
  color: var(--text-muted);
  margin-top: 1px;
}
.remove-btn {
  width: 22px;
  height: 22px;
  border-radius: 50%;
  background: var(--red-bg);
  border: none;
  cursor: pointer;
  display: grid;
  place-items: center;
  flex-shrink: 0;
  transition: background 0.15s;
  opacity: 0;
}
.player-slot:hover .remove-btn { opacity: 1; }
.remove-btn:hover { background: rgba(174, 78, 197, 0.2); }
.remove-btn svg { width: 9px; height: 9px; fill: var(--red); }

.invite-btn {
  width: 100%;
  padding: 9px;
  margin-top: 6px;
  border-radius: var(--radius-sm);
  border: 1.5px dashed rgba(255, 255, 255, 0.06);
  background: transparent;
  color: var(--text-secondary);
  font-family: inherit;
  font-size: 12px;
  font-weight: 600;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 6px;
  transition: all 0.2s;
}
.invite-btn:hover {
  border-color: var(--red);
  color: var(--text-primary);
  background: var(--red-bg);
}
.invite-btn svg { width: 14px; height: 14px; fill: currentColor; }

.invite-input-row {
  display: flex;
  gap: 4px;
  margin-top: 6px;
}
.invite-input {
  flex: 1;
  padding: 9px 12px;
  border-radius: var(--radius-sm);
  border: 1.5px solid var(--border);
  background: var(--bg-card);
  color: var(--text-primary);
  font-family: inherit;
  font-size: 12px;
  font-weight: 600;
  outline: none;
  transition: border-color 0.2s;
}
.invite-input:focus { border-color: var(--red); }
.invite-input::placeholder { color: var(--text-muted); font-weight: 500; }
.invite-send-btn {
  padding: 9px 14px;
  border-radius: var(--radius-sm);
  border: none;
  background: linear-gradient(135deg, var(--red), #8a3ba0);
  color: #fff;
  font-family: inherit;
  font-size: 11px;
  font-weight: 700;
  cursor: pointer;
  transition: all 0.2s;
  display: flex;
  align-items: center;
  gap: 5px;
  flex-shrink: 0;
}
.invite-send-btn:hover { transform: scale(1.02); box-shadow: 0 4px 16px var(--red-glow); }
.invite-send-btn:active { transform: scale(0.98); }
.invite-send-btn svg { width: 13px; height: 13px; fill: #fff; }
.invite-cancel-btn {
  padding: 9px 10px;
  border-radius: var(--radius-sm);
  border: 1px solid var(--border);
  background: transparent;
  color: var(--text-muted);
  font-family: inherit;
  font-size: 11px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.15s;
  flex-shrink: 0;
}
.invite-cancel-btn:hover { background: var(--bg-card); color: var(--text-primary); }

.invite-notification {
  position: fixed;
  top: 32px;
  left: 32px;
  width: 340px;
  background: var(--bg-panel);
  border: 1px solid var(--border);
  border-radius: 16px;
  padding: 18px;
  box-shadow: 0 8px 60px rgba(0,0,0,0.5), 0 0 0 1px rgba(255,255,255,0.02) inset;
  z-index: 200;
  animation: inviteSlideIn 0.4s var(--ease);
  display: none;
}
.invite-notification.visible { display: block; }
@keyframes inviteSlideIn {
  from { opacity: 0; transform: translateX(-24px); }
  to { opacity: 1; transform: translateX(0); }
}
.invite-notif-header {
  display: flex; align-items: center; gap: 12px; margin-bottom: 14px;
}
.invite-notif-icon {
  width: 44px; height: 44px; border-radius: 12px;
  background: linear-gradient(135deg, var(--red), #8a3ba0);
  display: grid; place-items: center; flex-shrink: 0;
  box-shadow: 0 4px 16px var(--red-glow);
}
.invite-notif-icon svg { width: 22px; height: 22px; fill: #fff; }
.invite-notif-text { flex: 1; }
.invite-notif-title { font-size: 14px; font-weight: 800; }
.invite-notif-title span { color: var(--red); }
.invite-notif-desc { font-size: 11px; color: var(--text-secondary); margin-top: 3px; font-weight: 500; line-height: 1.4; }
.invite-notif-player {
  font-weight: 700; color: var(--text-primary);
}
.invite-notif-btns {
  display: flex; gap: 6px;
}
.invite-notif-btns .g-btn { flex: 1; padding: 11px; font-size: 12px; }

.job-details-card {
  padding: 16px;
  background: var(--bg-card);
  border: 1px solid var(--border);
  border-radius: var(--radius);
}
.job-details-title { font-size: 14px; font-weight: 800; margin-bottom: 6px; }
.job-details-desc {
  font-size: 12px;
  color: var(--text-secondary);
  line-height: 1.6;
  font-weight: 500;
}

.panel-footer {
  padding: 10px 20px 14px;
  flex-shrink: 0;
}
.start-btn {
  width: 100%;
  padding: 14px;
  border: none;
  border-radius: var(--radius);
  background: linear-gradient(135deg, var(--red), #8a3ba0);
  color: #fff;
  font-family: inherit;
  font-size: 14px;
  font-weight: 700;
  letter-spacing: 0.3px;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 8px;
  transition: all 0.2s;
  box-shadow: 0 4px 20px var(--red-glow);
  position: relative;
  overflow: hidden;
}
.start-btn::after {
  content: '';
  position: absolute;
  inset: 0;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.07), transparent);
  transform: translateX(-100%);
  transition: transform 0.5s;
}
.start-btn:hover::after { transform: translateX(100%); }
.start-btn:hover { transform: scale(1.02); box-shadow: 0 6px 28px rgba(174, 78, 197, 0.3); }
.start-btn:active { transform: scale(0.98); }
.start-btn svg { width: 16px; height: 16px; fill: #fff; }

.modal-overlay {
  position: fixed;
  inset: 0;
  z-index: 100;
  background: rgba(0, 0, 0, 0.5);
  display: none;
  place-items: center;
}
.modal-overlay.open { display: grid; }
.modal-box {
  width: 340px;
  background: rgba(14, 14, 22, 0.98);
  border: 1px solid var(--border);
  border-radius: 16px;
  padding: 20px;
  animation: modalIn 0.3s var(--ease);
}
@keyframes modalIn {
  from { transform: scale(0.92) translateY(8px); opacity: 0; }
  to { transform: scale(1) translateY(0); opacity: 1; }
}
.modal-title {
  font-size: 15px;
  font-weight: 800;
  display: flex;
  align-items: center;
  gap: 7px;
}
.modal-title svg { width: 16px; height: 16px; fill: var(--red); }
.modal-subtitle {
  font-size: 10px;
  color: var(--text-muted);
  margin: 3px 0 12px;
}
.modal-list { display: flex; flex-direction: column; gap: 2px; }
.modal-item {
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 9px 10px;
  border-radius: var(--radius-sm);
  cursor: pointer;
  transition: background 0.15s;
}
.modal-item:hover { background: var(--bg-card-hover); }
.modal-item-av {
  width: 30px;
  height: 30px;
  border-radius: 8px;
  background: linear-gradient(135deg, #1e1e2e, #2c2c40);
  display: grid;
  place-items: center;
  flex-shrink: 0;
}
.modal-item-av svg { width: 14px; height: 14px; fill: rgba(255, 255, 255, 0.2); }
.modal-item-name { font-size: 12px; font-weight: 600; flex: 1; }
.modal-item-add {
  width: 24px;
  height: 24px;
  border-radius: 6px;
  background: var(--green-bg);
  display: grid;
  place-items: center;
  opacity: 0;
  transition: opacity 0.15s;
}
.modal-item:hover .modal-item-add { opacity: 1; }
.modal-item-add svg { width: 11px; height: 11px; fill: var(--green); }
.modal-close-btn {
  width: 100%;
  margin-top: 10px;
  padding: 10px;
  border-radius: var(--radius-sm);
  border: 1px solid var(--border);
  background: transparent;
  color: var(--text-secondary);
  font-family: inherit;
  font-size: 11px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.15s;
}
.modal-close-btn:hover { background: var(--bg-card); color: var(--text-primary); }

.confirm-overlay {
  position: fixed; inset: 0; z-index: 150;
  background: rgba(0,0,0,0.55); display: none; place-items: center;
}
.confirm-overlay.open { display: grid; }
.confirm-box {
  width: 300px; background: rgba(14,14,22,0.98);
  border: 1px solid var(--border); border-radius: 16px;
  padding: 20px; animation: modalIn 0.3s var(--ease);
  text-align: center;
}
.confirm-icon {
  width: 44px; height: 44px; border-radius: 12px;
  display: grid; place-items: center; margin: 0 auto 12px;
}
.confirm-icon svg { width: 22px; height: 22px; fill: #fff; }
.confirm-title { font-size: 14px; font-weight: 800; margin-bottom: 4px; }
.confirm-desc { font-size: 11px; color: var(--text-muted); font-weight: 500; line-height: 1.5; margin-bottom: 14px; }
.confirm-amount { font-size: 20px; font-weight: 900; color: var(--green); margin-bottom: 14px; }
.confirm-btns { display: flex; gap: 6px; }
.confirm-btns .g-btn { flex: 1; padding: 11px; font-size: 12px; }

.g-btn {
  padding: 13px; border: none; border-radius: var(--radius);
  font-family: inherit; font-size: 13px; font-weight: 700; letter-spacing: 0.3px;
  cursor: pointer; display: flex; align-items: center; justify-content: center; gap: 8px;
  transition: all 0.2s; position: relative; overflow: hidden;
}
.g-btn::after {
  content: ''; position: absolute; inset: 0;
  background: linear-gradient(90deg, transparent, rgba(255,255,255,0.07), transparent);
  transform: translateX(-100%); transition: transform 0.5s;
}
.g-btn:hover::after { transform: translateX(100%); }
.g-btn:hover { transform: scale(1.02); }
.g-btn:active { transform: scale(0.98); }
.g-btn svg { width: 15px; height: 15px; fill: #fff; flex-shrink: 0; }

.g-btn.primary { background: linear-gradient(135deg, var(--red), #8a3ba0); color: #fff; box-shadow: 0 4px 20px var(--red-glow); }
.g-btn.primary:hover { box-shadow: 0 6px 28px rgba(174,78,197,0.3); }
.g-btn.accent { background: linear-gradient(135deg, var(--orange), #3aa0db); color: #fff; box-shadow: 0 4px 20px rgba(91,196,255,0.2); }
.g-btn.accent:hover { box-shadow: 0 6px 28px rgba(91,196,255,0.3); }
.g-btn.success { background: linear-gradient(135deg, var(--green), #1fa87e); color: #fff; box-shadow: 0 4px 20px rgba(45,212,160,0.2); }
.g-btn.success:hover { box-shadow: 0 6px 28px rgba(45,212,160,0.3); }
.g-btn.outline {
  background: var(--bg-card); color: var(--text-secondary);
  border: 1px solid var(--border); font-size: 12px; padding: 11px;
}
.g-btn.outline svg { fill: currentColor; }
.g-btn.outline:hover { background: var(--bg-card-hover); color: var(--text-primary); border-color: var(--border-hover); }
.g-btn.danger {
  background: var(--bg-card); color: var(--text-secondary);
  border: 1px solid var(--border); font-size: 12px; padding: 11px;
}
.g-btn.danger svg { fill: currentColor; }
.g-btn.danger:hover { border-color: rgba(255,100,100,0.2); color: #ff6b6b; }
.g-btn.danger-fill { background: linear-gradient(135deg, #ff6b6b, #c0392b); color: #fff; box-shadow: 0 4px 20px rgba(255,100,100,0.2); }
.g-btn.danger-fill:hover { box-shadow: 0 6px 28px rgba(255,100,100,0.3); }

.toast-container {
  position: fixed;
  bottom: 20px;
  left: 462px;
  z-index: 200;
  display: flex;
  flex-direction: column-reverse;
  gap: 6px;
  pointer-events: none;
}
.toast {
  padding: 10px 14px;
  border-radius: var(--radius-sm);
  background: rgba(14, 14, 22, 0.96);
  border: 1px solid var(--border);
  font-size: 12px;
  font-weight: 600;
  display: flex;
  align-items: center;
  gap: 8px;
  box-shadow: 0 6px 24px rgba(0, 0, 0, 0.3);
  animation: toastIn 0.3s var(--ease);
}
.toast.out { animation: toastOut 0.25s ease forwards; }
.toast-dot { width: 5px; height: 5px; border-radius: 50%; flex-shrink: 0; }
.toast-dot.green { background: var(--green); }
.toast-dot.red { background: var(--red); }
.toast-dot.orange { background: var(--orange); }
@keyframes toastIn { from { opacity: 0; transform: translateY(8px); } to { opacity: 1; transform: translateY(0); } }
@keyframes toastOut { to { opacity: 0; transform: translateY(8px); } }


.panel-bg {
  position: fixed; inset: 0;
  background: linear-gradient(90deg, rgba(0,0,0,0.85) 0%, rgba(0,0,0,0.7) 35%, rgba(0,0,0,0) 60%);
  z-index: 5; display: none;
  pointer-events: none;
}
.panel-bg.visible { display: block; }

.job-tracker {
  position: fixed;
  left: 24px;
  top: 50%;
  transform: translateY(-50%) translateX(-20px);
  width: 220px;
  opacity: 0;
  pointer-events: none;
  transition: opacity 0.5s var(--ease), transform 0.5s var(--ease);
  z-index: 800;
  font-family: 'Inter', system-ui, sans-serif;
}
.job-tracker.visible {
  opacity: 1;
  transform: translateY(-50%) translateX(0);
}
.jt-header {
  display: flex;
  align-items: center;
  gap: 8px;
  margin-bottom: 14px;
}
.jt-icon {
  width: 32px; height: 32px; border-radius: 9px;
  background: linear-gradient(135deg, var(--red), #8a3ba0);
  display: grid; place-items: center; flex-shrink: 0;
  box-shadow: 0 3px 12px var(--red-glow);
}
.jt-icon svg { width: 16px; height: 16px; fill: #fff; }
.jt-title { font-size: 10px; font-weight: 800; text-transform: uppercase; letter-spacing: 1.2px; color: var(--text-muted); }
.jt-route { font-size: 12px; font-weight: 700; color: var(--text-primary); margin-top: 1px; }
.jt-steps { display: flex; flex-direction: column; gap: 4px; }
.jt-step {
  display: flex; align-items: flex-start; gap: 13px;
  padding: 9px 10px;
  position: relative;
  border-radius: 11px;
  transition: background 0.3s var(--ease);
}

.jt-step.active {
  background: linear-gradient(100deg, var(--red-bg), transparent 85%);
}

.jt-step-line {
  position: absolute;
  left: 24px; top: 38px; bottom: -4px;
  width: 2px; border-radius: 2px;
  background: rgba(255,255,255,0.07);
  transition: background 0.3s;
}
.jt-step:last-child .jt-step-line { display: none; }
.jt-step.done .jt-step-line { background: var(--green); }
.jt-step.active .jt-step-line {
  background: linear-gradient(to bottom, var(--red), rgba(255,255,255,0.07));
}

.jt-step-dot {
  width: 30px; height: 30px; border-radius: 10px;
  border: 1.5px solid rgba(255,255,255,0.09);
  background: rgba(255,255,255,0.03);
  display: grid; place-items: center; flex-shrink: 0;
  position: relative; z-index: 1;
  transition: all 0.35s var(--ease);
}
.jt-step-dot svg { width: 15px; height: 15px; fill: rgba(255,255,255,0.22); transition: fill 0.3s; }

.jt-step.done .jt-step-dot {
  border-color: transparent;
  background: linear-gradient(135deg, var(--green), #1ba37c);
  box-shadow: 0 3px 10px var(--green-bg);
}
.jt-step.done .jt-step-dot svg { display: none; }
.jt-step.done .jt-step-dot::after {
  content: 'âœ“';
  font-size: 15px; font-weight: 800; color: #04140f;
  line-height: 1;
}

.jt-step.active .jt-step-dot {
  border-color: var(--red);
  background: linear-gradient(135deg, var(--red), #8a3ba0);
  box-shadow: 0 0 0 4px var(--red-bg), 0 4px 14px var(--red-glow);
  animation: jt-pulse 2.2s ease-in-out infinite;
}
.jt-step.active .jt-step-dot svg { fill: #fff; }
@keyframes jt-pulse {
  0%, 100% { box-shadow: 0 0 0 4px var(--red-bg), 0 4px 14px var(--red-glow); }
  50% { box-shadow: 0 0 0 6px var(--red-bg), 0 4px 22px var(--red-glow), 0 0 30px rgba(174,78,197,0.2); }
}

.jt-step-text { padding-top: 1px; flex: 1; min-width: 0; }
.jt-step-label {
  font-size: 12px; font-weight: 700; line-height: 1.3;
  color: rgba(255,255,255,0.28);
  transition: color 0.3s;
}
.jt-step.done .jt-step-label { color: rgba(255,255,255,0.55); }
.jt-step.active .jt-step-label { color: var(--text-primary); }

.jt-step-text::after {
  display: block;
  font-size: 9px; font-weight: 700; letter-spacing: 0.6px;
  text-transform: uppercase;
  margin-top: 3px;
}
.jt-step:not(.done):not(.active) .jt-step-text::after {
  content: 'Pendiente'; color: rgba(255,255,255,0.18);
}
.jt-step.active .jt-step-text::after {
  content: 'IN PROGRESS'; color: var(--red);
}
.jt-step.done .jt-step-text::after {
  content: 'âœ“ COMPLETED'; color: var(--green);
}
.jt-step-dist {
  font-size: 9px; font-weight: 600; color: var(--text-muted);
  margin-top: 2px; letter-spacing: 0.3px;
}

.jt-step--count .jt-step-text::after { display: none; }
.jt-step-count {
  font-size: 11px; font-weight: 800; color: var(--text-muted);
  margin-top: 3px; letter-spacing: 0.3px;
}
.jt-step-count .jt-count-n { color: rgba(255,255,255,0.5); }
.jt-step.active .jt-step-count { color: var(--text-muted); }
.jt-step.active .jt-step-count .jt-count-n { color: var(--red); }
.jt-step.done .jt-step-count { color: var(--green); }
.jt-step.done .jt-step-count .jt-count-n { color: var(--green); }
.jt-capacity {
  margin-top: 10px; padding-top: 8px;
  border-top: 1px solid var(--border);
}
.jt-cap-header {
  display: flex; justify-content: space-between; align-items: center;
  margin-bottom: 5px;
}
.jt-cap-label {
  font-size: 9px; font-weight: 700; color: var(--text-muted);
  text-transform: uppercase; letter-spacing: 0.8px;
  display: flex; align-items: center; gap: 4px;
}
.jt-cap-label svg { width: 10px; height: 10px; fill: var(--text-muted); }
.jt-cap-count {
  font-size: 10px; font-weight: 800; color: var(--text-primary);
}
.jt-cap-bar {
  height: 5px; background: rgba(255,255,255,0.06); border-radius: 3px; overflow: hidden;
}
.jt-cap-fill {
  height: 100%; border-radius: 3px;
  background: linear-gradient(90deg, var(--red), #f97316);
  transition: width 0.4s cubic-bezier(0.16,1,0.3,1);
}

.jt-compartments {
  margin-top: 10px; padding-top: 8px;
  border-top: 1px solid var(--border);
  display: flex; flex-direction: column; gap: 6px;
}
.jt-comp { display: flex; flex-direction: column; gap: 3px; }
.jt-comp-top {
  display: flex; justify-content: space-between; align-items: center;
}
.jt-comp-name {
  font-size: 9px; font-weight: 700; color: var(--text-muted);
  text-transform: uppercase; letter-spacing: 0.6px;
}
.jt-comp-count {
  font-size: 10px; font-weight: 800; color: var(--text-primary);
  font-variant-numeric: tabular-nums;
}
.jt-comp-bar {
  height: 5px; background: rgba(255,255,255,0.06);
  border-radius: 3px; overflow: hidden;
}
.jt-comp-fill {
  height: 100%; border-radius: 3px; width: 0%;
  transition: width 0.4s cubic-bezier(0.16,1,0.3,1);
}

.jt-comp-fill.mat-normal  { background: linear-gradient(90deg, #9ca3af, #6b7280); }
.jt-comp-fill.mat-paper   { background: linear-gradient(90deg, #60a5fa, #3b82f6); }
.jt-comp-fill.mat-plastic { background: linear-gradient(90deg, #fbbf24, #f59e0b); }
.jt-comp-fill.mat-glass   { background: linear-gradient(90deg, #34d399, #10b981); }
.jt-comp-fill.mat-organic { background: linear-gradient(90deg, #a3e635, #84cc16); }

.jt-comp.locked { opacity: 0.4; }
.jt-comp.locked .jt-comp-count { color: var(--text-muted); }
.jt-comp.full .jt-comp-count { color: var(--red); }

.jt-footer {
  margin-top: 12px; padding-top: 10px;
  border-top: 1px solid var(--border);
  display: flex; justify-content: space-between; align-items: center;
}
.jt-footer-stat {
  display: flex; align-items: center; gap: 4px;
  font-size: 9px; font-weight: 700; color: var(--text-muted);
  letter-spacing: 0.3px;
}
.jt-footer-stat svg { width: 11px; height: 11px; fill: var(--text-muted); }
.jt-footer-stat .jt-val { color: var(--text-primary); }
.jt-damage {
  margin-top: 10px; padding-top: 8px;
  border-top: 1px solid var(--border);
  display: none;
}
.jt-damage.visible { display: block; }
.jt-damage-header {
  display: flex; justify-content: space-between; align-items: center;
  margin-bottom: 6px;
}
.jt-damage-label {
  font-size: 9px; font-weight: 700; color: var(--text-muted);
  text-transform: uppercase; letter-spacing: 0.8px;
  display: flex; align-items: center; gap: 4px;
}
.jt-damage-label svg { width: 10px; height: 10px; fill: var(--text-muted); }
.jt-damage-pct { font-size: 10px; font-weight: 800; color: var(--green); }
.jt-damage-pct.warning { color: var(--orange); }
.jt-damage-pct.danger { color: #ff5555; }
.jt-damage-bar {
  width: 100%; height: 4px;
  background: rgba(255,255,255,0.06);
  border-radius: 2px; overflow: hidden;
  margin-bottom: 4px;
}
.jt-damage-fill {
  height: 100%; width: 0%;
  background: var(--green);
  border-radius: 2px;
  transition: width 0.4s var(--ease), background 0.4s;
}
.jt-damage-fill.warning { background: var(--orange); }
.jt-damage-fill.danger { background: #ff5555; }
.jt-damage-penalty {
  font-size: 8px; font-weight: 700; color: #ff5555;
  letter-spacing: 0.3px;
}


.ui-toast-container {
  position: fixed;
  top: 24px;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 10px;
  z-index: 100001;
  pointer-events: none;
}
.ui-toast {
  display: flex;
  align-items: center;
  gap: 12px;
  min-width: 280px;
  max-width: 420px;
  padding: 14px 18px;
  border-radius: var(--radius);
  background: var(--bg-panel);
  border: 1px solid var(--border);
  box-shadow: 0 12px 40px rgba(0, 0, 0, 0.5);
  color: var(--text-primary);
  font-family: 'Inter', system-ui, sans-serif;
  opacity: 0;
  transform: translateY(-16px) scale(0.96);
  transition: opacity 0.25s var(--ease), transform 0.25s var(--ease);
}
.ui-toast.show { opacity: 1; transform: translateY(0) scale(1); }
.ui-toast-icon {
  flex: 0 0 auto;
  width: 38px;
  height: 38px;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 50%;
}
.ui-toast-icon svg { width: 20px; height: 20px; }
.ui-toast-body { display: flex; flex-direction: column; gap: 2px; min-width: 0; }
.ui-toast-title {
  font-size: 13px;
  font-weight: 700;
  letter-spacing: 0.2px;
}
.ui-toast-msg {
  font-size: 12px;
  font-weight: 500;
  color: var(--text-secondary);
  line-height: 1.4;
}
.ui-toast { position: relative; overflow: hidden; }

.ui-toast.money,
.ui-toast.error {
  border-color: rgba(255, 75, 75, 0.4);
}
.ui-toast.money .ui-toast-icon,
.ui-toast.error .ui-toast-icon { background: rgba(255, 75, 75, 0.12); }
.ui-toast.money .ui-toast-icon svg,
.ui-toast.error .ui-toast-icon svg { fill: #ff4b4b; }
.ui-toast.money .ui-toast-title,
.ui-toast.error .ui-toast-title { color: #ff4b4b; }

.ui-toast.success { border-color: rgba(45, 212, 160, 0.4); }
.ui-toast.success .ui-toast-icon { background: var(--green-bg); }
.ui-toast.success .ui-toast-icon svg { fill: var(--green); }
.ui-toast.success .ui-toast-title { color: var(--green); }

.ui-toast.info { border-color: rgba(91, 196, 255, 0.4); }
.ui-toast.info .ui-toast-icon { background: var(--orange-bg); }
.ui-toast.info .ui-toast-icon svg { fill: var(--orange); }
.ui-toast.info .ui-toast-title { color: var(--orange); }

.ui-toast::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  height: 3px;
  width: 100%;
  border-radius: 0 0 var(--radius) var(--radius);
  background: currentColor;
  opacity: 0.35;
  transform-origin: left;
  animation: uiToastBar 3.4s linear forwards;
}
.ui-toast.money::after, .ui-toast.error::after { color: #ff4b4b; }
.ui-toast.success::after { color: var(--green); }
.ui-toast.info::after { color: var(--orange); }
@keyframes uiToastBar { from { transform: scaleX(1); } to { transform: scaleX(0); } }

.truck-card {
  background: var(--bg-card);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  padding: 14px;
  transition: border-color 0.15s;
}
.truck-card:hover { border-color: var(--border-hover); }
.truck-card-header {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-bottom: 14px;
}
.truck-card-icon {
  width: 40px; height: 40px;
  border-radius: 11px;
  background: linear-gradient(135deg, var(--red), #8a3ba0);
  display: grid; place-items: center;
  flex-shrink: 0;
  box-shadow: 0 3px 12px var(--red-glow);
}
.truck-card-icon svg { width: 20px; height: 20px; fill: #fff; }
.truck-card-title { flex: 1; min-width: 0; }
.truck-card-name { font-size: 14px; font-weight: 800; color: var(--text-primary); }
.truck-card-sub { font-size: 10px; font-weight: 600; color: var(--red); margin-top: 2px; text-transform: uppercase; letter-spacing: 0.5px; }

.truck-cap-list { display: flex; flex-direction: column; gap: 9px; margin-top: 16px; margin-bottom: 0; }
.truck-cap-row { display: flex; align-items: center; gap: 8px; }
.truck-cap-icon { flex-shrink: 0; display: flex; }
.truck-cap-icon svg { width: 11px; height: 11px; fill: var(--text-muted); }
.truck-cap-label { font-size: 10px; font-weight: 600; color: var(--text-muted); width: 56px; flex-shrink: 0; }
.truck-cap-bar-wrap { flex: 1; display: flex; align-items: center; gap: 7px; }
.truck-cap-bar { flex: 1; height: 5px; background: rgba(255,255,255,0.06); border-radius: 3px; overflow: hidden; }
.truck-cap-fill { height: 100%; background: linear-gradient(90deg, var(--red), #8a3ba0); border-radius: 3px; transition: width 0.4s var(--ease); }
.truck-cap-pct { font-size: 10px; font-weight: 700; color: var(--text-muted); width: 30px; text-align: right; flex-shrink: 0; }
.truck-cap-header { font-size: 9px; font-weight: 700; text-transform: uppercase; letter-spacing: 0.8px; color: var(--text-muted); opacity: 0.55; margin-bottom: 8px; }

.truck-upgrade-inline {
  display: inline-flex;
  align-items: center;
  gap: 4px;
  padding: 4px 9px;
  border: 1px solid rgba(174, 78, 197, 0.3);
  border-radius: 7px;
  background: var(--red-bg);
  color: var(--red);
  font-family: inherit;
  font-size: 10px;
  font-weight: 700;
  cursor: pointer;
  transition: all 0.15s;
  flex-shrink: 0;
  letter-spacing: 0.3px;
}
.truck-upgrade-inline:hover { background: rgba(174,78,197,0.18); border-color: var(--red); }
.truck-upgrade-inline:active { opacity: 0.7; }
.truck-upgrade-inline svg { width: 11px; height: 11px; fill: currentColor; }

.truck-preview {
  width: 100%;
  height: 90px;
  border-radius: 8px;
  margin: 8px 0;
  overflow: hidden;
  position: relative;
  background: radial-gradient(ellipse at center, rgba(174,78,197,0.10) 0%, rgba(0,0,0,0.35) 75%);
}
.truck-preview-img {
  width: 100%;
  height: 100%;
  object-fit: contain;
  object-position: center 80%;
  display: block;
  padding: 8px 14px;
  box-sizing: border-box;
  transform: rotate(-8deg);
  filter: drop-shadow(0 4px 8px rgba(0,0,0,0.45));
  margin-top: 2%;
}
.truck-preview-fallback {
  display: none;
  width: 100%;
  height: 100%;
  align-items: center;
  justify-content: center;
  background: rgba(174, 78, 197, 0.04);
  border: 1px solid var(--border);
  border-radius: 8px;
}
.truck-preview-fallback svg { width: 36px; height: 36px; fill: rgba(174, 78, 197, 0.18); }

.player-slot.compact { padding: 5px 12px; }
.compact-av { width: 22px !important; height: 22px !important; border-radius: 6px !important; }
.compact-invite { font-size: 10px; font-weight: 600; color: var(--text-muted); }

.outfit-row {
  display: flex;
  align-items: center;
  gap: 10px;
  background: var(--bg-card);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  padding: 10px 12px;
}
.outfit-row-icon {
  width: 32px; height: 32px;
  border-radius: 8px;
  background: var(--red-bg);
  border: 1px solid rgba(174, 78, 197, 0.2);
  display: grid; place-items: center;
  flex-shrink: 0;
}
.outfit-row-icon svg { width: 14px; height: 14px; fill: var(--red); }
.outfit-row-info { flex: 1; min-width: 0; }
.outfit-row-title { font-size: 11px; font-weight: 700; color: var(--text-primary); }
.outfit-row-sub { font-size: 10px; font-weight: 600; color: var(--text-muted); margin-top: 2px; }
.outfit-btns { display: flex; gap: 5px; flex-shrink: 0; }
.outfit-btn {
  width: 28px; height: 28px;
  border-radius: 7px;
  border: 1px solid var(--border);
  background: rgba(255, 255, 255, 0.04);
  color: var(--text-muted);
  font-family: inherit;
  font-size: 11px;
  font-weight: 800;
  cursor: pointer;
  transition: background 0.15s, border-color 0.15s, color 0.15s;
  outline: none;
  display: grid; place-items: center;
}
.outfit-btn:hover { border-color: rgba(174, 78, 197, 0.4); color: var(--text-primary); }
.outfit-btn.active { background: var(--red-bg); border-color: rgba(174, 78, 197, 0.5); color: var(--red); }
.outfit-btn.alt.active { background: rgba(45, 212, 160, 0.08); border-color: rgba(45, 212, 160, 0.4); color: var(--green); }
.outfit-btn:active { opacity: 0.7; }

.partner-slots-cta {
  display: flex;
  align-items: center;
  gap: 8px;
  padding: 9px 14px;
  border-top: 1px solid var(--border);
  font-size: 10px;
  font-weight: 600;
  color: var(--text-muted);
  opacity: 0.65;
}
.partner-slots-cta svg { width: 14px; height: 14px; fill: var(--text-muted); flex-shrink: 0; }

.tbb-cta {
  display: inline-flex;
  align-items: center;
  gap: 5px;
  font-size: 10px;
  font-weight: 600;
  color: var(--text-muted);
  opacity: 0.65;
  font-style: italic;
}
.tbb-cta svg { width: 12px; height: 12px; fill: var(--text-muted); flex-shrink: 0; }

.section-header-row {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 10px;
}
.section-header-row .section-label {
  margin-bottom: 0;
}
.team-bonus-badge {
  display: inline-flex;
  align-items: center;
  gap: 5px;
  background: var(--red-bg);
  border: 1px solid rgba(174, 78, 197, 0.2);
  border-radius: 20px;
  padding: 4px 10px 4px 7px;
  font-size: 10px;
  font-weight: 600;
  color: var(--text-muted);
}
.team-bonus-badge svg {
  width: 12px;
  height: 12px;
  fill: var(--red);
  flex-shrink: 0;
}
.tbb-value {
  color: var(--red);
  font-weight: 800;
}

.truck-upgrade-overlay {
  display: none;
  position: fixed;
  left: 32px;
  top: 50%;
  transform: translateY(-50%);
  width: 410px;
  max-height: 88vh;
  z-index: 200;
}
.truck-upgrade-overlay.visible { display: flex; }
.truck-upgrade-overlay.visible .truck-upgrade-modal { animation: tuSlideIn 0.28s var(--ease) both; }
.truck-upgrade-overlay.closing .truck-upgrade-modal { animation: tuSlideOut 0.22s var(--ease) both; }
@keyframes tuSlideIn  { from { transform: translateX(18px) scale(0.97); opacity: 0; } to { transform: translateX(0) scale(1); opacity: 1; } }
@keyframes tuSlideOut { from { transform: translateX(0) scale(1); opacity: 1; } to { transform: translateX(18px) scale(0.97); opacity: 0; } }

.truck-upgrade-modal {
  width: 100%;
  max-height: 88vh;
  background: var(--bg-panel);
  border: 1px solid rgba(174,78,197,0.25);
  border-radius: 18px;
  box-shadow: 0 8px 60px rgba(0,0,0,0.7), 0 0 0 1px rgba(255,255,255,0.02) inset;
  display: flex;
  flex-direction: column;
  overflow: hidden;
}

.truck-upgrade-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 16px 18px;
  border-bottom: 1px solid var(--border);
  flex-shrink: 0;
}
.truck-upgrade-title {
  display: flex;
  align-items: center;
  gap: 9px;
  font-size: 13px;
  font-weight: 800;
  letter-spacing: 0.5px;
  color: var(--text-primary);
}
.truck-upgrade-title svg { width: 16px; height: 16px; fill: var(--red); }
.truck-upgrade-close {
  width: 28px; height: 28px;
  border-radius: 8px;
  border: 1px solid var(--border);
  background: rgba(255,255,255,0.04);
  cursor: pointer;
  display: grid; place-items: center;
  transition: all 0.15s;
}
.truck-upgrade-close svg { width: 12px; height: 12px; fill: var(--text-muted); }
.truck-upgrade-close:hover { background: rgba(255,255,255,0.08); border-color: var(--border-hover); }

.truck-upgrade-list {
  overflow-y: auto;
  padding: 14px;
  display: flex;
  flex-direction: column;
  gap: 8px;
}
.truck-upgrade-list::-webkit-scrollbar { width: 4px; }
.truck-upgrade-list::-webkit-scrollbar-thumb { background: rgba(255,255,255,0.08); border-radius: 4px; }


.truck-card-body {
  animation: tuBodyIn 0.22s ease-out both 0.06s;
}
.truck-card-body.tu-body-out {
  animation: tuBodyOut 0.16s ease-in both;
  pointer-events: none;
}
@keyframes tuBodyIn {
  from { opacity: 0; transform: translateY(5px); }
  to   { opacity: 1; transform: translateY(0); }
}
@keyframes tuBodyOut {
  from { opacity: 1; transform: translateY(0) scale(1); }
  to   { opacity: 0; transform: translateY(-8px) scale(0.97); }
}

.truck-card.tu-expanded {
  padding: 0;
  overflow: hidden;
}

.truck-card.tu-closing .tu-header {
  animation: tuHeaderOut 0.18s ease-in both;
}
.truck-card.tu-closing .tu-img-wrap {
  animation: tuImgOut 0.22s ease-in both 0.05s;
}
@keyframes tuHeaderOut { from { opacity: 1; transform: translateY(0);    } to { opacity: 0; transform: translateY(-6px); } }
@keyframes tuImgOut    { from { opacity: 1; transform: scale(1);         } to { opacity: 0; transform: scale(1.04);      } }
@keyframes tuRowOut    { from { opacity: 1; transform: translateY(0);    } to { opacity: 0; transform: translateY(7px);  } }

.tu-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 11px 14px 10px;
  border-bottom: 1px solid var(--border);
  animation: tuHeaderIn 0.28s ease-out both;
}
@keyframes tuHeaderIn {
  from { opacity: 0; transform: translateY(-7px); }
  to   { opacity: 1; transform: translateY(0); }
}
.tu-back {
  display: inline-flex;
  align-items: center;
  gap: 4px;
  padding: 4px 9px;
  border: 1px solid var(--border);
  border-radius: 7px;
  background: rgba(255, 255, 255, 0.04);
  color: var(--text-muted);
  font-family: inherit;
  font-size: 10px;
  font-weight: 700;
  cursor: pointer;
  transition: all 0.15s;
  letter-spacing: 0.3px;
}
.tu-back:hover { background: rgba(255, 255, 255, 0.08); color: var(--text-primary); border-color: var(--border-hover); }
.tu-back svg { width: 12px; height: 12px; fill: currentColor; }
.tu-truck-name {
  font-size: 11px;
  font-weight: 800;
  color: var(--text-primary);
  letter-spacing: 0.4px;
  text-transform: uppercase;
  opacity: 0.7;
}

.tu-img-wrap {
  width: 100%;
  height: 140px;
  overflow: hidden;
  border-radius: 8px;
  background: radial-gradient(ellipse at center, rgba(174,78,197,0.10) 0%, rgba(0,0,0,0.35) 75%);
  animation: tuImgIn 0.45s ease-out both 0.1s;
}
@keyframes tuImgIn {
  from { opacity: 0; transform: scale(1.07); }
  to   { opacity: 1; transform: scale(1); }
}
.tu-img {
  width: 100%;
  height: 100%;
  object-fit: contain;
  object-position: center 80%;
  display: block;
  padding: 14px 20px;
  box-sizing: border-box;
  transform: rotate(-8deg);
  filter: drop-shadow(0 5px 10px rgba(0,0,0,0.45));
  margin-top: 3%;
}

.tu-list {
  padding: 4px 0 8px;
}
.tu-row {
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 8px 12px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.05);
  animation: tuRowIn 0.3s ease-out both;
}
.tu-row:last-child { border-bottom: none; }
.tu-row-icon {
  width: 30px;
  height: 30px;
  border-radius: 8px;
  background: var(--bg-card);
  border: 1px solid var(--border);
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}
.tu-row-icon svg { width: 14px; height: 14px; fill: var(--text-muted); }
.tu-row-info { flex: 1; min-width: 0; }
.tu-row-name {
  font-size: 11px;
  font-weight: 700;
  color: var(--text-primary);
  margin-bottom: 4px;
}
.tu-row-dots { display: flex; gap: 3px; }
.tu-row-benefit {
  font-size: 9px; font-weight: 700; color: var(--text-muted);
  margin-top: 4px; letter-spacing: 0.2px;
}
.tu-dot {
  width: 14px;
  height: 3px;
  border-radius: 2px;
  position: relative;
  overflow: hidden;
}
.tu-dot-off { background: rgba(255, 255, 255, 0.12); }
.tu-dot-on  { background: var(--red); }
.tu-dot-new {
  animation: dotPop 0.35s cubic-bezier(0.34, 1.56, 0.64, 1) forwards;
}
@keyframes dotPop {
  0%   { transform: scaleX(0.3) scaleY(2); opacity: 0.5; }
  100% { transform: scaleX(1)   scaleY(1); opacity: 1; }
}
.tu-row-right {
  display: flex;
  align-items: center;
  gap: 8px;
  flex-shrink: 0;
}
.tu-row-cost {
  font-size: 11px;
  font-weight: 700;
  color: var(--red);
}
.tu-row-btn {
  padding: 5px 10px;
  border-radius: 7px;
  border: 1px solid rgba(174, 78, 197, 0.45);
  background: rgba(174, 78, 197, 0.1);
  color: var(--red);
  font-family: inherit;
  font-size: 9.5px;
  font-weight: 800;
  letter-spacing: 0.5px;
  cursor: pointer;
  transition: background 0.15s, border-color 0.15s, opacity 0.1s;
  outline: none;
}
.tu-row-btn:focus  { outline: none; }
.tu-row-btn:hover  { background: rgba(174, 78, 197, 0.22); border-color: rgba(174, 78, 197, 0.7); }
.tu-row-btn:active { opacity: 0.7; }
.tu-row-btn-max, .tu-row-btn[disabled] { opacity: 0.35; cursor: not-allowed; pointer-events: none; }
.tu-row-btn-unlock { background: rgba(45,212,160,0.1); border-color: rgba(45,212,160,0.45); color: var(--green); }
.tu-row-btn-unlock:hover { background: rgba(45,212,160,0.2); border-color: rgba(45,212,160,0.7); }
.tu-row-icon-locked { opacity: 0.3; }
.tu-row-lock-hint { font-size: 9px; font-weight: 700; color: var(--text-muted); opacity: 0.6; margin-top: 2px; text-transform: uppercase; letter-spacing: 0.4px; }
@keyframes tuRowIn {
  from { opacity: 0; transform: translateY(7px); }
  to   { opacity: 1; transform: translateY(0); }
}
.tu-row-flash { animation: tuRowFlash 0.55s ease forwards; }
@keyframes tuRowFlash {
  0%   { background: rgba(174,78,197,0.28); }
  100% { background: transparent; }
}

