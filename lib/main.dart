<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=5">
<meta name="theme-color" content="#E07856">
<title>WarmTasks — مهامي الدافئة</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700;900&family=Reem+Kufi:wght@500;700&display=swap" rel="stylesheet">
<style>
/* ═══════════════════════════════════════════════════
   WARMTASTS · ALL-IN-ONE · v4.0
   ═══════════════════════════════════════════════════ */
:root{
  --cream:#FDF6E3; --sand:#F4E4C1; --peach:#FFCBA4;
  --amber:#F4A261; --terra:#E07856; --rose:#E76F51;
  --rust:#C44536; --ink:#3D2817; --muted:#8B6F47;
  --glass:rgba(255,255,255,.62);
  --glass-hi:rgba(255,255,255,.85);
  --border:rgba(255,255,255,.85);
  --shadow:0 20px 50px -15px rgba(196,69,54,.28);
  --shadow-hi:0 30px 80px -20px rgba(196,69,54,.40);
  --r-sm:14px; --r-md:20px; --r-lg:28px;
  --ease-bounce:cubic-bezier(0.34,1.56,0.64,1);
  --ease-out:cubic-bezier(0.16,1,0.3,1);
  --grad-brand:linear-gradient(135deg,#F4A261 0%,#E07856 50%,#E76F51 100%);
  --grad-warm:linear-gradient(135deg,#FFCBA4 0%,#F4A261 100%);
  --grad-deep:linear-gradient(135deg,#E07856 0%,#C44536 100%);
  --grad-text:linear-gradient(135deg,#fff 0%,#FFE4C4 100%);
  --font-display:"Reem Kufi","Cairo",sans-serif;
  --font-body:"Cairo",sans-serif;
}
*{margin:0;padding:0;box-sizing:border-box}
html{scroll-behavior:smooth}
body{
  font-family:var(--font-body); color:var(--ink);
  min-height:100vh; overflow-x:hidden;
  padding:24px 16px 160px;
  -webkit-font-smoothing:antialiased;
  background:var(--cream); position:relative;
}

/* ═══ Animated Background ═══ */
.bg{position:fixed;inset:0;z-index:-1;overflow:hidden;
  background:
    radial-gradient(ellipse at 20% 10%,#FFE8D1 0%,transparent 55%),
    radial-gradient(ellipse at 80% 90%,#FFD4B8 0%,transparent 55%),
    linear-gradient(135deg,#FFF7EA 0%,#FFEFD6 50%,#FFE4C4 100%);
  transition:background .8s ease;
}
body[data-theme="sunset"] .bg{background:
  radial-gradient(ellipse at 20% 10%,#FFC7C7 0%,transparent 55%),
  radial-gradient(ellipse at 80% 90%,#FF9A8B 0%,transparent 55%),
  linear-gradient(135deg,#FFE5E5 0%,#FFB8B8 50%,#FF9A8B 100%);}
body[data-theme="amber"] .bg{background:
  radial-gradient(ellipse at 20% 10%,#FFF0B8 0%,transparent 55%),
  radial-gradient(ellipse at 80% 90%,#FDCB6E 0%,transparent 55%),
  linear-gradient(135deg,#FFF9E0 0%,#FFE8A3 50%,#FDCB6E 100%);}
body[data-theme="rose"] .bg{background:
  radial-gradient(ellipse at 20% 10%,#FFD6E8 0%,transparent 55%),
  radial-gradient(ellipse at 80% 90%,#F8A5C2 0%,transparent 55%),
  linear-gradient(135deg,#FFF0F6 0%,#FFD0E0 50%,#F8A5C2 100%);}

.blob{position:absolute;border-radius:50%;filter:blur(80px);opacity:.55;will-change:transform}
.blob-1{width:520px;height:520px;top:-180px;right:-120px;
  background:radial-gradient(circle,#FFCBA4 0%,transparent 70%);
  animation:float1 22s ease-in-out infinite}
.blob-2{width:620px;height:620px;bottom:-220px;left:-180px;
  background:radial-gradient(circle,#F4A261 0%,transparent 70%);
  animation:float2 26s ease-in-out infinite}
.blob-3{width:380px;height:380px;top:45%;left:45%;
  background:radial-gradient(circle,#FFB088 0%,transparent 70%);
  animation:float3 30s ease-in-out infinite}
@keyframes float1{50%{transform:translate(-60px,80px) scale(1.1)}}
@keyframes float2{50%{transform:translate(70px,-60px) scale(1.08)}}
@keyframes float3{50%{transform:translate(-40px,40px) scale(1.15);opacity:.6}}

.noise{position:fixed;inset:0;z-index:-1;pointer-events:none;opacity:.035;
  background-image:url("data:image/svg+xml,%3Csvg viewBox='0 0 400 400' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='3'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)'/%3E%3C/svg%3E")}

.container{max-width:760px;margin:0 auto}

/* ═══ Status Badge ═══ */
.conn{position:fixed;top:20px;left:20px;z-index:50;
  display:flex;align-items:center;gap:8px;
  padding:10px 16px;border-radius:999px;
  background:var(--glass);backdrop-filter:blur(24px) saturate(180%);
  -webkit-backdrop-filter:blur(24px) saturate(180%);
  border:1px solid var(--border);box-shadow:var(--shadow);
  font-size:.78rem;font-weight:700}
.conn .dot{width:9px;height:9px;border-radius:50%;
  background:#10b981;box-shadow:0 0 0 4px rgba(16,185,129,.2);animation:pulse 2s infinite}
@keyframes pulse{50%{opacity:.5;box-shadow:0 0 0 6px rgba(16,185,129,.1)}}

/* ═══ Header ═══ */
header{text-align:center;margin-bottom:32px;animation:fadeDown .8s var(--ease-out) both}
.brand{display:inline-flex;align-items:center;gap:10px;
  padding:8px 18px;margin-bottom:20px;border-radius:999px;
  background:var(--glass);backdrop-filter:blur(20px);
  border:1px solid var(--border);box-shadow:var(--shadow);
  font-family:var(--font-display);font-weight:700;font-size:.95rem;
  color:var(--terra)}
.brand svg{width:20px;height:20px}
.clock{font-family:var(--font-display);
  font-size:clamp(3.2rem,10vw,5rem);font-weight:700;line-height:1;
  letter-spacing:-2px;background:var(--grad-text);
  -webkit-background-clip:text;background-clip:text;
  -webkit-text-fill-color:transparent;
  filter:drop-shadow(0 6px 24px rgba(230,111,81,.35));
  font-variant-numeric:tabular-nums}
.clock .sec{font-size:.5em;opacity:.55;margin-right:4px}
.greeting{margin-top:12px;font-size:1.05rem;color:var(--muted);font-weight:600}
@keyframes fadeDown{from{opacity:0;transform:translateY(-24px)}to{opacity:1;transform:none}}

/* ═══ Glass Card ═══ */
.card{background:var(--glass);backdrop-filter:blur(24px) saturate(180%);
  -webkit-backdrop-filter:blur(24px) saturate(180%);
  border:1px solid var(--border);border-radius:var(--r-lg);
  box-shadow:var(--shadow);padding:24px;
  transition:box-shadow .4s var(--ease-out);
  animation:rise .55s var(--ease-out) both}
@keyframes rise{from{opacity:0;transform:translateY(24px) scale(.97)}to{opacity:1;transform:none}}

/* ═══ Stats ═══ */
.stats{display:grid;grid-template-columns:repeat(3,1fr);
  gap:16px;margin-bottom:24px}
.stat{background:var(--glass);backdrop-filter:blur(24px) saturate(180%);
  border:1px solid var(--border);border-radius:var(--r-md);
  box-shadow:var(--shadow);padding:16px;text-align:center;
  position:relative;overflow:hidden;
  transition:transform .35s var(--ease-bounce),box-shadow .35s;
  animation:rise .55s var(--ease-out) both}
.stat:nth-child(1){animation-delay:.05s}
.stat:nth-child(2){animation-delay:.10s}
.stat:nth-child(3){animation-delay:.15s}
.stat:hover{transform:translateY(-4px);box-shadow:var(--shadow-hi)}
.stat::before{content:"";position:absolute;top:0;right:0;left:0;height:3px;
  background:var(--grad-brand);opacity:.85}
.stat .icon{font-size:1.3rem;margin-bottom:4px;display:block}
.stat b{display:block;font-family:var(--font-display);font-size:2rem;
  font-weight:700;background:var(--grad-brand);
  -webkit-background-clip:text;background-clip:text;
  -webkit-text-fill-color:transparent;line-height:1.1;
  font-variant-numeric:tabular-nums}
.stat span{font-size:.78rem;color:var(--muted);font-weight:600}

/* ═══ Progress ═══ */
.progress-card{text-align:center;margin-bottom:24px;padding:32px 24px;animation-delay:.2s}
.progress-title{font-family:var(--font-display);font-size:1.15rem;
  font-weight:700;color:var(--ink);margin-bottom:16px}
.ring-wrap{position:relative;width:150px;height:150px;margin:0 auto}
.ring-wrap svg{transform:rotate(-90deg);display:block}
.ring-wrap circle{fill:none;stroke-width:10;stroke-linecap:round}
.ring-bg{stroke:rgba(230,111,81,.12)}
.ring-fg{stroke:url(#ringGrad);stroke-dasharray:408;stroke-dashoffset:408;
  transition:stroke-dashoffset 1.2s var(--ease-out);
  filter:drop-shadow(0 4px 12px rgba(230,111,81,.5))}
.ring-center{position:absolute;inset:0;display:grid;place-items:center;align-content:center}
.ring-pct{font-family:var(--font-display);font-size:2.2rem;
  font-weight:700;background:var(--grad-brand);
  -webkit-background-clip:text;background-clip:text;
  -webkit-text-fill-color:transparent;line-height:1;
  font-variant-numeric:tabular-nums}
.ring-label{font-size:.75rem;color:var(--muted);margin-top:4px;font-weight:600}

/* ═══ Form ═══ */
.form-card{margin-bottom:24px;animation-delay:.25s}
.form-title{font-family:var(--font-display);font-size:1.2rem;
  font-weight:700;color:var(--ink);margin-bottom:16px;
  display:flex;align-items:center;gap:8px}
input,textarea,select{width:100%;padding:14px 18px;
  border:2px solid transparent;border-radius:var(--r-sm);
  background:rgba(255,255,255,.88);font-family:var(--font-body);
  font-size:.98rem;font-weight:600;color:var(--ink);
  margin-bottom:10px;outline:none;
  transition:all .3s var(--ease-out);-webkit-appearance:none}
input::placeholder,textarea::placeholder{color:var(--muted);opacity:.6;font-weight:500}
input:focus,textarea:focus,select:focus{
  border-color:var(--terra);background:#fff;
  box-shadow:0 0 0 4px rgba(224,120,86,.15)}
textarea{resize:vertical;min-height:70px;line-height:1.6}
select{cursor:pointer;
  background-image:url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='%23E07856'%3E%3Cpath d='M7 10l5 5 5-5z'/%3E%3C/svg%3E");
  background-repeat:no-repeat;background-position:left 14px center;
  background-size:18px;padding-left:44px}
.row{display:grid;grid-template-columns:1fr 1fr;gap:10px}

/* ═══ Buttons ═══ */
button{border:none;cursor:pointer;padding:15px 22px;
  border-radius:var(--r-sm);font-family:var(--font-body);
  font-size:.98rem;font-weight:700;color:#fff;
  background:var(--grad-brand);
  box-shadow:0 10px 28px -8px rgba(224,120,86,.55);
  transition:all .3s var(--ease-bounce);
  position:relative;overflow:hidden;
  display:inline-flex;align-items:center;justify-content:center;gap:8px}
button:hover{transform:translateY(-2px);
  box-shadow:0 16px 36px -8px rgba(224,120,86,.7)}
button:active{transform:scale(.96)}
button:disabled{opacity:.6;cursor:not-allowed;transform:none}
button.ghost{background:var(--glass-hi);color:var(--terra);
  border:2px dashed rgba(224,120,86,.4);box-shadow:none}
button.ghost:hover{background:#fff;border-style:solid}

/* ═══ Task List ═══ */
.tasks-header{display:flex;align-items:center;justify-content:space-between;
  margin-bottom:16px;padding:0 8px}
.tasks-title{font-family:var(--font-display);font-size:1.15rem;
  font-weight:700;color:var(--ink)}
.tasks-count{font-size:.85rem;color:var(--muted);font-weight:600;
  padding:4px 12px;border-radius:999px;
  background:var(--glass);border:1px solid var(--border)}

.task{display:flex;gap:16px;align-items:flex-start;
  padding:18px 20px;margin-bottom:12px;border-radius:var(--r-md);
  background:var(--glass);backdrop-filter:blur(24px) saturate(180%);
  border:1px solid var(--border);border-right:5px solid var(--amber);
  box-shadow:var(--shadow);transition:all .4s var(--ease-bounce);
  animation:rise .5s var(--ease-out) both;position:relative}
.task:hover{transform:translateX(-4px);box-shadow:var(--shadow-hi)}
.task[data-priority="high"]{border-right-color:var(--rust)}
.task[data-priority="low"]{border-right-color:#10b981}
.task.done{opacity:.55}
.task.done .task-title{text-decoration:line-through}
.time-badge{min-width:78px;padding:10px 8px;border-radius:var(--r-sm);
  background:var(--grad-warm);color:#fff;text-align:center;
  flex-shrink:0;box-shadow:0 6px 16px -4px rgba(244,162,97,.5)}
.time-badge .date{font-size:.7rem;opacity:.92;font-weight:600;margin-bottom:2px}
.time-badge .time{font-family:var(--font-display);font-size:1.05rem;
  font-weight:700;letter-spacing:-.5px;font-variant-numeric:tabular-nums}
.task-body{flex:1;min-width:0;padding-top:2px}
.task-title{font-size:1.05rem;font-weight:700;color:var(--ink);
  margin-bottom:4px;line-height:1.4;word-break:break-word}
.task-note{font-size:.88rem;color:var(--muted);line-height:1.6;
  font-weight:500;white-space:pre-wrap;word-break:break-word}
.task-actions{display:flex;flex-direction:column;gap:6px;flex-shrink:0}
.task-actions button{width:40px;height:40px;padding:0;min-width:0;
  border-radius:10px;background:rgba(255,255,255,.92);
  color:var(--terra);box-shadow:0 2px 8px rgba(0,0,0,.06);font-size:1rem}
.task-actions button:hover{background:#fff;
  transform:scale(1.1) rotate(-4deg);
  box-shadow:0 6px 16px rgba(224,120,86,.3)}

/* ═══ Empty ═══ */
.empty{text-align:center;padding:48px 24px;background:var(--glass);
  backdrop-filter:blur(24px);border:1px solid var(--border);
  border-radius:var(--r-lg);box-shadow:var(--shadow);
  animation:rise .55s var(--ease-out) both}
.empty svg{width:140px;height:140px;margin:0 auto 16px;display:block;
  animation:gentleFloat 4s ease-in-out infinite}
@keyframes gentleFloat{50%{transform:translateY(-8px)}}
.empty h3{font-family:var(--font-display);font-size:1.25rem;
  font-weight:700;color:var(--ink);margin-bottom:8px}
.empty p{font-size:.95rem;color:var(--muted);line-height:1.7;font-weight:500}

/* ═══ Toast ═══ */
#toast{position:fixed;top:24px;left:50%;transform:translate(-50%,-180%);
  padding:16px 26px;border-radius:var(--r-md);
  background:var(--grad-deep);color:#fff;font-weight:700;font-size:.95rem;
  box-shadow:0 20px 50px -12px rgba(196,69,54,.6);z-index:999;
  max-width:min(92vw,460px);transition:transform .6s var(--ease-bounce);
  text-align:center;display:flex;align-items:center;gap:10px}
#toast.show{transform:translate(-50%,0)}
#toast::before{content:"🔔";font-size:1.3rem}

/* ═══ Theme Switcher ═══ */
.themes{position:fixed;bottom:20px;left:50%;transform:translateX(-50%);
  display:flex;gap:10px;align-items:center;
  padding:10px 16px;border-radius:999px;
  background:var(--glass);backdrop-filter:blur(24px) saturate(180%);
  border:1px solid var(--border);box-shadow:var(--shadow);z-index:100}
.themes span{font-size:.78rem;color:var(--muted);font-weight:700}
.theme-dot{width:32px;height:32px;border-radius:50%;
  border:2px solid #fff;cursor:pointer;
  box-shadow:0 2px 8px rgba(0,0,0,.15);
  transition:transform .3s var(--ease-bounce)}
.theme-dot:hover{transform:scale(1.2)}
.theme-dot.active{outline:3px solid var(--terra);outline-offset:2px}
.theme-dot[data-t="peach"]{background:linear-gradient(135deg,#FFD89B,#FFB88C)}
.theme-dot[data-t="sunset"]{background:linear-gradient(135deg,#FF9A8B,#FF6A88)}
.theme-dot[data-t="amber"]{background:linear-gradient(135deg,#F6D365,#FDA085)}
.theme-dot[data-t="rose"]{background:linear-gradient(135deg,#FBC2EB,#F8A5C2)}

/* ═══ Responsive ═══ */
@media(max-width:560px){
  body{padding:16px 12px 140px}
  .card,.stat,.empty{border-radius:var(--r-md)}
  .stats{gap:8px}
  .stat{padding:12px 8px}
  .stat b{font-size:1.6rem}
  .row{grid-template-columns:1fr}
  .ring-wrap{width:130px;height:130px}
  .ring-pct{font-size:1.8rem}
  .task{padding:14px 14px;gap:12px}
  .time-badge{min-width:64px;padding:8px 6px}
  .time-badge .time{font-size:.92rem}
  .conn{font-size:.7rem;padding:8px 12px}
  .themes{padding:8px 12px;gap:8px}
  .theme-dot{width:28px;height:28px}
}
@media(prefers-reduced-motion:reduce){
  *,*::before,*::after{animation-duration:.01ms!important;transition-duration:.01ms!important}
}
</style>
</head>
<body data-theme="peach">

<div class="bg">
  <div class="blob blob-1"></div>
  <div class="blob blob-2"></div>
  <div class="blob blob-3"></div>
</div>
<div class="noise"></div>

<div class="conn"><span class="dot"></span><span>محلي</span></div>

<div class="container">
  <header>
    <div class="brand">
      <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
        <path d="M17 8h1a4 4 0 1 1 0 8h-1"/>
        <path d="M3 8h14v9a4 4 0 0 1-4 4H7a4 4 0 0 1-4-4Z"/>
        <line x1="6" y1="2" x2="6" y2="4"/>
        <line x1="10" y1="2" x2="10" y2="4"/>
        <line x1="14" y1="2" x2="14" y2="4"/>
      </svg>
      <span>WarmTasks</span>
    </div>
    <div class="clock" id="clock">--:--<span class="sec">:--</span></div>
    <div class="greeting" id="greet">☀️ أهلاً بك</div>
  </header>

  <section class="stats">
    <div class="stat"><span class="icon">📋</span><b id="sTotal">0</b><span>المجموع</span></div>
    <div class="stat"><span class="icon">✅</span><b id="sDone">0</b><span>مكتملة</span></div>
    <div class="stat"><span class="icon">⏳</span><b id="sPend">0</b><span>قيد الانتظار</span></div>
  </section>

  <section class="card progress-card">
    <div class="progress-title">📊 تقدّمك اليوم</div>
    <div class="ring-wrap">
      <svg width="150" height="150" viewBox="0 0 150 150">
        <defs>
          <linearGradient id="ringGrad" x1="0" y1="0" x2="1" y2="1">
            <stop offset="0%" stop-color="#F4A261"/>
            <stop offset="50%" stop-color="#E07856"/>
            <stop offset="100%" stop-color="#C44536"/>
          </linearGradient>
        </defs>
        <circle class="ring-bg" cx="75" cy="75" r="65"/>
        <circle class="ring-fg" id="ring" cx="75" cy="75" r="65"/>
      </svg>
      <div class="ring-center">
        <div class="ring-pct" id="ringPct">0%</div>
        <div class="ring-label">منجز</div>
      </div>
    </div>
  </section>

  <section class="card form-card">
    <div class="form-title">✨ أضف مهمة جديدة</div>
    <input id="title" placeholder="✍️ ما الذي تريد إنجازه؟" maxlength="120">
    <textarea id="note" placeholder="📝 ملاحظة قصيرة (اختياري)..." maxlength="500"></textarea>
    <div class="row">
      <input id="due" type="datetime-local">
      <select id="prio">
        <option value="normal">⚪ أولوية عادية</option>
        <option value="high">🔴 عاجلة</option>
        <option value="low">🟢 منخفضة</option>
      </select>
    </div>
    <div class="row">
      <button id="addBtn">➕ إضافة المهمة</button>
      <button class="ghost" id="notifBtn">🔔 تفعيل المنبه</button>
    </div>
  </section>

  <div class="tasks-header">
    <div class="tasks-title">📌 مهامك</div>
    <div class="tasks-count" id="taskCount">0 مهمة</div>
  </div>

  <section id="list"></section>
</div>

<div class="themes">
  <span>🎨</span>
  <div class="theme-dot active" data-t="peach" title="خوخ"></div>
  <div class="theme-dot" data-t="sunset" title="غروب"></div>
  <div class="theme-dot" data-t="amber" title="عنبري"></div>
  <div class="theme-dot" data-t="rose" title="وردي"></div>
</div>

<div id="toast"></div>

<script>
/* ═══════════════════════════════════════════════════
   WARMTASTS · APP LOGIC v4.0
   كل شيء محلي — لا خادم، لا API
   ═══════════════════════════════════════════════════ */

const STORAGE_KEY = 'warmtasks-v4';
const THEME_KEY   = 'warmtasks-theme';
const CHECK_INTERVAL = 5000;

let tasks = [];
let audioCtx = null;

const $ = (s) => document.querySelector(s);
const pad = (n) => String(n).padStart(2, '0');
const esc = (s) => (s || '').replace(/[&<>"']/g,
  (c) => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
const isoLocal = (d) =>
  `${d.getFullYear()}-${pad(d.getMonth()+1)}-${pad(d.getDate())}` +
  `T${pad(d.getHours())}:${pad(d.getMinutes())}`;

/* ─── Storage ─── */
function load(){
  try {
    tasks = JSON.parse(localStorage.getItem(STORAGE_KEY) || '[]');
  } catch { tasks = []; }
}
function save(){
  try {
    localStorage.setItem(STORAGE_KEY, JSON.stringify(tasks));
  } catch (e) { toast('⚠️ تعذّر الحفظ'); }
}

/* ─── Clock ─── */
function tickClock(){
  const d = new Date();
  $('#clock').innerHTML =
    `${pad(d.getHours())}:${pad(d.getMinutes())}<span class="sec">:${pad(d.getSeconds())}</span>`;
  const h = d.getHours();
  $('#greet').textContent =
    h < 5  ? '🌙 ليلة هادئة' :
    h < 12 ? '🌅 صباح الخير' :
    h < 17 ? '☀️ مساء الخير' :
    h < 21 ? '🌆 أمسية طيبة' : '🌙 تصبح على خير';
}
setInterval(tickClock, 1000); tickClock();

/* ─── Sound ─── */
function beep(){
  try {
    audioCtx = audioCtx || new (window.AudioContext || window.webkitAudioContext)();
    const t =