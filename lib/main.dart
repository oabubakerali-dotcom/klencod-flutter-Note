<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="theme-color" content="#E07856">
<title>WarmTasks — الحزمة الكاملة</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700;900&family=Reem+Kufi:wght@500;700&family=JetBrains+Mono:wght@400;600&display=swap" rel="stylesheet">
<style>
/* ═══ نظام التصميم ═══ */
:root{
  --cream:#FDF6E3; --peach:#FFCBA4; --amber:#F4A261;
  --terra:#E07856; --rose:#E76F51; --rust:#C44536;
  --ink:#3D2817; --muted:#8B6F47;
  --glass:rgba(255,255,255,.62);
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
  --font-code:"JetBrains Mono","Consolas",monospace;
}
*{margin:0;padding:0;box-sizing:border-box}
html{scroll-behavior:smooth}
body{
  font-family:var(--font-body); color:var(--ink);
  min-height:100vh; overflow-x:hidden;
  padding:0 0 40px;
  -webkit-font-smoothing:antialiased;
  background:var(--cream); position:relative;
}

/* ═══ خلفية متحركة ═══ */
.bg{position:fixed;inset:0;z-index:-1;overflow:hidden;
  background:
    radial-gradient(ellipse at 20% 10%,#FFE8D1 0%,transparent 55%),
    radial-gradient(ellipse at 80% 90%,#FFD4B8 0%,transparent 55%),
    linear-gradient(135deg,#FFF7EA 0%,#FFEFD6 50%,#FFE4C4 100%);
}
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

/* ═══ Hero ═══ */
.hero{text-align:center;padding:60px 20px 40px;
  animation:fadeDown .8s var(--ease-out) both}
.brand-badge{display:inline-flex;align-items:center;gap:10px;
  padding:10px 20px;margin-bottom:24px;border-radius:999px;
  background:var(--glass);backdrop-filter:blur(20px);
  border:1px solid var(--border);box-shadow:var(--shadow);
  font-family:var(--font-display);font-weight:700;font-size:1rem;
  color:var(--terra)}
.brand-badge svg{width:22px;height:22px}
.hero h1{font-family:var(--font-display);
  font-size:clamp(2.4rem,7vw,4rem);font-weight:700;
  line-height:1.15;letter-spacing:-1.5px;
  background:var(--grad-brand);
  -webkit-background-clip:text;background-clip:text;
  -webkit-text-fill-color:transparent;
  margin-bottom:16px}
.hero p{font-size:clamp(.95rem,2.5vw,1.15rem);color:var(--muted);
  font-weight:600;max-width:560px;margin:0 auto;line-height:1.7}
.hero-tags{display:flex;flex-wrap:wrap;gap:8px;justify-content:center;
  margin-top:24px}
.tag{padding:8px 16px;border-radius:999px;font-size:.82rem;
  font-weight:700;background:var(--glass);
  border:1px solid var(--border);color:var(--terra);
  backdrop-filter:blur(20px)}
@keyframes fadeDown{from{opacity:0;transform:translateY(-24px)}to{opacity:1;transform:none}}

/* ═══ Tabs ═══ */
.tabs-wrap{max-width:1100px;margin:0 auto;padding:0 20px}
.tabs{display:flex;gap:8px;overflow-x:auto;padding:8px;
  background:var(--glass);backdrop-filter:blur(24px) saturate(180%);
  border:1px solid var(--border);border-radius:999px;
  box-shadow:var(--shadow);margin-bottom:24px;
  scrollbar-width:none}
.tabs::-webkit-scrollbar{display:none}
.tab{flex-shrink:0;padding:12px 22px;border:none;border-radius:999px;
  background:transparent;color:var(--muted);cursor:pointer;
  font-family:var(--font-body);font-size:.9rem;font-weight:700;
  transition:all .3s var(--ease-bounce);
  display:flex;align-items:center;gap:8px}
.tab:hover{color:var(--terra);background:rgba(255,255,255,.5)}
.tab.active{background:var(--grad-brand);color:#fff;
  box-shadow:0 8px 20px -6px rgba(224,120,86,.6)}
.tab-icon{font-size:1rem}

/* ═══ Panel ═══ */
.panel{display:none;animation:fadeIn .4s var(--ease-out)}
.panel.active{display:block}
@keyframes fadeIn{from{opacity:0;transform:translateY(12px)}to{opacity:1;transform:none}}

/* ═══ Card ═══ */
.card{background:var(--glass);backdrop-filter:blur(24px) saturate(180%);
  -webkit-backdrop-filter:blur(24px) saturate(180%);
  border:1px solid var(--border);border-radius:var(--r-lg);
  box-shadow:var(--shadow);padding:28px;margin-bottom:20px}

/* ═══ Code Block ═══ */
.code-header{display:flex;align-items:center;justify-content:space-between;
  margin-bottom:16px;flex-wrap:wrap;gap:12px}
.code-title{display:flex;align-items:center;gap:10px}
.file-icon{width:36px;height:36px;border-radius:10px;
  display:grid;place-items:center;font-size:1.1rem;
  background:var(--grad-warm);color:#fff;font-weight:700;
  box-shadow:0 4px 12px rgba(244,162,97,.4)}
.file-name{font-family:var(--font-code);font-size:.95rem;
  font-weight:600;color:var(--ink)}
.file-lang{font-size:.75rem;color:var(--muted);font-weight:600;margin-top:2px}
.copy-btn{padding:10px 18px;border:none;border-radius:10px;
  background:var(--grad-brand);color:#fff;cursor:pointer;
  font-family:var(--font-body);font-size:.85rem;font-weight:700;
  box-shadow:0 6px 16px -4px rgba(224,120,86,.5);
  transition:all .3s var(--ease-bounce)}
.copy-btn:hover{transform:translateY(-2px);
  box-shadow:0 10px 22px -4px rgba(224,120,86,.7)}
.copy-btn:active{transform:scale(.96)}

pre{background:#1e1e1e;color:#d4d4d4;
  padding:20px;border-radius:14px;
  overflow-x:auto;font-family:var(--font-code);
  font-size:.82rem;line-height:1.7;
  direction:ltr;text-align:left;
  border:1px solid rgba(255,255,255,.1);
  box-shadow:inset 0 2px 10px rgba(0,0,0,.3);
  max-height:600px;overflow-y:auto}
pre::-webkit-scrollbar{width:10px;height:10px}
pre::-webkit-scrollbar-track{background:rgba(255,255,255,.05);border-radius:10px}
pre::-webkit-scrollbar-thumb{background:var(--terra);border-radius:10px}
.code-comment{color:#6a9955}
.code-keyword{color:#569cd6}
.code-string{color:#ce9178}
.code-func{color:#dcdcaa}
.code-number{color:#b5cea8}

/* ═══ Info Box ═══ */
.info{display:flex;gap:14px;padding:18px;border-radius:14px;
  background:rgba(244,162,97,.12);
  border-right:4px solid var(--amber);margin-bottom:20px}
.info-icon{font-size:1.5rem;flex-shrink:0}
.info-body{flex:1}
.info-body h4{font-size:.95rem;font-weight:800;color:var(--ink);margin-bottom:6px}
.info-body p{font-size:.85rem;color:var(--muted);line-height:1.7;font-weight:500}

/* ═══ File Tree ═══ */
.tree{font-family:var(--font-code);font-size:.85rem;
  line-height:2;color:var(--muted);direction:ltr;text-align:left;
  padding:20px;background:rgba(255,255,255,.5);
  border-radius:14px;border:1px dashed rgba(224,120,86,.3)}
.tree-folder{color:var(--terra);font-weight:700}
.tree-file{color:var(--ink)}

/* ═══ التطبيق التفاعلي (تبويب Demo) ═══ */
.demo-app{max-width:760px;margin:0 auto}
.demo-header{text-align:center;margin-bottom:24px}
.demo-clock{font-family:var(--font-display);
  font-size:clamp(2.8rem,9vw,4.5rem);font-weight:700;line-height:1;
  letter-spacing:-2px;background:var(--grad-text);
  -webkit-background-clip:text;background-clip:text;
  -webkit-text-fill-color:transparent;
  filter:drop-shadow(0 6px 24px rgba(230,111,81,.35));
  font-variant-numeric:tabular-nums}
.demo-clock .sec{font-size:.5em;opacity:.55;margin-right:4px}
.demo-greeting{margin-top:10px;font-size:1rem;color:var(--muted);font-weight:600}

.demo-stats{display:grid;grid-template-columns:repeat(3,1fr);
  gap:12px;margin-bottom:20px}
.demo-stat{padding:14px 10px;text-align:center;
  background:rgba(255,255,255,.7);border-radius:var(--r-md);
  border:1px solid var(--border);box-shadow:var(--shadow)}
.demo-stat b{display:block;font-family:var(--font-display);
  font-size:1.8rem;font-weight:700;
  background:var(--grad-brand);
  -webkit-background-clip:text;background-clip:text;
  -webkit-text-fill-color:transparent;line-height:1.1}
.demo-stat span{font-size:.75rem;color:var(--muted);font-weight:600}

.demo-form input,.demo-form textarea,.demo-form select{
  width:100%;padding:13px 16px;border:2px solid transparent;
  border-radius:var(--r-sm);background:rgba(255,255,255,.9);
  font-family:var(--font-body);font-size:.95rem;font-weight:600;
  color:var(--ink);margin-bottom:10px;outline:none;
  transition:all .3s var(--ease-out);-webkit-appearance:none}
.demo-form input:focus,.demo-form textarea:focus{
  border-color:var(--terra);background:#fff;
  box-shadow:0 0 0 4px rgba(224,120,86,.15)}
.demo-form textarea{resize:vertical;min-height:60px;line-height:1.6}
.demo-form .row{display:grid;grid-template-columns:1fr 1fr;gap:10px}
.demo-form button{border:none;cursor:pointer;padding:14px;
  border-radius:var(--r-sm);font-family:var(--font-body);
  font-size:.95rem;font-weight:700;color:#fff;
  background:var(--grad-brand);
  box-shadow:0 10px 28px -8px rgba(224,120,86,.55);
  transition:all .3s var(--ease-bounce)}
.demo-form button:hover{transform:translateY(-2px);
  box-shadow:0 16px 36px -8px rgba(224,120,86,.7)}
.demo-form button:active{transform:scale(.96)}
.demo-form button.ghost{background:rgba(255,255,255,.9);
  color:var(--terra);border:2px dashed rgba(224,120,86,.4);
  box-shadow:none}

.demo-task{display:flex;gap:14px;align-items:flex-start;
  padding:16px 18px;margin-bottom:12px;border-radius:var(--r-md);
  background:rgba(255,255,255,.75);
  border:1px solid var(--border);
  border-right:5px solid var(--amber);
  box-shadow:var(--shadow);
  animation:rise .4s var(--ease-out) both;
  transition:all .3s var(--ease-bounce)}
.demo-task:hover{transform:translateX(-3px);box-shadow:var(--shadow-hi)}
.demo-task[data-priority="high"]{border-right-color:var(--rust)}
.demo-task[data-priority="low"]{border-right-color:#10b981}
.demo-task.done{opacity:.55}
.demo-task.done .task-title{text-decoration:line-through}
.demo-task .time-badge{min-width:70px;padding:8px;border-radius:12px;
  background:var(--grad-warm);color:#fff;text-align:center;flex-shrink:0}
.demo-task .time-badge .date{font-size:.68rem;opacity:.92;font-weight:600;margin-bottom:2px}
.demo-task .time-badge .time{font-family:var(--font-display);
  font-size:1rem;font-weight:700;font-variant-numeric:tabular-nums}
.demo-task .task-body{flex:1;min-width:0}
.demo-task .task-title{font-size:1rem;font-weight:700;color:var(--ink);
  margin-bottom:3px;line-height:1.4;word-break:break-word}
.demo-task .task-note{font-size:.82rem;color:var(--muted);
  line-height:1.6;font-weight:500;white-space:pre-wrap;word-break:break-word}
.demo-task .acts{display:flex;flex-direction:column;gap:6px}
.demo-task .acts button{width:36px;height:36px;padding:0;
  border:none;border-radius:10px;cursor:pointer;
  background:rgba(255,255,255,.92);color:var(--terra);
  box-shadow:0 2px 8px rgba(0,0,0,.06);font-size:.9rem;
  transition:transform .2s}
.demo-task .acts button:hover{transform:scale(1.1)}
@keyframes rise{from{opacity:0;transform:translateY(24px) scale(.97)}to{opacity:1;transform:none}}

.demo-empty{text-align:center;padding:40px 24px;
  background:rgba(255,255,255,.6);border-radius:var(--r-lg);
  border:1px solid var(--border)}
.demo-empty .emoji{font-size:3.5rem;margin-bottom:12px;display:block}
.demo-empty h3{font-family:var(--font-display);font-size:1.15rem;
  font-weight:700;color:var(--ink);margin-bottom:6px}
.demo-empty p{font-size:.9rem;color:var(--muted);line-height:1.7}

/* ═══ Toast ═══ */
.toast{position:fixed;top:24px;left:50%;transform:translate(-50%,-200%);
  padding:14px 24px;border-radius:var(--r-md);
  background:var(--grad-deep);color:#fff;font-weight:700;
  box-shadow:0 20px 50px -12px rgba(196,69,54,.6);
  z-index:999;max-width:min(92vw,460px);
  transition:transform .6s var(--ease-bounce);
  font-size:.9rem;display:flex;align-items:center;gap:10px}
.toast.show{transform:translate(-50%,0)}

/* ═══ Responsive ═══ */
@media(max-width:640px){
  .hero{padding:40px 16px 24px}
  .card{padding:20px}
  .tabs{padding:6px}
  .tab{padding:10px 16px;font-size:.82rem}
  .demo-form .row{grid-template-columns:1fr}
  pre{font-size:.75rem;padding:14px}
  .demo-stats{gap:8px}
  .demo-stat{padding:12px 6px}
  .demo-stat b{font-size:1.5rem}
}
@media(prefers-reduced-motion:reduce){
  *,*::before,*::after{animation-duration:.01ms!important;transition-duration:.01ms!important}
}
</style>
</head>
<body>

<div class="bg">
  <div class="blob blob-1"></div>
  <div class="blob blob-2"></div>
  <div class="blob blob-3"></div>
</div>
<div class="noise"></div>

<!-- ═══ Hero ═══ -->
<header class="hero">
  <div class="brand-badge">
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
      <path d="M17 8h1a4 4 0 1 1 0 8h-1"/>
      <path d="M3 8h14v9a4 4 0 0 1-4 4H7a4 4 0 0 1-4-4Z"/>
      <line x1="6" y1="2" x2="6" y2="4"/>
      <line x1="10" y1="2" x2="10" y2="4"/>
      <line x1="14" y1="2" x2="14" y2="4"/>
    </svg>
    <span>WarmTasks</span>
  </div>
  <h1>الحزمة الكاملة</h1>
  <p>كل أكواد المشروع في مستند واحد — Python · HTML · JavaScript · Flutter · Java · PWA</p>
  <div class="hero-tags">
    <span class="tag">🐍 Python/FastAPI</span>
    <span class="tag">🌐 HTML5</span>
    <span class="tag">⚡ JavaScript</span>
    <span class="tag">📱 Flutter</span>
    <span class="tag">☕ Java</span>
    <span class="tag">🚀 PWA</span>
  </div>
</header>

<!-- ═══ Tabs ═══ -->
<div class="tabs-wrap">
  <div class="tabs">
    <button class="tab active" data-panel="demo">
      <span class="tab-icon">🎮</span> جرّب الآن
    </button>
    <button class="tab" data-panel="structure">
      <span class="tab-icon">📁</span> البنية
    </button>
    <button class="tab" data-panel="python">
      <span class="tab-icon">🐍</span> Python
    </button>
    <button class="tab" data-panel="web">
      <span class="tab-icon">🌐</span> Web
    </button>
    <button class="tab" data-panel="flutter">
      <span class="tab-icon">📱</span> Flutter
    </button>
    <button class="tab" data-panel="java">
      <span class="tab-icon">☕</span> Java
    </button>
    <button class="tab" data-panel="pwa">
      <span class="tab-icon">🚀</span> PWA
    </button>
  </div>
</div>

<div class="tabs-wrap">

  <!-- ═══════════════════════════════════════════════════
       TAB 1: DEMO — تطبيق يعمل الآن
       ═══════════════════════════════════════════════════ -->
  <div class="panel active" id="panel-demo">
    <div class="info">
      <div class="info-icon">🎮</div>
      <div class="info-body">
        <h4>هذا تطبيق حقيقي يعمل الآن</h4>
        <p>كل ما تراه هنا يعمل فعلياً — أضف مهمة، ضع منبهاً، وستصلك الإشعارات. البيانات تُحفظ في متصفحك. لا يحتاج خادم ولا إعداد.</p>
      </div>
    </div>

    <div class="demo-app">
      <div class="demo-header">
        <div class="demo-clock" id="demoClock">--:--<span class="sec">:--</span></div>
        <div class="demo-greeting" id="demoGreet">☀️ أهلاً بك</div>
      </div>

      <div class="demo-stats">
        <div class="demo-stat"><b id="dTotal">0</b><span>📋 المجموع</span></div>
        <div class="demo-stat"><b id="dDone">0</b><span>✅ مكتملة</span></div>
        <div class="demo-stat"><b id="dPend">0</b><span>⏳ قيد الانتظار</span></div>
      </div>

      <div class="card demo-form">
        <input id="dTitle" placeholder="✍️ ما الذي تريد إنجازه؟" maxlength="120">
        <textarea id="dNote" placeholder="📝 ملاحظة قصيرة (اختياري)..." maxlength="500"></textarea>
        <div class="row">
          <input id="dDue" type="datetime-local">
          <select id="dPrio">
            <option value="normal">⚪ عادية</option>
            <option value="high">🔴 عاجلة</option>
            <option value="low">🟢 منخفضة</option>
          </select>
        </div>
        <div class="row">
          <button id="dAddBtn">➕ إضافة</button>
          <button class="ghost" id="dNotifBtn">🔔 تفعيل المنبه</button>
        </div>
      </div>

      <div id="dList"></div>
    </div>
  </div>

  <!-- ═══════════════════════════════════════════════════
       TAB 2: STRUCTURE — بنية المشروع
       ═══════════════════════════════════════════════════ -->
  <div class="panel" id="panel-structure">
    <div class="card">
      <h3 style="font-family:var(--font-display);margin-bottom:16px;color:var(--ink)">📁 بنية المشروع الكامل</h3>
      <div class="tree">
<span class="tree-folder">WarmTasks/</span>
├── <span class="tree-folder">backend/</span>                    ← خادم Python
│   ├── <span class="tree-file">main.py</span>                 (FastAPI + WebSocket)
│   ├── <span class="tree-file">requirements.txt</span>       (المكتبات)
│   └── <span class="tree-file">tasks.db</span>               (يُولّد تلقائياً)
│
├── <span class="tree-folder">web/</span>                        ← واجهة الويب
│   ├── <span class="tree-file">index.html</span>             (التطبيق الكامل)
│   ├── <span class="tree-file">manifest.json</span>          (PWA)
│   ├── <span class="tree-file">sw.js</span>                  (Service Worker)
│   ├── <span class="tree-file">icon-192.png</span>           (أيقونة)
│   └── <span class="tree-file">icon-512.png</span>           (أيقونة كبيرة)
│
├── <span class="tree-folder">app/</span>                        ← تطبيق Flutter
│   ├── <span class="tree-file">pubspec.yaml</span>           (الاعتماديات)
│   ├── <span class="tree-file">lib/main.dart</span>           (الكود الرئيسي)
│   └── <span class="tree-folder">android/</span>
│       └── <span class="tree-folder">app/src/main/java/com/example/warmtasks/</span>
│           ├── <span class="tree-file">MainActivity.java</span>   (AlarmManager)
│           └── <span class="tree-file">AlarmReceiver.java</span>  (مستقبل المنبه)
│
└── <span class="tree-file">README.md</span>                   (دليل التشغيل)
      </div>
    </div>

    <div class="card">
      <h3 style="font-family:var(--font-display);margin-bottom:16px;color:var(--ink)">🎯 لكل لغة دور محدد</h3>
      <div class="info">
        <div class="info-icon">🐍</div>
        <div class="info-body">
          <h4>Python — الخادم والجدولة</h4>
          <p>يُشغّل المنبهات بدقة، يبثّها عبر WebSocket، ويخزّن المهام في SQLite.</p>
        </div>
      </div>
      <div class="info" style="background:rgba(16,185,129,.1);border-right-color:#10b981">
        <div class="info-icon">🌐</div>
        <div class="info-body">
          <h4>HTML + JavaScript — واجهة الويب</h4>
          <p>تنتشر بالرابط فوراً، تعمل على أي جهاز، وقابلة للتثبيت كـ PWA.</p>
        </div>
      </div>
      <div class="info" style="background:rgba(99,102,241,.1);border-right-color:#6366f1">
        <div class="info-icon">📱</div>
        <div class="info-body">
          <h4>Flutter — تطبيق الموبايل</h4>
          <Positioned