# Ai-MONEY-COMMAND-CENTER-
<!DOCTYPE html>
<html lang="en" class="dark">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="theme-color" content="#07090e" />
  <title>Neural Core • AI Command Center & Revenue Ecosystem</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500;600;700&display=swap" rel="stylesheet" />
  <script>
    tailwind.config = {
      darkMode: 'class',
      theme: {
        extend: {
          fontFamily: {
            sans: ['Inter', 'sans-serif'],
            mono: ['JetBrains Mono', 'monospace'],
          },
          boxShadow: {
            'neon-cyan': '0 0 18px rgba(0, 240, 255, 0.25)',
            'neon-emerald': '0 0 18px rgba(16, 185, 129, 0.25)',
            'neon-amber': '0 0 18px rgba(245, 158, 11, 0.22)',
          }
        }
      }
    };
  </script>
  <style>
    body {
      background-color: #07090e;
      color: #e2e8f0;
      font-family: 'Inter', sans-serif;
      overflow-x: hidden;
      -webkit-tap-highlight-color: transparent;
    }

    /* Cyber Grid Canvas Backdrop */
    .cyber-grid {
      background-size: 26px 26px;
      background-image:
        linear-gradient(to right, rgba(0, 240, 255, 0.045) 1px, transparent 1px),
        linear-gradient(to bottom, rgba(0, 240, 255, 0.045) 1px, transparent 1px);
    }

    /* Retro Pixel-HUD Scanlines for Cyber Floorplan Mode */
    .scanlines {
      background: linear-gradient(
        rgba(18, 16, 16, 0) 50%,
        rgba(0, 0, 0, 0.38) 50%
      );
      background-size: 100% 4px;
    }

    /* Custom Scrollbars */
    ::-webkit-scrollbar {
      width: 6px;
      height: 6px;
    }
    ::-webkit-scrollbar-track {
      background: #07090e;
    }
    ::-webkit-scrollbar-thumb {
      background: #1e293b;
      border-radius: 9999px;
    }
    ::-webkit-scrollbar-thumb:hover {
      background: #334155;
    }
  </style>
</head>
<body class="min-h-screen flex flex-col pb-24 md:pb-10 selection:bg-cyan-500/30 selection:text-cyan-200">

  <!-- Toast Notification Container -->
  <div id="toast-container" class="fixed top-4 right-4 z-50 flex flex-col gap-2 max-w-sm w-full pointer-events-none px-4 md:px-0"></div>

  <!-- 1. TOP COMMAND HEADER -->
  <header class="sticky top-0 z-40 bg-[#07090e]/90 backdrop-blur-md border-b border-slate-800/80">
    <div class="max-w-6xl mx-auto px-4 h-16 flex items-center justify-between gap-2 sm:gap-4">
      <!-- Brand + NEURAL CORE • ONLINE Status -->
      <div class="flex items-center gap-3 min-w-0">
        <div class="w-10 h-10 rounded-xl bg-cyan-950/70 border border-cyan-500/40 flex items-center justify-center shadow-neon-cyan relative shrink-0">
          <svg class="w-5 h-5 text-cyan-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.8" d="M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z" />
          </svg>
          <span class="absolute -top-0.5 -right-0.5 w-2.5 h-2.5 rounded-full bg-emerald-400 animate-ping"></span>
          <span class="absolute -top-0.5 -right-0.5 w-2.5 h-2.5 rounded-full bg-emerald-400"></span>
        </div>
        <div class="truncate">
          <div class="flex items-center gap-2">
            <h1 class="font-bold text-sm sm:text-lg tracking-tight text-white truncate">Command Center</h1>
            <span id="header-mode-pill" class="text-[10px] font-mono uppercase px-2 py-0.5 rounded-full bg-amber-500/15 text-amber-400 border border-amber-500/30">DEMO</span>
          </div>
          <p class="text-[10px] sm:text-[11px] font-mono tracking-widest text-cyan-400 uppercase flex items-center gap-1.5">
            <span>NEURAL CORE</span>
            <span>•</span>
            <span class="text-emerald-400 font-semibold">ONLINE</span>
          </p>
        </div>
      </div>

      <!-- Desktop 5-Tab Navigation -->
      <nav class="hidden lg:flex items-center gap-1 bg-slate-900/90 p-1 rounded-xl border border-slate-800">
        <button onclick="switchTab('home')" data-tab="home" class="nav-btn px-3 py-1.5 rounded-lg text-xs font-semibold transition-all">Home &amp; Core</button>
        <button onclick="switchTab('depts')" data-tab="depts" class="nav-btn px-3 py-1.5 rounded-lg text-xs font-medium transition-all">Departments</button>
        <button onclick="switchTab('console')" data-tab="console" class="nav-btn px-3 py-1.5 rounded-lg text-xs font-medium transition-all">AI Console</button>
        <button onclick="switchTab('approve')" data-tab="approve" class="nav-btn px-3 py-1.5 rounded-lg text-xs font-medium transition-all flex items-center gap-1.5">
          <span>Approval Queue</span>
          <span id="desktop-approve-badge" class="px-1.5 py-0.2 text-[10px] font-mono rounded-full bg-purple-500 text-white">4</span>
        </button>
        <button onclick="switchTab('ledger')" data-tab="ledger" class="nav-btn px-3 py-1.5 rounded-lg text-xs font-medium transition-all">Revenue Ledger</button>
      </nav>

      <!-- Real-Time Revenue Ticker, Active Agents, Notifications & User Badge -->
      <div class="flex items-center gap-2 sm:gap-2.5 shrink-0">
        <!-- Active Agents Pill (Hidden on very small screens) -->
        <div class="hidden sm:flex flex-col items-end bg-slate-900/90 border border-slate-800 px-2.5 py-1 rounded-xl">
          <span class="text-[9px] font-mono uppercase text-slate-400">AGENTS</span>
          <span id="header-agents-count" class="text-xs font-mono font-bold text-cyan-400">6/6 ACTIVE</span>
        </div>

        <!-- Real-Time Revenue Ticker -->
        <div class="text-right bg-slate-900/95 border border-slate-800 px-2.5 sm:px-3 py-1 rounded-xl">
          <div class="text-[9px] sm:text-[10px] font-mono uppercase text-slate-400 flex items-center justify-end gap-1">
            <span class="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse"></span>
            <span id="header-rev-label">DEMO REV</span>
          </div>
          <div id="header-rev-ticker" class="font-mono font-bold text-xs sm:text-base text-emerald-400 tracking-tight">$0.00</div>
        </div>

        <!-- Notification Button -->
        <button onclick="switchTab('approve')" class="relative p-2.5 rounded-xl bg-slate-900 border border-slate-800 hover:border-slate-700 text-slate-300 transition" title="Pending Approvals">
          <svg class="w-4 h-4 sm:w-5 sm:h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.8" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
          </svg>
          <span id="header-notif-badge" class="absolute -top-1 -right-1 min-w-[18px] h-[18px] px-1 rounded-full bg-amber-500 text-slate-950 font-mono font-bold text-[10px] flex items-center justify-center">4</span>
        </button>

        <!-- Operator User Badge -->
        <div class="w-9 h-9 rounded-full bg-gradient-to-tr from-indigo-600 to-purple-500 p-0.5 shrink-0" title="Operator: Root Admin">
          <div class="w-full h-full rounded-full bg-slate-950 flex items-center justify-center text-xs font-mono font-bold text-purple-300">
            OP
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Workspace -->
  <main class="flex-1 max-w-6xl w-full mx-auto px-4 pt-4 space-y-5">

    <!-- 2. INTERACTIVE DEMO MODE VS. LIVE REVENUE MODE BANNER -->
    <section id="mode-banner" class="rounded-2xl border border-amber-500/35 bg-gradient-to-r from-amber-950/35 via-[#13100b] to-slate-900/70 p-4 shadow-neon-amber transition-all">
      <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-3">
        <div class="flex items-start gap-3">
          <div id="banner-icon-box" class="p-2 rounded-xl bg-amber-500/15 border border-amber-500/30 text-amber-400 shrink-0 mt-0.5">
            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.8" d="M4 7v10c0 2.21 3.582 4 8 4s8-1.79 8-4V7M4 7c0 2.21 3.582 4 8 4s8-1.79 8-4M4 7c0-2.21 3.582-4 8-4s8 1.79 8 4m0 5c0 2.21-3.582 4-8 4s-8-1.79-8-4" />
            </svg>
          </div>
          <div>
            <p id="banner-title" class="text-sm text-slate-200 leading-relaxed">
              Your workspace contains <span class="font-bold text-white">32</span>
              <span class="mx-1 px-2 py-0.5 text-[11px] font-mono font-semibold rounded-full bg-amber-500/20 text-amber-300 border border-amber-500/40">DEMO</span>
              sample items. They are illustrative only and never counted as real revenue.
            </p>
            <p id="banner-subtext" class="text-xs text-slate-400 mt-0.5">Clear simulated data to reset balances to $0.00 and begin live merchant revenue tracking.</p>
          </div>
        </div>
        <button onclick="toggleWorkspaceMode()" id="toggle-mode-btn" class="w-full sm:w-auto px-4 py-2.5 rounded-xl bg-slate-900 hover:bg-slate-800 text-slate-100 border border-slate-700 hover:border-amber-500/50 text-xs font-semibold transition shrink-0">
          Clear demo data
        </button>
      </div>
    </section>

    <!-- ==================== TAB 1: HOME & CORE ==================== -->
    <div id="tab-home" class="tab-view space-y-5">

      <!-- 3. DUAL-VIEW VISUALIZER CARD -->
      <section class="rounded-2xl border border-slate-800 bg-[#0b0f17] cyber-grid overflow-hidden shadow-2xl">
        <!-- Card Header & Switcher -->
        <div class="p-4 sm:px-6 border-b border-slate-800/80 flex flex-wrap items-center justify-between gap-3 bg-[#080b11]/90">
          <div>
            <div class="flex items-center gap-2 text-[11px] font-mono tracking-widest text-cyan-400 uppercase">
              <span>NEURAL CORE</span>
              <span>•</span>
              <span class="text-emerald-400">ONLINE</span>
              <span class="text-slate-600">|</span>
              <span id="visualizer-status-text" class="text-slate-300">6 NODES SYNCHRONIZED</span>
            </div>
            <h2 class="text-lg sm:text-xl font-bold text-white mt-0.5">AI Intelligence Network</h2>
          </div>

          <!-- View Mode Toggle -->
          <div class="flex items-center bg-slate-900 p-1 rounded-xl border border-slate-800">
            <button id="btn-mode-neural" onclick="setVisualizerMode('neural')" class="px-3 py-1.5 rounded-lg text-xs font-mono font-semibold bg-cyan-500/20 text-cyan-300 border border-cyan-500/40 transition">
              3D Neural Sphere
            </button>
            <button id="btn-mode-floorplan" onclick="setVisualizerMode('floorplan')" class="px-3 py-1.5 rounded-lg text-xs font-mono font-semibold text-slate-400 hover:text-slate-200 transition">
              Cyber Floorplan
            </button>
          </div>
        </div>

        <!-- VIEW A: 3D-Style Glowing Wireframe Neural Sphere + Orbiting Nodes -->
        <div id="visualizer-neural" class="relative w-full h-[380px] sm:h-[430px] select-none">
          <canvas id="neural-canvas" class="w-full h-full block cursor-pointer"></canvas>

          <div class="absolute bottom-3 left-3 right-3 flex flex-wrap items-center justify-between gap-2 pointer-events-none">
            <div class="px-3 py-1.5 rounded-xl bg-slate-950/85 border border-slate-800 backdrop-blur-md text-[11px] font-mono text-slate-400 pointer-events-auto">
              Tap any department node to execute an autonomous agent cycle
            </div>
            <button onclick="runSwarmCycle()" class="pointer-events-auto px-3.5 py-1.5 rounded-xl bg-cyan-500/20 hover:bg-cyan-500/30 border border-cyan-500/40 text-cyan-300 text-xs font-mono font-semibold transition shadow-neon-cyan">
              ⚡ Pulse Swarm
            </button>
          </div>
        </div>

        <!-- VIEW B: Retro-Green Pixel-HUD Cyber Floorplan Workstation Grid -->
        <div id="visualizer-floorplan" class="hidden relative w-full bg-[#040906] border-t border-emerald-500/30 p-3 sm:p-5 scanlines">
          <!-- Retro HUD Top Telemetry Strip -->
          <div class="flex flex-wrap items-center justify-between gap-2 px-3 py-2 mb-4 rounded-xl bg-emerald-950/40 border border-emerald-500/40 font-mono text-[11px] sm:text-xs text-emerald-400">
            <div class="flex items-center gap-3">
              <span class="font-bold tracking-wider">ULTRON // SECTOR-7 WORKSTATION HUD</span>
              <span class="hidden sm:inline text-emerald-500/70">LOAD: 42%</span>
            </div>
            <div class="flex items-center gap-3">
              <span>BAYS: <strong class="text-white">6 ONLINE</strong></span>
              <span class="px-2 py-0.5 rounded bg-emerald-500/20 text-emerald-300 border border-emerald-500/40 text-[10px]">CONDUITS ACTIVE</span>
            </div>
          </div>

          <!-- 6 Connected Workstation Bays -->
          <div id="floorplan-grid" class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3.5">
            <!-- Populated dynamically -->
          </div>

          <!-- Workstation Inspector Footer -->
          <div class="mt-4 p-3.5 rounded-xl bg-slate-950/90 border border-emerald-500/40 flex flex-col sm:flex-row sm:items-center justify-between gap-3">
            <div>
              <div class="text-[10px] font-mono uppercase text-emerald-400">WORKSTATION TELEMETRY INSPECTOR</div>
              <div id="fp-title" class="text-sm font-bold text-white">Click any glowing workstation room above to inspect &amp; run</div>
              <div id="fp-desc" class="text-xs text-slate-400 mt-0.5">All automated pipelines are streaming telemetry to the central revenue ledger.</div>
            </div>
            <button id="fp-action-btn" onclick="runSwarmCycle()" class="px-4 py-2 rounded-xl bg-emerald-500/20 hover:bg-emerald-500/30 border border-emerald-500/50 text-emerald-300 font-mono text-xs font-semibold shrink-0 transition">
              Run All Bays
            </button>
          </div>
        </div>
      </section>

      <!-- Home Metrics Grid + Quick Actions -->
      <section class="grid grid-cols-2 lg:grid-cols-4 gap-3 sm:gap-4">
        <div class="rounded-2xl border border-slate-800 bg-[#0d111a] p-4">
          <div class="flex items-center justify-between text-[11px] font-mono text-slate-400">
            <span>TOTAL REVENUE</span>
            <span class="text-emerald-400">↗ LIVE</span>
          </div>
          <div id="metric-revenue" class="text-xl sm:text-2xl font-bold font-mono text-white mt-2">$0.00</div>
          <div class="text-[11px] text-slate-500 mt-1">Attributed across 6 nodes</div>
        </div>

        <div class="rounded-2xl border border-slate-800 bg-[#0d111a] p-4">
          <div class="flex items-center justify-between text-[11px] font-mono text-slate-400">
            <span>ESCROW / NET</span>
            <span class="text-cyan-400">92% MARGIN</span>
          </div>
          <div id="metric-net" class="text-xl sm:text-2xl font-bold font-mono text-emerald-400 mt-2">$0.00</div>
          <div class="text-[11px] text-slate-500 mt-1">Available for payout</div>
        </div>

        <div class="rounded-2xl border border-slate-800 bg-[#0d111a] p-4">
          <div class="flex items-center justify-between text-[11px] font-mono text-slate-400">
            <span>ACTIVE AGENTS</span>
            <span class="text-purple-400">AUTONOMOUS</span>
          </div>
          <div id="metric-agents" class="text-xl sm:text-2xl font-bold font-mono text-white mt-2">6 / 6</div>
          <div class="text-[11px] text-slate-500 mt-1">Zero downtime loops</div>
        </div>

        <div class="rounded-2xl border border-slate-800 bg-[#0d111a] p-4">
          <div class="flex items-center justify-between text-[11px] font-mono text-slate-400">
            <span>PENDING SIGN-OFF</span>
            <span class="text-amber-400">GUARDRAIL</span>
          </div>
          <div id="metric-approvals" class="text-xl sm:text-2xl font-bold font-mono text-amber-400 mt-2">4</div>
          <div class="text-[11px] text-slate-500 mt-1">Queued in Approval Gate</div>
        </div>
      </section>

      <!-- Quick Actions & Live Neural Activity Log -->
      <section class="grid grid-cols-1 lg:grid-cols-3 gap-4">
        <!-- Quick Actions -->
        <div class="rounded-2xl border border-slate-800 bg-[#0d111a] p-4 sm:p-5 flex flex-col justify-between gap-3">
          <div>
            <h3 class="text-xs font-mono font-bold uppercase tracking-wider text-cyan-400">Quick Command Actions</h3>
            <p class="text-xs text-slate-400 mt-1">Trigger immediate revenue events or jump directly to agent controls.</p>
          </div>
          <div class="space-y-2">
            <button onclick="simulateStripeSale()" class="w-full py-2.5 px-3.5 rounded-xl bg-emerald-500/15 hover:bg-emerald-500/25 border border-emerald-500/40 text-emerald-300 font-mono text-xs font-semibold flex items-center justify-between transition">
              <span>+ Simulate Stripe Checkout</span>
              <span>$49.00 →</span>
            </button>
            <button onclick="runSwarmCycle()" class="w-full py-2.5 px-3.5 rounded-xl bg-cyan-500/15 hover:bg-cyan-500/25 border border-cyan-500/40 text-cyan-300 font-mono text-xs font-semibold flex items-center justify-between transition">
              <span>⚡ Execute All 6 AI Agents</span>
              <span>RUN →</span>
            </button>
            <button onclick="switchTab('console')" class="w-full py-2.5 px-3.5 rounded-xl bg-slate-900 hover:bg-slate-800 border border-slate-700 text-slate-200 font-mono text-xs font-semibold flex items-center justify-between transition">
              <span>⌘ Open AI Directive Console</span>
              <span>CMD →</span>
            </button>
          </div>
        </div>

        <!-- Live Neural Activity Log -->
        <div class="lg:col-span-2 rounded-2xl border border-slate-800 bg-[#0d111a] p-4 sm:p-5">
          <div class="flex items-center justify-between mb-3">
            <div class="flex items-center gap-2">
              <span class="w-2 h-2 rounded-full bg-emerald-400 animate-pulse"></span>
              <h3 class="text-xs font-mono font-bold uppercase tracking-wider text-white">Live Neural Activity Log</h3>
            </div>
            <button onclick="switchTab('ledger')" class="text-xs font-mono text-cyan-400 hover:text-cyan-300">Full Ledger →</button>
          </div>
          <div id="home-activity-log" class="space-y-2 max-h-56 overflow-y-auto pr-1">
            <!-- Populated dynamically -->
          </div>
        </div>
      </section>
    </div>

    <!-- ==================== TAB 2: DEPARTMENTS ==================== -->
    <div id="tab-depts" class="tab-view hidden space-y-4">
      <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-2">
        <div>
          <h2 class="text-xl font-bold text-white">Autonomous Departments</h2>
          <p class="text-xs text-slate-400">Configure active agent nodes, monitor attributed revenue, and trigger individual runs.</p>
        </div>
        <button onclick="runSwarmCycle()" class="px-4 py-2 rounded-xl bg-cyan-500/20 hover:bg-cyan-500/30 border border-cyan-500/40 text-cyan-300 font-mono text-xs font-semibold self-start sm:self-auto transition">
          ⚡ Run All Active Agents
        </button>
      </div>

      <div id="departments-grid" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        <!-- Populated dynamically -->
      </div>
    </div>

    <!-- ==================== TAB 3: AI CONSOLE ==================== -->
    <div id="tab-console" class="tab-view hidden space-y-4">
      <div class="rounded-2xl border border-slate-800 bg-[#0d111a] overflow-hidden flex flex-col h-[560px]">
        <!-- Terminal Header -->
        <div class="p-4 border-b border-slate-800 bg-slate-950/70 flex flex-wrap items-center justify-between gap-2">
          <div class="flex items-center gap-2.5">
            <div class="w-8 h-8 rounded-lg bg-purple-500/20 border border-purple-500/40 flex items-center justify-center text-purple-300 font-mono font-bold text-xs">AI</div>
            <div>
              <h2 class="text-sm font-bold text-white">Neural Core Directive Console</h2>
              <p class="text-[11px] font-mono text-slate-400">Natural language orchestration &amp; automated revenue synthesis</p>
            </div>
          </div>
          <span class="px-2.5 py-1 rounded-full bg-emerald-500/15 border border-emerald-500/30 text-emerald-400 font-mono text-[11px]">STREAM: READY</span>
        </div>

        <!-- n8n Webhook Configuration Bar -->
        <div class="px-4 py-2.5 bg-slate-950/90 border-b border-slate-800/80 flex flex-col sm:flex-row sm:items-center gap-2">
          <label for="n8n-webhook-input" class="text-[10px] font-mono uppercase text-cyan-400 shrink-0 font-bold">
            n8n Webhook:
          </label>
          <input
            id="n8n-webhook-input"
            type="url"
            placeholder="https://your-n8n-instance/webhook/..."
            class="flex-1 bg-slate-900 border border-slate-700 focus:border-cyan-500 rounded-lg px-3 py-1.5 text-xs text-white placeholder-slate-500 outline-none font-mono"
          />
          <div class="flex items-center gap-2 shrink-0">
            <button
              type="button"
              onclick="saveN8nWebhook()"
              class="px-3 py-1.5 rounded-lg bg-cyan-500/20 hover:bg-cyan-500/30 border border-cyan-500/40 text-cyan-300 font-mono text-xs font-semibold transition"
            >
              Save
            </button>
            <button
              type="button"
              onclick="pingN8nWebhook()"
              class="px-3 py-1.5 rounded-lg bg-slate-800 hover:bg-slate-700 border border-slate-700 text-slate-200 font-mono text-xs font-semibold transition"
            >
              Test Ping
            </button>
          </div>
        </div>

        <!-- Preset Directive Buttons -->
        <div class="px-4 py-2.5 bg-slate-900/60 border-b border-slate-800/80 flex items-center gap-2 overflow-x-auto">
          <span class="text-[10px] font-mono text-slate-500 uppercase shrink-0">Presets:</span>
          <button onclick="triggerPresetPrompt('Launch outbound B2B license outreach for venue operators')" class="shrink-0 px-3 py-1 rounded-lg bg-slate-800 hover:bg-slate-700 text-xs text-cyan-300 border border-slate-700 transition">
            Outbound B2B Campaign
          </button>
          <button onclick="triggerPresetPrompt('Optimize digital product checkout pricing & upsell bundle')" class="shrink-0 px-3 py-1 rounded-lg bg-slate-800 hover:bg-slate-700 text-xs text-emerald-300 border border-slate-700 transition">
            Optimize Checkout AOV
          </button>
          <button onclick="triggerPresetPrompt('Generate high-converting flash offer and queue for approval')" class="shrink-0 px-3 py-1 rounded-lg bg-slate-800 hover:bg-slate-700 text-xs text-purple-300 border border-slate-700 transition">
            Draft Flash Offer
          </button>
        </div>

        <!-- Live Terminal Stream -->
        <div id="console-stream" class="flex-1 p-4 overflow-y-auto space-y-3 font-mono text-xs sm:text-sm bg-[#070a10]">
          <!-- Populated dynamically -->
        </div>

        <!-- Natural Language Directive Input -->
        <form onsubmit="handleConsoleSubmit(event)" class="p-3 border-t border-slate-800 bg-slate-950 flex items-center gap-2">
          <span class="text-cyan-400 font-mono font-bold pl-1">&gt;</span>
          <input id="console-input" type="text" placeholder="Enter directive (e.g., 'Deploy weekend flash promo for $79 bundle')..." class="flex-1 bg-slate-900 border border-slate-700 focus:border-cyan-500 rounded-xl px-3.5 py-2.5 text-xs sm:text-sm text-white placeholder-slate-500 outline-none font-mono" />
          <button type="submit" class="px-4 py-2.5 rounded-xl bg-cyan-500 hover:bg-cyan-400 text-slate-950 font-bold text-xs font-mono uppercase tracking-wider transition shrink-0">
            Execute
          </button>
        </form>
      </div>
    </div>

    <!-- ==================== TAB 4: APPROVAL QUEUE ==================== -->
    <div id="tab-approve" class="tab-view hidden space-y-4">
      <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-2">
        <div>
          <h2 class="text-xl font-bold text-white">Human-in-the-Loop Approval Queue</h2>
          <p class="text-xs text-slate-400">Review and authorize ad budgets, product launches, and payout settlements before execution.</p>
        </div>
        <button onclick="createNewProposal()" class="px-3.5 py-2 rounded-xl bg-purple-500/20 hover:bg-purple-500/30 border border-purple-500/40 text-purple-300 font-mono text-xs font-semibold self-start sm:self-auto transition">
          + New Agent Proposal
        </button>
      </div>

      <div id="approval-list" class="space-y-3">
        <!-- Populated dynamically -->
      </div>
    </div>

    <!-- ==================== TAB 5: REVENUE LEDGER ==================== -->
    <div id="tab-ledger" class="tab-view hidden space-y-4">
      <div class="flex flex-col sm:flex-row sm:items-center justify-between gap-3">
        <div>
          <h2 class="text-xl font-bold text-white">Revenue &amp; Settlement Ledger</h2>
          <p class="text-xs text-slate-400">Real-time payment telemetry, Stripe checkout simulation, and CSV accounting export.</p>
        </div>
        <div class="flex flex-wrap items-center gap-2">
          <button onclick="simulateStripeSale()" class="px-4 py-2 rounded-xl bg-emerald-500 hover:bg-emerald-400 text-slate-950 font-mono font-bold text-xs uppercase transition shadow-neon-emerald">
            + Simulate Stripe Sale
          </button>
          <button onclick="exportLedgerCSV()" class="px-3.5 py-2 rounded-xl bg-slate-900 hover:bg-slate-800 border border-slate-700 text-slate-200 font-mono text-xs transition">
            Export CSV
          </button>
        </div>
      </div>

      <!-- Custom Transaction Entry Bar -->
      <form onsubmit="handleCustomLedgerEntry(event)" class="rounded-2xl border border-slate-800 bg-[#0d111a] p-4 grid grid-cols-1 sm:grid-cols-12 gap-3">
        <div class="sm:col-span-5">
          <label class="block text-[10px] font-mono uppercase text-slate-400 mb-1">Description / Customer SKU</label>
          <input id="custom-tx-desc" type="text" required placeholder="e.g., Mojito Field Guide • Commercial Venue Pack" class="w-full bg-slate-900 border border-slate-700 focus:border-emerald-500 rounded-xl px-3 py-2 text-xs text-white outline-none" />
        </div>
        <div class="sm:col-span-3">
          <label class="block text-[10px] font-mono uppercase text-slate-400 mb-1">Department</label>
          <select id="custom-tx-dept" class="w-full bg-slate-900 border border-slate-700 focus:border-emerald-500 rounded-xl px-3 py-2 text-xs text-white outline-none">
            <option value="SALES">SALES</option>
            <option value="PRODUCTS">PRODUCTS</option>
            <option value="MARKETING">MARKETING</option>
            <option value="AI CORE">AI CORE</option>
            <option value="FINANCE">FINANCE</option>
            <option value="RESEARCH">RESEARCH</option>
          </select>
        </div>
        <div class="sm:col-span-2">
          <label class="block text-[10px] font-mono uppercase text-slate-400 mb-1">Amount ($)</label>
          <input id="custom-tx-amount" type="number" step="0.01" min="1" required placeholder="79.00" class="w-full bg-slate-900 border border-slate-700 focus:border-emerald-500 rounded-xl px-3 py-2 text-xs font-mono text-white outline-none" />
        </div>
        <div class="sm:col-span-2 flex items-end">
          <button type="submit" class="w-full py-2 px-3 rounded-xl bg-cyan-500/20 hover:bg-cyan-500/30 border border-cyan-500/40 text-cyan-300 font-mono font-bold text-xs uppercase transition h-[34px]">
            Record
          </button>
        </div>
      </form>

      <!-- Ledger Table -->
      <div class="rounded-2xl border border-slate-800 bg-[#0d111a] overflow-hidden">
        <div class="p-3.5 border-b border-slate-800 flex items-center justify-between bg-slate-950/50">
          <span class="text-xs font-mono font-bold text-white uppercase">Verified Settlement History</span>
          <span id="ledger-entry-count" class="text-xs font-mono text-slate-400">0 transactions</span>
        </div>
        <div class="overflow-x-auto">
          <table class="w-full text-left border-collapse">
            <thead>
              <tr class="border-b border-slate-800 text-[10px] font-mono uppercase text-slate-400 bg-slate-950/40">
                <th class="py-3 px-4">Time</th>
                <th class="py-3 px-4">Node</th>
                <th class="py-3 px-4">Transaction Description</th>
                <th class="py-3 px-4">Mode</th>
                <th class="py-3 px-4 text-right">Amount</th>
              </tr>
            </thead>
            <tbody id="ledger-tbody" class="divide-y divide-slate-800/60 text-xs">
              <!-- Populated dynamically -->
            </tbody>
          </table>
        </div>
      </div>
    </div>

  </main>

  <!-- Mobile Bottom Navigation Bar -->
  <nav class="lg:hidden fixed bottom-0 left-0 right-0 z-40 bg-[#07090e]/95 backdrop-blur-lg border-t border-slate-800 px-2 py-1.5">
    <div class="grid grid-cols-5 gap-1 max-w-md mx-auto">
      <button onclick="switchTab('home')" data-tab="home" class="mobile-nav-btn flex flex-col items-center justify-center py-1.5 rounded-xl text-cyan-400">
        <svg class="w-5 h-5 mb-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.8" d="M4 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2V6zM14 6a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V6zM4 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2H6a2 2 0 01-2-2v-2zM14 16a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z" />
        </svg>
        <span class="text-[10px] font-medium">Home</span>
      </button>

      <button onclick="switchTab('depts')" data-tab="depts" class="mobile-nav-btn flex flex-col items-center justify-center py-1.5 rounded-xl text-slate-400">
        <svg class="w-5 h-5 mb-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.8" d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4" />
        </svg>
        <span class="text-[10px] font-medium">Depts</span>
      </button>

      <button onclick="switchTab('console')" data-tab="console" class="mobile-nav-btn flex flex-col items-center justify-center py-1.5 rounded-xl text-slate-400">
        <svg class="w-5 h-5 mb-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.8" d="M8 9l3 3-3 3m5 0h3M5 20h14a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
        </svg>
        <span class="text-[10px] font-medium">AI</span>
      </button>

      <button onclick="switchTab('approve')" data-tab="approve" class="mobile-nav-btn relative flex flex-col items-center justify-center py-1.5 rounded-xl text-slate-400">
        <span id="mobile-approve-dot" class="absolute top-1.5 right-4 w-2 h-2 rounded-full bg-purple-400"></span>
        <svg class="w-5 h-5 mb-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.8" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" />
        </svg>
        <span class="text-[10px] font-medium">Approve</span>
      </button>

      <button onclick="switchTab('ledger')" data-tab="ledger" class="mobile-nav-btn flex flex-col items-center justify-center py-1.5 rounded-xl text-slate-400">
        <svg class="w-5 h-5 mb-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.8" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4" />
        </svg>
        <span class="text-[10px] font-medium">Ledger</span>
      </button>
    </div>
  </nav>

  <script>
    // ==================== STATE & DEFAULT DATA ====================
    const STORAGE_KEY = 'neural_core_ecosystem_v2';

    const INITIAL_DEPARTMENTS = [
      { id: 'products',  name: 'PRODUCTS',  agent: 'Forge-01',    role: 'Digital Guide & Bundle Architect', color: '#a855f7', pill: 'text-purple-300 bg-purple-500/15 border-purple-500/40', active: true, demoRev: 3420.00, liveRev: 0, runs: 18, task: 'Packaging A6 printable cocktail & bar guides' },
      { id: 'research',  name: 'RESEARCH',  agent: 'Scout-X',     role: 'Niche Demand & Keyword Scanner',   color: '#00f0ff', pill: 'text-cyan-300 bg-cyan-500/15 border-cyan-500/40',       active: true, demoRev: 1290.00, liveRev: 0, runs: 31, task: 'Analyzing seasonal beverage & hospitality trends' },
      { id: 'aicore',    name: 'AI CORE',   agent: 'Nexus-Prime', role: 'Central Prompt & Swarm Router',    color: '#ec4899', pill: 'text-pink-300 bg-pink-500/15 border-pink-500/40',       active: true, demoRev: 2150.00, liveRev: 0, runs: 44, task: 'Orchestrating cross-node conversion copy' },
      { id: 'finance',   name: 'FINANCE',   agent: 'Ledger-9',    role: 'Pricing Margin & Payout Auditor',  color: '#f59e0b', pill: 'text-amber-300 bg-amber-500/15 border-amber-500/40',    active: true, demoRev: 1840.00, liveRev: 0, runs: 22, task: 'Verifying Stripe webhooks & net profit margins' },
      { id: 'marketing', name: 'MARKETING', agent: 'Pulse-M',     role: 'Social & Organic Funnel Engine',   color: '#fb923c', pill: 'text-orange-300 bg-orange-500/15 border-orange-500/40', active: true, demoRev: 2780.00, liveRev: 0, runs: 39, task: 'Deploying high-converting Open Graph previews' },
      { id: 'sales',     name: 'SALES',     agent: 'Closer-V',    role: 'Venue Licensing & Checkout Closer',color: '#10b981', pill: 'text-emerald-300 bg-emerald-500/15 border-emerald-500/40',active: true, demoRev: 5640.00, liveRev: 0, runs: 57, task: 'Closing commercial multi-seat venue licenses' }
    ];

    const INITIAL_APPROVALS = [
      { id: 'ap-1', dept: 'MARKETING', title: 'Authorize Retargeting Micro-Budget ($40.00)', impact: '+$290.00 est. return', amount: 290.00, time: '3m ago' },
      { id: 'ap-2', dept: 'PRODUCTS',  title: 'Publish "Pro Venue Recipe Matrix v2.4" SKU', impact: '+$149.00 per license', amount: 149.00, time: '14m ago' },
      { id: 'ap-3', dept: 'SALES',     title: 'Approve Bulk Hospitality Invoice (10 Seats)',  impact: '+$490.00 direct payout', amount: 490.00, time: '28m ago' },
      { id: 'ap-4', dept: 'FINANCE',   title: 'Release Weekly Stripe Settlement Batch #42',   impact: '+$310.00 net clearing', amount: 310.00, time: '52m ago' }
    ];

    const INITIAL_LEDGER = [
      { id: 'TX-904', time: '10:14 PM', dept: 'SALES',     desc: 'Commercial Venue License • 5-Seat Pack', mode: 'DEMO', amount: 149.00 },
      { id: 'TX-903', time: '09:51 PM', dept: 'PRODUCTS',  desc: 'Mojito Field Guide • Digital + A6 Print', mode: 'DEMO', amount: 29.00 },
      { id: 'TX-902', time: '09:22 PM', dept: 'MARKETING', desc: 'Organic Funnel Checkout • Bundle Tier', mode: 'DEMO', amount: 79.00 },
      { id: 'TX-901', time: '08:45 PM', dept: 'AI CORE',   desc: 'Automated Cart Recovery Sequence', mode: 'DEMO', amount: 49.00 }
    ];

    let state = loadState();

    function loadState() {
      try {
        const saved = localStorage.getItem(STORAGE_KEY);
        if (saved) {
          const parsed = JSON.parse(saved);
          return {
            isDemo: parsed.isDemo !== undefined ? parsed.isDemo : true,
            activeTab: parsed.activeTab || 'home',
            visualizerMode: parsed.visualizerMode || 'neural',
            n8nWebhookUrl: typeof parsed.n8nWebhookUrl === 'string' ? parsed.n8nWebhookUrl : '',
            departments: Array.isArray(parsed.departments) ? parsed.departments : JSON.parse(JSON.stringify(INITIAL_DEPARTMENTS)),
            approvals: Array.isArray(parsed.approvals) ? parsed.approvals : JSON.parse(JSON.stringify(INITIAL_APPROVALS)),
            ledger: Array.isArray(parsed.ledger) ? parsed.ledger : JSON.parse(JSON.stringify(INITIAL_LEDGER)),
            logs: Array.isArray(parsed.logs) ? parsed.logs : [
              '[SYSTEM] NEURAL CORE v4.2 initialized. All 6 department conduits online.',
              '[FINANCE] Stripe webhook listener bound to /api/v1/webhooks/stripe.',
              '[SALES] Autonomous checkout optimization active (+14.2% conversion velocity).'
            ]
          };
        }
      } catch (e) {}
      return {
        isDemo: true,
        activeTab: 'home',
        visualizerMode: 'neural',
        n8nWebhookUrl: '',
        departments: JSON.parse(JSON.stringify(INITIAL_DEPARTMENTS)),
        approvals: JSON.parse(JSON.stringify(INITIAL_APPROVALS)),
        ledger: JSON.parse(JSON.stringify(INITIAL_LEDGER)),
        logs: [
          '[SYSTEM] NEURAL CORE v4.2 initialized. All 6 department conduits online.',
          '[FINANCE] Stripe webhook listener bound to /api/v1/webhooks/stripe.',
          '[SALES] Autonomous checkout optimization active (+14.2% conversion velocity).'
        ]
      };
    }

    function saveState() {
      try {
        localStorage.setItem(STORAGE_KEY, JSON.stringify(state));
      } catch (e) {}
    }

    function money(val) {
      return '$' + Number(val || 0).toLocaleString('en-US', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
    }

    function showToast(title, body, type = 'cyan') {
      const container = document.getElementById('toast-container');
      const themes = {
        cyan: 'border-cyan-500/50 text-cyan-300',
        emerald: 'border-emerald-500/50 text-emerald-300',
        amber: 'border-amber-500/50 text-amber-300',
        purple: 'border-purple-500/50 text-purple-300'
      };
      const el = document.createElement('div');
      el.className = `pointer-events-auto rounded-xl border ${themes[type] || themes.cyan} bg-slate-950/95 p-3 shadow-2xl backdrop-blur-md transition-all duration-300`;
      el.innerHTML = `<div class="text-xs font-mono font-bold">${title}</div><div class="text-[11px] text-slate-300 mt-0.5">${body}</div>`;
      container.appendChild(el);
      setTimeout(() => {
        el.style.opacity = '0';
        setTimeout(() => el.remove(), 300);
      }, 3000);
    }

    // ==================== RENDER ENGINE ====================
    function renderAll() {
      const totalRev = state.departments.reduce((acc, d) => acc + (state.isDemo ? d.demoRev : d.liveRev), 0);
      const activeCount = state.departments.filter(d => d.active).length;

      // Header Updates
      document.getElementById('header-rev-ticker').textContent = money(totalRev);
      document.getElementById('header-agents-count').textContent = `${activeCount}/${state.departments.length} ACTIVE`;
      document.getElementById('header-rev-label').textContent = state.isDemo ? 'DEMO REV' : 'LIVE REV';

      const pill = document.getElementById('header-mode-pill');
      const banner = document.getElementById('mode-banner');
      const bannerTitle = document.getElementById('banner-title');
      const bannerSub = document.getElementById('banner-subtext');
      const toggleBtn = document.getElementById('toggle-mode-btn');

      if (state.isDemo) {
        pill.textContent = 'DEMO';
        pill.className = 'text-[10px] font-mono uppercase px-2 py-0.5 rounded-full bg-amber-500/15 text-amber-400 border border-amber-500/30';
        banner.className = 'rounded-2xl border border-amber-500/35 bg-gradient-to-r from-amber-950/35 via-[#13100b] to-slate-900/70 p-4 shadow-neon-amber transition-all';
        bannerTitle.innerHTML = `Your workspace contains <span class="font-bold text-white">32</span> <span class="mx-1 px-2 py-0.5 text-[11px] font-mono font-semibold rounded-full bg-amber-500/20 text-amber-300 border border-amber-500/40">DEMO</span> sample items. They are illustrative only and never counted as real revenue.`;
        bannerSub.textContent = 'Clear simulated data to reset balances to $0.00 and begin live merchant revenue tracking.';
        toggleBtn.textContent = 'Clear demo data';
      } else {
        pill.textContent = 'LIVE';
        pill.className = 'text-[10px] font-mono uppercase px-2 py-0.5 rounded-full bg-emerald-500/15 text-emerald-400 border border-emerald-500/30';
        banner.className = 'rounded-2xl border border-emerald-500/35 bg-gradient-to-r from-emerald-950/35 via-[#0b1411] to-slate-900/70 p-4 shadow-neon-emerald transition-all';
        bannerTitle.innerHTML = `Production mode <span class="mx-1 px-2 py-0.5 text-[11px] font-mono font-semibold rounded-full bg-emerald-500/20 text-emerald-300 border border-emerald-500/40">LIVE</span> is active. Simulated figures cleared—all new settlements count as real revenue.`;
        bannerSub.textContent = 'Simulate a Stripe checkout or record real merchant transactions in the Revenue Ledger tab.';
        toggleBtn.textContent = 'Restore demo data';
      }

      // Home KPIs
      document.getElementById('metric-revenue').textContent = money(totalRev);
      document.getElementById('metric-net').textContent = money(totalRev * 0.92);
      document.getElementById('metric-agents').textContent = `${activeCount} / ${state.departments.length}`;
      document.getElementById('metric-approvals').textContent = state.approvals.length;

      // Badges
      const qCount = state.approvals.length;
      const hBadge = document.getElementById('header-notif-badge');
      const dBadge = document.getElementById('desktop-approve-badge');
      const mDot = document.getElementById('mobile-approve-dot');
      hBadge.textContent = qCount;
      hBadge.style.display = qCount > 0 ? 'flex' : 'none';
      dBadge.textContent = qCount;
      dBadge.style.display = qCount > 0 ? 'inline-block' : 'none';
      mDot.style.display = qCount > 0 ? 'block' : 'none';

      // Sync n8n Webhook Input if not currently focused
      const webhookInput = document.getElementById('n8n-webhook-input');
      if (webhookInput && document.activeElement !== webhookInput) {
        webhookInput.value = state.n8nWebhookUrl || '';
      }

      renderFloorplan();
      renderDepartments();
      renderConsoleLogs();
      renderApprovals();
      renderLedger();
    }

    // ==================== NAVIGATION & MODES ====================
    function switchTab(tab) {
      state.activeTab = tab;
      saveState();

      document.querySelectorAll('.tab-view').forEach(el => el.classList.add('hidden'));
      document.getElementById(`tab-${tab}`).classList.remove('hidden');

      document.querySelectorAll('.nav-btn').forEach(btn => {
        if (btn.dataset.tab === tab) {
          btn.className = 'nav-btn px-3 py-1.5 rounded-lg text-xs font-semibold transition-all bg-cyan-500/20 text-cyan-300 border border-cyan-500/40';
        } else {
          btn.className = 'nav-btn px-3 py-1.5 rounded-lg text-xs font-medium transition-all text-slate-400 hover:text-slate-200';
        }
      });

      document.querySelectorAll('.mobile-nav-btn').forEach(btn => {
        btn.classList.toggle('text-cyan-400', btn.dataset.tab === tab);
        btn.classList.toggle('text-slate-400', btn.dataset.tab !== tab);
      });

      if (tab === 'home' && state.visualizerMode === 'neural') {
        resizeCanvas();
      }
    }

    function toggleWorkspaceMode() {
      state.isDemo = !state.isDemo;
      if (!state.isDemo) {
        state.ledger = state.ledger.filter(tx => tx.mode === 'LIVE');
        showToast('DEMO DATA CLEARED', 'Switched to Live Revenue Mode ($0.00 baseline).', 'emerald');
      } else {
        state.departments = JSON.parse(JSON.stringify(INITIAL_DEPARTMENTS));
        state.ledger = JSON.parse(JSON.stringify(INITIAL_LEDGER));
        state.approvals = JSON.parse(JSON.stringify(INITIAL_APPROVALS));
        showToast('DEMO MODE RESTORED', 'Loaded 32 sample ecosystem items.', 'amber');
      }
      saveState();
      renderAll();
    }

    function setVisualizerMode(mode) {
      state.visualizerMode = mode;
      saveState();
      const nEl = document.getElementById('visualizer-neural');
      const fEl = document.getElementById('visualizer-floorplan');
      const bN = document.getElementById('btn-mode-neural');
      const bF = document.getElementById('btn-mode-floorplan');

      if (mode === 'neural') {
        nEl.classList.remove('hidden');
        fEl.classList.add('hidden');
        bN.className = 'px-3 py-1.5 rounded-lg text-xs font-mono font-semibold bg-cyan-500/20 text-cyan-300 border border-cyan-500/40 transition';
        bF.className = 'px-3 py-1.5 rounded-lg text-xs font-mono font-semibold text-slate-400 hover:text-slate-200 transition';
        resizeCanvas();
      } else {
        nEl.classList.add('hidden');
        fEl.classList.remove('hidden');
        bF.className = 'px-3 py-1.5 rounded-lg text-xs font-mono font-semibold bg-emerald-500/20 text-emerald-300 border border-emerald-500/40 transition';
        bN.className = 'px-3 py-1.5 rounded-lg text-xs font-mono font-semibold text-slate-400 hover:text-slate-200 transition';
      }
    }

    // ==================== CYBER FLOORPLAN RENDERER ====================
    function renderFloorplan() {
      const grid = document.getElementById('floorplan-grid');
      if (!grid) return;
      const roomBorders = [
        'border-amber-500/60 shadow-[0_0_14px_rgba(245,158,11,0.16)]',
        'border-emerald-500/60 shadow-[0_0_14px_rgba(16,185,129,0.2)]',
        'border-cyan-500/60 shadow-[0_0_14px_rgba(0,240,255,0.16)]',
        'border-purple-500/60 shadow-[0_0_14px_rgba(168,85,247,0.16)]',
        'border-orange-500/60 shadow-[0_0_14px_rgba(251,146,60,0.16)]',
        'border-rose-500/60 shadow-[0_0_14px_rgba(244,63,94,0.16)]'
      ];

      grid.innerHTML = state.departments.map((d, idx) => {
        const rev = state.isDemo ? d.demoRev : d.liveRev;
        return `
          <div onclick="inspectFloorplanBay('${d.id}')" class="cursor-pointer rounded-xl bg-[#060c09] border-2 ${roomBorders[idx % roomBorders.length]} p-3.5 hover:scale-[1.01] transition">
            <div class="flex items-center justify-between mb-2">
              <span class="font-mono text-xs font-bold text-white flex items-center gap-1.5">
                <span class="w-2 h-2 rounded-full ${d.active ? 'bg-emerald-400 animate-ping' : 'bg-slate-600'}"></span>
                ${d.name} BAY
              </span>
              <span class="font-mono text-[10px] px-1.5 py-0.5 rounded bg-slate-900 text-emerald-300 border border-emerald-500/30">${d.agent}</span>
            </div>
            <div class="p-2 rounded-lg bg-black/70 border border-slate-800 font-mono text-[11px] space-y-1">
              <div class="flex justify-between">
                <span class="text-emerald-400">&gt; ${d.active ? 'RUNNING' : 'PAUSED'}</span>
                <span class="text-white font-bold">${money(rev)}</span>
              </div>
              <div class="text-slate-400 truncate text-[10px]">${d.task}</div>
            </div>
            <div class="mt-2 flex items-center justify-between text-[10px] font-mono text-slate-400">
              <span>RUNS: ${d.runs}</span>
              <span class="text-emerald-400">INSPECT BAY →</span>
            </div>
          </div>
        `;
      }).join('');
    }

    function inspectFloorplanBay(deptId) {
      const d = state.departments.find(item => item.id === deptId);
      if (!d) return;
      document.getElementById('fp-title').textContent = `${d.name} BAY • Agent ${d.agent} (${money(state.isDemo ? d.demoRev : d.liveRev)})`;
      document.getElementById('fp-desc').textContent = `Directive: ${d.task} • ${d.runs} autonomous cycles completed.`;
      const btn = document.getElementById('fp-action-btn');
      btn.textContent = `Run ${d.name}`;
      btn.onclick = () => runAgentNode(d.id);
    }

    // ==================== DEPARTMENTS & AGENT RUNS ====================
    function renderDepartments() {
      const grid = document.getElementById('departments-grid');
      if (!grid) return;

      grid.innerHTML = state.departments.map(d => {
        const rev = state.isDemo ? d.demoRev : d.liveRev;
        return `
          <div class="rounded-2xl border border-slate-800 bg-[#0d111a] p-4 flex flex-col justify-between gap-4 hover:border-slate-700 transition">
            <div>
              <div class="flex items-center justify-between">
                <span class="px-2.5 py-1 rounded-full text-[11px] font-mono font-bold border ${d.pill}">● ${d.name}</span>
                <label class="inline-flex items-center cursor-pointer">
                  <input type="checkbox" ${d.active ? 'checked' : ''} onchange="toggleDeptAgent('${d.id}')" class="sr-only peer">
                  <div class="w-9 h-5 bg-slate-800 rounded-full peer peer-checked:after:translate-x-full after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-slate-300 after:rounded-full after:h-4 after:w-4 after:transition-all peer-checked:bg-emerald-500 relative"></div>
                </label>
              </div>
              <div class="mt-3 flex items-baseline justify-between">
                <div>
                  <h3 class="text-base font-bold text-white">${d.agent}</h3>
                  <p class="text-xs text-slate-400">${d.role}</p>
                </div>
                <div class="text-right">
                  <div class="text-[10px] font-mono text-slate-500">REVENUE</div>
                  <div class="font-mono font-bold text-emerald-400 text-sm">${money(rev)}</div>
                </div>
              </div>
              <div class="mt-3 p-2.5 rounded-xl bg-slate-950/80 border border-slate-800 text-xs text-slate-300">
                <span class="text-[10px] font-mono text-slate-500 block mb-0.5">CURRENT LOOP:</span>
                ${d.task}
              </div>
            </div>
            <div class="flex items-center justify-between pt-2 border-t border-slate-800/80">
              <span class="text-[11px] font-mono text-slate-400">${d.runs} cycles</span>
              <button onclick="runAgentNode('${d.id}')" class="px-3.5 py-1.5 rounded-xl bg-slate-900 hover:bg-slate-800 border border-slate-700 hover:border-cyan-500/40 text-xs font-mono text-cyan-300 transition">
                ⚡ Run Agent
              </button>
            </div>
          </div>
        `;
      }).join('');
    }

    function toggleDeptAgent(id) {
      const d = state.departments.find(item => item.id === id);
      if (!d) return;
      d.active = !d.active;
      saveState();
      renderAll();
      showToast(`${d.agent} (${d.name})`, d.active ? 'Node activated' : 'Node paused', d.active ? 'emerald' : 'amber');
    }

    function runAgentNode(id) {
      const d = state.departments.find(item => item.id === id);
      if (!d) return;
      if (!d.active) {
        showToast(`${d.agent} Offline`, 'Enable the node toggle before running.', 'amber');
        return;
      }

      const gain = Number((Math.floor(Math.random() * 60) + 19).toFixed(2));
      d.runs += 1;
      if (state.isDemo) d.demoRev += gain;
      else d.liveRev += gain;

      const timeStr = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
      state.ledger.unshift({
        id: 'TX-' + Math.floor(100 + Math.random() * 900),
        time: timeStr,
        dept: d.name,
        desc: `${d.agent} Autonomous Execution • ${d.role}`,
        mode: state.isDemo ? 'DEMO' : 'LIVE',
        amount: gain
      });

      state.logs.unshift(`[${timeStr}] [${d.name}] ${d.agent} completed cycle -> +${money(gain)}`);
      document.getElementById('visualizer-status-text').textContent = `${d.name} PULSE +${money(gain)}`;
      spawnCanvasPulse(d.id);

      saveState();
      renderAll();
      showToast(`${d.name} CYCLE COMPLETE`, `${d.agent} settled +${money(gain)}`, 'emerald');
    }

    function runSwarmCycle() {
      const active = state.departments.filter(d => d.active);
      if (active.length === 0) {
        showToast('No Active Nodes', 'Activate at least one department agent.', 'amber');
        return;
      }

      let total = 0;
      active.forEach(d => {
        const gain = Number((Math.floor(Math.random() * 32) + 12).toFixed(2));
        total += gain;
        d.runs += 1;
        if (state.isDemo) d.demoRev += gain;
        else d.liveRev += gain;
        spawnCanvasPulse(d.id);
      });

      const timeStr = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
      state.ledger.unshift({
        id: 'TX-' + Math.floor(100 + Math.random() * 900),
        time: timeStr,
        dept: 'AI CORE',
        desc: `Swarm Execution Across ${active.length} Department Nodes`,
        mode: state.isDemo ? 'DEMO' : 'LIVE',
        amount: total
      });
      state.logs.unshift(`[${timeStr}] [SWARM] ${active.length} agents synchronized -> +${money(total)}`);
      document.getElementById('visualizer-status-text').textContent = `SWARM SYNC +${money(total)}`;

      saveState();
      renderAll();
      showToast('SWARM PULSE COMPLETE', `Generated +${money(total)} across ${active.length} active nodes`, 'cyan');
    }

    // ==================== AI CONSOLE & N8N WEBHOOK ====================
    function renderConsoleLogs() {
      const stream = document.getElementById('console-stream');
      if (!stream) return;
      stream.innerHTML = state.logs.map(line => {
        const isCmd = line.startsWith('>');
        return `<div class="${isCmd ? 'text-cyan-300 font-semibold' : 'text-slate-300'} leading-relaxed">${line}</div>`;
      }).join('');
    }

    function saveN8nWebhook() {
      const input = document.getElementById('n8n-webhook-input');
      const url = input ? input.value.trim() : '';
      const timeStr = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });

      state.n8nWebhookUrl = url;
      if (url) {
        state.logs.unshift(`[${timeStr}] [n8n] Webhook URL saved (${url}).`);
        showToast('n8n WEBHOOK SAVED', 'Persisted to local storage.', 'cyan');
      } else {
        state.logs.unshift(`[${timeStr}] [n8n] Webhook URL cleared.`);
        showToast('n8n WEBHOOK CLEARED', 'Removed saved webhook URL.', 'amber');
      }
      saveState();
      renderConsoleLogs();
    }

    async function sendToN8nWebhook(payload) {
      const url = (state.n8nWebhookUrl || '').trim();
      const timeStr = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });

      if (!url) {
        state.logs.unshift(`[${timeStr}] [n8n] No webhook URL configured — skipped dispatch.`);
        saveState();
        renderConsoleLogs();
        return;
      }

      const controller = new AbortController();
      const timer = setTimeout(() => controller.abort(), 8000);

      try {
        const res = await fetch(url, {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify(payload),
          signal: controller.signal
        });
        clearTimeout(timer);
        state.logs.unshift(`[${timeStr}] [n8n] Dispatched (${payload.type || 'directive'}) -> HTTP ${res.status} ${res.statusText || ''}`.trim());
        saveState();
        renderConsoleLogs();
      } catch (err) {
        clearTimeout(timer);
        const reason = err && err.name === 'AbortError' ? 'Request timed out (8s)' : (err && err.message ? err.message : 'Network/CORS error');
        state.logs.unshift(`[${timeStr}] [n8n ERROR] ${reason}`);
        saveState();
        renderConsoleLogs();
        showToast('n8n DISPATCH FAILED', reason, 'amber');
      }
    }

    async function pingN8nWebhook() {
      const input = document.getElementById('n8n-webhook-input');
      if (input && input.value.trim() !== (state.n8nWebhookUrl || '')) {
        state.n8nWebhookUrl = input.value.trim();
        saveState();
      }

      const url = (state.n8nWebhookUrl || '').trim();
      const timeStr = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });

      if (!url) {
        state.logs.unshift(`[${timeStr}] [n8n PING] Enter a webhook URL first.`);
        saveState();
        renderConsoleLogs();
        showToast('NO WEBHOOK URL', 'Paste an n8n webhook URL before testing.', 'amber');
        return;
      }

      showToast('PINGING n8n...', 'Sending test payload', 'cyan');
      await sendToN8nWebhook({
        type: 'ping',
        source: 'neural-core-command-center',
        mode: state.isDemo ? 'DEMO' : 'LIVE',
        timestamp: new Date().toISOString()
      });
    }

    function triggerPresetPrompt(text) {
      document.getElementById('console-input').value = text;
      handleConsoleSubmit(new Event('submit'));
    }

    function handleConsoleSubmit(e) {
      e.preventDefault();
      const input = document.getElementById('console-input');
      const cmd = input.value.trim();
      if (!cmd) return;
      input.value = '';

      const timeStr = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
      const projected = Number((Math.floor(Math.random() * 220) + 89).toFixed(2));
      const modeLabel = state.isDemo ? 'DEMO' : 'LIVE';

      state.logs.unshift(`[${timeStr}] [AI CORE] Compiled directive into Approval Gate (+${money(projected)} est. impact).`);
      state.logs.unshift(`> ${cmd}`);

      state.approvals.unshift({
        id: 'ap-' + Date.now(),
        dept: 'AI CORE',
        title: `Execute: "${cmd.slice(0, 52)}${cmd.length > 52 ? '...' : ''}"`,
        impact: `+${money(projected)} projected settlement`,
        amount: projected,
        time: 'Just now'
      });

      saveState();
      renderAll();
      showToast('DIRECTIVE QUEUED', 'Review and sign off in the Approval Queue tab.', 'purple');

      sendToN8nWebhook({
        type: 'directive',
        source: 'neural-core-command-center',
        directive: cmd,
        mode: modeLabel,
        estimatedImpact: projected,
        timestamp: new Date().toISOString()
      });
    }

    // ==================== APPROVAL QUEUE ====================
    function renderApprovals() {
      const list = document.getElementById('approval-list');
      if (!list) return;

      if (state.approvals.length === 0) {
        list.innerHTML = `
          <div class="rounded-2xl border border-slate-800 bg-[#0d111a] p-8 text-center">
            <div class="text-emerald-400 font-mono text-sm font-bold">QUEUE CLEAR • 0 PENDING ITEMS</div>
            <p class="text-xs text-slate-400 mt-1">All autonomous proposals have been reviewed.</p>
          </div>
        `;
        return;
      }

      list.innerHTML = state.approvals.map(item => `
        <div class="rounded-2xl border border-slate-800 bg-[#0d111a] p-4 flex flex-col sm:flex-row sm:items-center justify-between gap-4">
          <div class="space-y-1">
            <div class="flex items-center gap-2">
              <span class="px-2 py-0.5 rounded text-[10px] font-mono font-bold bg-purple-500/15 text-purple-300 border border-purple-500/30">${item.dept}</span>
              <span class="text-[11px] font-mono text-slate-500">${item.time}</span>
            </div>
            <h3 class="text-sm sm:text-base font-bold text-white">${item.title}</h3>
            <p class="text-xs font-mono text-emerald-400">${item.impact}</p>
          </div>
          <div class="flex items-center gap-2 shrink-0">
            <button onclick="decideApproval('${item.id}', false)" class="px-3.5 py-2 rounded-xl bg-slate-900 hover:bg-rose-950/60 border border-slate-700 hover:border-rose-500/50 text-xs font-mono text-slate-300 hover:text-rose-300 transition">
              Reject
            </button>
            <button onclick="decideApproval('${item.id}', true)" class="px-4 py-2 rounded-xl bg-emerald-500 hover:bg-emerald-400 text-slate-950 font-bold text-xs font-mono uppercase transition shadow-neon-emerald">
              ✓ Approve
            </button>
          </div>
        </div>
      `).join('');
    }

    function decideApproval(id, approved) {
      const idx = state.approvals.findIndex(a => a.id === id);
      if (idx === -1) return;
      const [item] = state.approvals.splice(idx, 1);
      const timeStr = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });

      if (approved) {
        const dept = state.departments.find(d => d.name === item.dept) || state.departments[0];
        if (state.isDemo) dept.demoRev += item.amount;
        else dept.liveRev += item.amount;
        dept.runs += 1;

        state.ledger.unshift({
          id: 'TX-' + Math.floor(100 + Math.random() * 900),
          time: timeStr,
          dept: item.dept,
          desc: `Approved: ${item.title}`,
          mode: state.isDemo ? 'DEMO' : 'LIVE',
          amount: item.amount
        });
        state.logs.unshift(`[${timeStr}] [APPROVED] ${item.title} -> +${money(item.amount)}`);
        spawnCanvasPulse(dept.id);
        showToast('APPROVED & SETTLED', `+${money(item.amount)} credited to ${item.dept}`, 'emerald');
      } else {
        state.logs.unshift(`[${timeStr}] [REJECTED] ${item.title}`);
        showToast('PROPOSAL REJECTED', item.title, 'amber');
      }

      saveState();
      renderAll();
    }

    function createNewProposal() {
      const presets = [
        { dept: 'SALES', title: 'Close 8-Seat Commercial Bar Group License', amount: 392.00 },
        { dept: 'PRODUCTS', title: 'Launch A6 Printable Recipe Deck Add-On', amount: 119.00 },
        { dept: 'MARKETING', title: 'Scale High-ROAS Social Funnel Creative', amount: 245.00 }
      ];
      const pick = presets[Math.floor(Math.random() * presets.length)];
      state.approvals.unshift({
        id: 'ap-' + Date.now(),
        dept: pick.dept,
        title: pick.title,
        impact: `+${money(pick.amount)} projected settlement`,
        amount: pick.amount,
        time: 'Just now'
      });
      saveState();
      renderAll();
      showToast('NEW PROPOSAL', pick.title, 'purple');
    }

    // ==================== REVENUE LEDGER, STRIPE SIM & CSV ====================
    function simulateStripeSale() {
      const products = [
        { dept: 'SALES', desc: 'Stripe Checkout • Mojito Field Guide Pro', amount: 49.00 },
        { dept: 'PRODUCTS', desc: 'Stripe Checkout • Venue License Bundle', amount: 149.00 },
        { dept: 'MARKETING', desc: 'Stripe Checkout • A6 Printable Card Pack', amount: 29.00 }
      ];
      const sale = products[Math.floor(Math.random() * products.length)];
      const dept = state.departments.find(d => d.name === sale.dept) || state.departments[0];

      if (state.isDemo) dept.demoRev += sale.amount;
      else dept.liveRev += sale.amount;
      dept.runs += 1;

      const timeStr = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
      state.ledger.unshift({
        id: 'ch_' + Math.random().toString(36).substring(2, 8).toUpperCase(),
        time: timeStr,
        dept: sale.dept,
        desc: sale.desc,
        mode: state.isDemo ? 'DEMO' : 'LIVE',
        amount: sale.amount
      });
      state.logs.unshift(`[${timeStr}] [STRIPE] ${sale.desc} -> +${money(sale.amount)}`);
      spawnCanvasPulse(dept.id);

      saveState();
      renderAll();
      showToast('STRIPE PAYMENT RECEIVED', `${sale.desc} (+${money(sale.amount)})`, 'emerald');
    }

    function handleCustomLedgerEntry(e) {
      e.preventDefault();
      const desc = document.getElementById('custom-tx-desc').value.trim();
      const deptName = document.getElementById('custom-tx-dept').value;
      const amount = parseFloat(document.getElementById('custom-tx-amount').value);
      if (!desc || isNaN(amount) || amount <= 0) return;

      const dept = state.departments.find(d => d.name === deptName) || state.departments[0];
      if (state.isDemo) dept.demoRev += amount;
      else dept.liveRev += amount;

      const timeStr = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
      state.ledger.unshift({
        id: 'TX-' + Math.floor(100 + Math.random() * 900),
        time: timeStr,
        dept: deptName,
        desc: desc,
        mode: state.isDemo ? 'DEMO' : 'LIVE',
        amount: amount
      });
      state.logs.unshift(`[${timeStr}] [LEDGER] ${desc} -> +${money(amount)}`);

      document.getElementById('custom-tx-desc').value = '';
      document.getElementById('custom-tx-amount').value = '';
      spawnCanvasPulse(dept.id);

      saveState();
      renderAll();
      showToast('SETTLEMENT RECORDED', `+${money(amount)} added to ${deptName}`, 'emerald');
    }

    function renderLedger() {
      const tbody = document.getElementById('ledger-tbody');
      const homeLog = document.getElementById('home-activity-log');
      const countEl = document.getElementById('ledger-entry-count');

      countEl.textContent = `${state.ledger.length} transactions`;

      if (homeLog) {
        if (state.ledger.length === 0) {
          homeLog.innerHTML = `<div class="p-4 text-center text-xs font-mono text-slate-500">No settlements yet. Click "+ Simulate Stripe Checkout" or run an AI agent.</div>`;
        } else {
          homeLog.innerHTML = state.ledger.slice(0, 6).map(tx => `
            <div class="flex items-center justify-between gap-2 p-2.5 rounded-xl bg-slate-950/70 border border-slate-800/80 text-xs">
              <div class="flex items-center gap-2 min-w-0">
                <span class="px-2 py-0.5 rounded text-[10px] font-mono bg-slate-900 text-cyan-300 border border-slate-800 shrink-0">${tx.dept}</span>
                <span class="text-slate-200 truncate">${tx.desc}</span>
              </div>
              <div class="flex items-center gap-2 shrink-0 font-mono">
                <span class="text-[10px] text-slate-500 hidden sm:inline">${tx.time}</span>
                <span class="text-emerald-400 font-bold">+${money(tx.amount)}</span>
              </div>
            </div>
          `).join('');
        }
      }

      if (tbody) {
        if (state.ledger.length === 0) {
          tbody.innerHTML = `<tr><td colspan="5" class="py-8 text-center font-mono text-xs text-slate-500">Ledger is at $0.00. Record a transaction or simulate a Stripe sale above.</td></tr>`;
        } else {
          tbody.innerHTML = state.ledger.map(tx => `
            <tr class="hover:bg-slate-900/40 transition">
              <td class="py-3 px-4 font-mono text-slate-400 whitespace-nowrap">${tx.time}</td>
              <td class="py-3 px-4 font-mono"><span class="px-2 py-0.5 rounded bg-slate-900 border border-slate-800 text-cyan-300 text-[11px]">${tx.dept}</span></td>
              <td class="py-3 px-4 text-slate-200">${tx.desc}</td>
              <td class="py-3 px-4 font-mono">
                <span class="px-2 py-0.5 rounded-full text-[10px] ${tx.mode === 'LIVE' ? 'bg-emerald-500/15 text-emerald-400 border border-emerald-500/30' : 'bg-amber-500/15 text-amber-400 border border-amber-500/30'}">${tx.mode}</span>
              </td>
              <td class="py-3 px-4 text-right font-mono font-bold text-emerald-400 whitespace-nowrap">+${money(tx.amount)}</td>
            </tr>
          `).join('');
        }
      }
    }

    function exportLedgerCSV() {
      const rows = [['ID', 'Time', 'Department', 'Description', 'Mode', 'Amount']];
      state.ledger.forEach(tx => rows.push([tx.id, tx.time, tx.dept, `"${tx.desc.replace(/"/g, '""')}"`, tx.mode, tx.amount.toFixed(2)]));
      const csv = rows.map(r => r.join(',')).join('\n');
      const blob = new Blob([csv], { type: 'text/csv' });
      const url = URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = `neural-core-ledger-${state.isDemo ? 'demo' : 'live'}.csv`;
      a.click();
      URL.revokeObjectURL(url);
      showToast('CSV EXPORTED', 'Downloaded settlement ledger.', 'cyan');
    }

    // ==================== 3D WIREFRAME NEURAL SPHERE CANVAS ====================
    const canvas = document.getElementById('neural-canvas');
    const ctx = canvas.getContext('2d');
    let cWidth = 800;
    let cHeight = 420;
    let rotation = 0;
    let pulses = [];
    let hitboxes = [];

    // Geodesic wireframe sphere points
    const vertices = [];
    for (let r = 1; r < 7; r++) {
      const phi = (Math.PI * r) / 7;
      for (let p = 0; p < 12; p++) {
        const theta = (2 * Math.PI * p) / 12;
        vertices.push({
          x: Math.sin(phi) * Math.cos(theta),
          y: Math.cos(phi),
          z: Math.sin(phi) * Math.sin(theta)
        });
      }
    }

    const orbitNodes = [
      { id: 'products',  label: 'PRODUCTS',  color: '#a855f7', rx: -0.34, ry: -0.26 },
      { id: 'research',  label: 'RESEARCH',  color: '#00f0ff', rx:  0.30, ry: -0.31 },
      { id: 'aicore',    label: 'AI CORE',   color: '#ec4899', rx:  0.43, ry: -0.10 },
      { id: 'finance',   label: 'FINANCE',   color: '#f59e0b', rx:  0.28, ry:  0.09 },
      { id: 'marketing', label: 'MARKETING', color: '#fb923c', rx: -0.41, ry:  0.14 },
      { id: 'sales',     label: 'SALES',     color: '#10b981', rx: -0.25, ry:  0.29 }
    ];

    function resizeCanvas() {
      const box = document.getElementById('visualizer-neural');
      if (!box) return;
      const rect = box.getBoundingClientRect();
      const dpr = window.devicePixelRatio || 1;
      cWidth = rect.width || 600;
      cHeight = rect.height || 400;
      canvas.width = cWidth * dpr;
      canvas.height = cHeight * dpr;
      ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    }

    function spawnCanvasPulse(deptId) {
      const node = orbitNodes.find(n => n.id === deptId);
      if (!node) return;
      pulses.push({ deptId, color: node.color, t: 0, speed: 0.028 });
    }

    function drawRoundedPill(x, y, w, h, r) {
      ctx.beginPath();
      ctx.moveTo(x + r, y);
      ctx.lineTo(x + w - r, y);
      ctx.quadraticCurveTo(x + w, y, x + w, y + r);
      ctx.lineTo(x + w, y + h - r);
      ctx.quadraticCurveTo(x + w, y + h, x + w - r, y + h);
      ctx.lineTo(x + r, y + h);
      ctx.quadraticCurveTo(x, y + h, x, y + h - r);
      ctx.lineTo(x, y + r);
      ctx.quadraticCurveTo(x, y, x + r, y);
      ctx.closePath();
    }

    function animateNeuralCore() {
      ctx.clearRect(0, 0, cWidth, cHeight);
      const cx = cWidth / 2;
      const cy = cHeight / 2 + 6;
      const radius = Math.min(cWidth, cHeight) * 0.17;

      // Ambient Core Glow
      const glow = ctx.createRadialGradient(cx, cy, 4, cx, cy, radius * 2.1);
      glow.addColorStop(0, 'rgba(0, 240, 255, 0.22)');
      glow.addColorStop(0.55, 'rgba(16, 185, 129, 0.06)');
      glow.addColorStop(1, 'rgba(7, 9, 14, 0)');
      ctx.fillStyle = glow;
      ctx.beginPath();
      ctx.arc(cx, cy, radius * 2.1, 0, Math.PI * 2);
      ctx.fill();

      const spreadX = Math.min(cWidth * 0.88, 680);
      const spreadY = Math.min(cHeight * 0.85, 340);
      hitboxes = [];

      // Orbiting Department Nodes & Conduits
      orbitNodes.forEach((node, idx) => {
        const dept = state.departments.find(d => d.id === node.id);
        const bobY = Math.sin(rotation * 2 + idx) * 4;
        const nx = cx + node.rx * spreadX;
        const ny = cy + node.ry * spreadY + bobY;

        // Conduit Line
        ctx.strokeStyle = dept && dept.active ? `${node.color}48` : 'rgba(100,116,139,0.2)';
        ctx.lineWidth = 1.4;
        ctx.beginPath();
        ctx.moveTo(cx, cy);
        ctx.lineTo(nx, ny);
        ctx.stroke();

        // Satellite Glow
        const satGlow = ctx.createRadialGradient(nx, ny, 1, nx, ny, 18);
        satGlow.addColorStop(0, node.color);
        satGlow.addColorStop(1, 'rgba(0,0,0,0)');
        ctx.fillStyle = satGlow;
        ctx.beginPath();
        ctx.arc(nx, ny, 18, 0, Math.PI * 2);
        ctx.fill();

        ctx.fillStyle = dept && dept.active ? node.color : '#475569';
        ctx.beginPath();
        ctx.arc(nx, ny, 5.5, 0, Math.PI * 2);
        ctx.fill();

        // Pill Badge
        ctx.font = '600 10px "JetBrains Mono", monospace';
        const labelW = ctx.measureText(node.label).width;
        const pillW = labelW + 26;
        const pillH = 24;
        const px = nx - pillW / 2;
        const py = ny - 32;

        ctx.fillStyle = 'rgba(10, 14, 24, 0.92)';
        ctx.strokeStyle = dept && dept.active ? `${node.color}88` : '#334155';
        ctx.lineWidth = 1;
        drawRoundedPill(px, py, pillW, pillH, 12);
        ctx.fill();
        ctx.stroke();

        ctx.fillStyle = dept && dept.active ? node.color : '#64748b';
        ctx.beginPath();
        ctx.arc(px + 10, py + pillH / 2, 3, 0, Math.PI * 2);
        ctx.fill();

        ctx.fillStyle = '#e2e8f0';
        ctx.textAlign = 'left';
        ctx.textBaseline = 'middle';
        ctx.fillText(node.label, px + 18, py + pillH / 2 + 0.5);

        hitboxes.push({
          id: node.id,
          x: Math.min(px, nx - 18),
          y: py,
          w: Math.max(pillW, 36),
          h: 52
        });
      });

      // Data Pulses
      pulses = pulses.filter(p => p.t < 1);
      pulses.forEach(p => {
        p.t += p.speed;
        const n = orbitNodes.find(item => item.id === p.deptId);
        if (!n) return;
        const nx = cx + n.rx * spreadX;
        const ny = cy + n.ry * spreadY;
        const x = cx + (nx - cx) * p.t;
        const y = cy + (ny - cy) * p.t;

        ctx.fillStyle = p.color;
        ctx.shadowColor = p.color;
        ctx.shadowBlur = 12;
        ctx.beginPath();
        ctx.arc(x, y, 4, 0, Math.PI * 2);
        ctx.fill();
        ctx.shadowBlur = 0;
      });

      // Rotating 3D Geodesic Wireframe Sphere
      rotation += 0.008;
      const cosR = Math.cos(rotation);
      const sinR = Math.sin(rotation);
      const proj = vertices.map(v => {
        const x1 = v.x * cosR - v.z * sinR;
        const z1 = v.z * cosR + v.x * sinR;
        return { x: cx + x1 * radius, y: cy + v.y * radius, z: z1 };
      });

      ctx.strokeStyle = 'rgba(0, 240, 255, 0.36)';
      ctx.lineWidth = 0.9;
      for (let i = 0; i < proj.length; i++) {
        for (let j = i + 1; j < proj.length; j++) {
          const dist = Math.hypot(proj[i].x - proj[j].x, proj[i].y - proj[j].y);
          if (dist < radius * 0.56) {
            ctx.beginPath();
            ctx.moveTo(proj[i].x, proj[i].y);
            ctx.lineTo(proj[j].x, proj[j].y);
            ctx.stroke();
          }
        }
      }

      proj.forEach(pt => {
        ctx.fillStyle = pt.z > 0 ? '#00f0ff' : 'rgba(0, 240, 255, 0.25)';
        ctx.beginPath();
        ctx.arc(pt.x, pt.y, pt.z > 0 ? 2 : 1.2, 0, Math.PI * 2);
        ctx.fill();
      });

      ctx.font = '700 10px "JetBrains Mono", monospace';
      ctx.fillStyle = '#a5f3fc';
      ctx.textAlign = 'center';
      ctx.textBaseline = 'middle';
      ctx.fillText('NEURAL CORE', cx, cy);

      requestAnimationFrame(animateNeuralCore);
    }

    canvas.addEventListener('click', (e) => {
      const rect = canvas.getBoundingClientRect();
      const x = e.clientX - rect.left;
      const y = e.clientY - rect.top;

      for (const box of hitboxes) {
        if (x >= box.x && x <= box.x + box.w && y >= box.y && y <= box.y + box.h) {
          runAgentNode(box.id);
          return;
        }
      }

      if (Math.hypot(x - cWidth / 2, y - (cHeight / 2 + 6)) < 65) {
        runSwarmCycle();
      }
    });

    setInterval(() => {
      if (state.activeTab === 'home' && state.visualizerMode === 'neural') {
        const active = state.departments.filter(d => d.active);
        if (active.length) {
          const pick = active[Math.floor(Math.random() * active.length)];
          spawnCanvasPulse(pick.id);
        }
      }
    }, 1500);

    window.addEventListener('resize', () => {
      if (state.visualizerMode === 'neural') resizeCanvas();
    });

    window.onload = function () {
      renderAll();
      setVisualizerMode(state.visualizerMode || 'neural');
      switchTab(state.activeTab || 'home');
      resizeCanvas();
      animateNeuralCore();
    };
  </script>
</body>
</html>

<!DOCTYPE html>
<html lang="en" class="dark">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Neural Core • Autonomous Minion Command Center</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&family=JetBrains+Mono:wght@400;600;700&display=swap" rel="stylesheet" />
  <script>
    tailwind.config = {
      darkMode: 'class',
      theme: {
        extend: {
          fontFamily: {
            sans: ['Inter', 'sans-serif'],
            mono: ['JetBrains Mono', 'monospace']
          }
        }
      }
    };
  </script>
  <style>
    body { background-color: #030712; color: #e2e8f0; font-family: 'Inter', sans-serif; overflow-x: hidden; }
    .cyber-grid {
      background-size: 28px 28px;
      background-image:
        linear-gradient(to right, rgba(6, 182, 212, 0.05) 1px, transparent 1px),
        linear-gradient(to bottom, rgba(6, 182, 212, 0.05) 1px, transparent 1px);
    }
    ::-webkit-scrollbar { width: 5px; height: 5px; }
    ::-webkit-scrollbar-track { background: #030712; }
    ::-webkit-scrollbar-thumb { background: #1e293b; border-radius: 999px; }
  </style>
</head>
<body class="min-h-screen flex flex-col pb-20 lg:pb-8 selection:bg-cyan-500/30 selection:text-cyan-200">

  <!-- Toast Stack -->
  <div id="toast-container" class="fixed top-4 right-4 z-[60] flex flex-col gap-2 max-w-sm w-full pointer-events-none px-4 sm:px-0"></div>

  <!-- TOP COMMAND HEADER -->
  <header class="sticky top-0 z-40 bg-[#030712]/90 backdrop-blur-md border-b border-slate-800">
    <div class="max-w-7xl mx-auto px-4 h-16 flex items-center justify-between gap-2 sm:gap-3">
      <!-- Brand + Clickable DEMO / LIVE Toggle Pill -->
      <div class="flex items-center gap-2.5 min-w-0">
        <button onclick="switchTab('home')" class="w-9 h-9 rounded-xl bg-cyan-950/80 border border-cyan-500/40 hover:border-cyan-400 flex items-center justify-center text-cyan-400 font-bold font-mono text-xs shrink-0 transition">
          NC
        </button>
        <div class="min-w-0">
          <div class="flex items-center gap-2">
            <span onclick="switchTab('home')" class="cursor-pointer font-bold text-sm text-white truncate">Command Center</span>
            <button id="mode-pill" onclick="toggleMode()" title="Click to switch between DEMO and LIVE mode" class="cursor-pointer text-[10px] font-mono font-bold uppercase px-2.5 py-0.5 rounded-full bg-amber-500/15 text-amber-400 border border-amber-500/40 hover:opacity-85 transition shrink-0">
              DEMO
            </button>
          </div>
          <p id="header-sub" class="text-[10px] font-mono text-amber-400/90 uppercase tracking-wider truncate">
            24/7 AUTO-SIMULATION • TAP BADGE FOR LIVE
          </p>
        </div>
      </div>

      <!-- Desktop 4-Tab Navigation -->
      <nav class="hidden lg:flex items-center gap-1 bg-slate-900 p-1 rounded-xl border border-slate-800 font-mono text-xs">
        <button onclick="switchTab('home')" data-tab="home" class="nav-btn px-3 py-1.5 rounded-lg text-cyan-300 bg-cyan-500/20">Floorplan</button>
        <button onclick="switchTab('roster')" data-tab="roster" class="nav-btn px-3 py-1.5 rounded-lg text-slate-400 hover:text-white">Minion Workforce</button>
        <button onclick="switchTab('console')" data-tab="console" class="nav-btn px-3 py-1.5 rounded-lg text-slate-400 hover:text-white">AI Money Orders</button>
        <button onclick="switchTab('ledger')" data-tab="ledger" class="nav-btn px-3 py-1.5 rounded-lg text-slate-400 hover:text-white">Revenue Ledger</button>
      </nav>

      <!-- Revenue Ticker -->
      <div onclick="switchTab('ledger')" class="cursor-pointer text-right bg-slate-900 hover:border-emerald-500/40 border border-slate-800 px-3 py-1 rounded-xl shrink-0 transition">
        <div id="head-rev-lbl" class="text-[9px] font-mono text-slate-400 uppercase">DEMO REVENUE</div>
        <div id="head-rev" class="text-xs sm:text-sm font-mono font-bold text-emerald-400">$0.00</div>
      </div>
    </div>
  </header>

  <!-- MAIN WORKSPACE -->
  <main class="flex-1 max-w-7xl w-full mx-auto px-4 pt-4 space-y-4">

    <!-- Mode Status Banner -->
    <section id="mode-banner" class="rounded-2xl border border-amber-500/35 bg-amber-950/20 p-3.5 flex flex-col sm:flex-row sm:items-center justify-between gap-3">
      <div class="text-xs font-mono leading-relaxed">
        <span id="banner-text" class="text-amber-200">
          <strong>DEMO MODE:</strong> Minions are running automated 24/7 simulated earnings. Click the <strong>DEMO</strong> badge above or the button to switch to <strong>LIVE</strong> mode ($0.00 start, fake ticks paused).
        </span>
      </div>
      <button id="banner-toggle-btn" onclick="toggleMode()" class="px-3.5 py-2 rounded-xl bg-amber-500/20 hover:bg-amber-500/30 border border-amber-500/50 text-amber-300 font-mono text-xs font-bold shrink-0 transition">
        Switch to LIVE Mode
      </button>
    </section>

    <!-- ==================== TAB 1: FLOORPLAN & CORE ==================== -->
    <div id="tab-home" class="tab-view space-y-4">
      <section class="rounded-2xl border border-slate-800 bg-[#060b14] cyber-grid overflow-hidden shadow-2xl">
        <div class="p-3 sm:px-5 border-b border-slate-800 flex flex-wrap items-center justify-between gap-2 bg-[#04070e]">
          <div>
            <span class="text-[10px] font-mono text-cyan-400 uppercase tracking-wider">SECTOR-7 // WORKSTATION FLOORPLAN</span>
            <h2 class="text-sm sm:text-base font-bold text-white">Live Minion Bays &amp; Yield Telemetry</h2>
          </div>
          <button id="home-action-btn" onclick="handleHomePrimaryAction()" class="px-3.5 py-1.5 rounded-xl bg-emerald-500/20 hover:bg-emerald-500/30 border border-emerald-500/40 text-emerald-300 font-mono text-xs font-bold transition">
            ⚡ Supercharge All Minions
          </button>
        </div>

        <!-- Interactive Canvas -->
        <div id="fp-wrap" class="relative w-full h-[390px] sm:h-[370px]">
          <canvas id="c-fp" class="w-full h-full block cursor-pointer"></canvas>
        </div>

        <div class="px-4 py-2.5 border-t border-slate-800 bg-[#050911] flex items-center justify-between text-[11px] font-mono text-slate-400">
          <span>Tap any Minion workstation bay to boost speed or log progress</span>
          <span id="fp-mode-status" class="text-amber-400">AUTO-TICK: ON</span>
        </div>
      </section>

      <!-- KPIs -->
      <section class="grid grid-cols-2 lg:grid-cols-4 gap-3 font-mono text-xs">
        <div class="rounded-xl border border-slate-800 bg-[#080d18] p-3.5">
          <div id="kpi-rev-lbl" class="text-slate-400 text-[10px]">DEMO EARNINGS</div>
          <div id="kpi-rev" class="text-lg font-bold text-emerald-400 mt-1">$0.00</div>
        </div>
        <div class="rounded-xl border border-slate-800 bg-[#080d18] p-3.5">
          <div class="text-slate-400 text-[10px]">EST. RUN RATE</div>
          <div id="kpi-rate" class="text-lg font-bold text-cyan-400 mt-1">$0.00/min</div>
        </div>
        <div class="rounded-xl border border-slate-800 bg-[#080d18] p-3.5">
          <div class="text-slate-400 text-[10px]">ACTIVE WORKFORCE</div>
          <div id="kpi-alive" class="text-lg font-bold text-emerald-400 mt-1">6 / 6 Online</div>
        </div>
        <div class="rounded-xl border border-slate-800 bg-[#080d18] p-3.5">
          <div class="text-slate-400 text-[10px]">AI DIRECTIVES</div>
          <div id="kpi-dirs" class="text-lg font-bold text-purple-400 mt-1">0 Boosters</div>
        </div>
      </section>
    </div>

    <!-- ==================== TAB 2: MINION WORKFORCE ==================== -->
    <div id="tab-roster" class="tab-view hidden space-y-4">
      <div class="flex flex-wrap justify-between items-center gap-2">
        <div>
          <h2 class="text-base font-bold text-white">Minion Workforce Roster</h2>
          <p class="text-xs text-slate-400">Inspect department attribution, multipliers, and active AI directives.</p>
        </div>
        <button onclick="superchargeAll()" class="px-3.5 py-2 rounded-xl bg-cyan-500/20 hover:bg-cyan-500/30 border border-cyan-500/40 text-cyan-300 font-mono text-xs font-bold transition">
          ⚡ Boost Workforce Speed
        </button>
      </div>
      <div id="roster-grid" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-3"></div>
    </div>

    <!-- ==================== TAB 3: AI MONEY ORDERS ==================== -->
    <div id="tab-console" class="tab-view hidden space-y-4">
      <div class="grid grid-cols-1 lg:grid-cols-12 gap-4">
        <div class="lg:col-span-7 rounded-2xl border border-slate-800 bg-[#080d18] flex flex-col h-[480px]">
          <div class="p-3.5 border-b border-slate-800 bg-slate-950 font-mono text-xs flex flex-wrap justify-between items-center gap-2">
            <span class="font-bold text-cyan-300">AI Money Order Console (+50% Yield Booster)</span>
            <select id="console-target" class="bg-slate-900 border border-slate-700 rounded-lg px-2.5 py-1 text-white outline-none"></select>
          </div>
          <div id="console-stream" class="flex-1 p-3.5 overflow-y-auto space-y-2 font-mono text-xs bg-[#04070e]"></div>
          <form onsubmit="submitAI(event)" class="p-3 border-t border-slate-800 bg-slate-950 flex gap-2">
            <input id="console-input" type="text" placeholder="Type AI directive (e.g. 'Focus on high-ticket bundles')..." class="flex-1 bg-slate-900 border border-slate-700 focus:border-cyan-500 rounded-xl px-3 py-2 text-xs text-white font-mono outline-none" required />
            <button type="submit" class="px-4 py-2 rounded-xl bg-cyan-500 hover:bg-cyan-400 text-slate-950 font-bold font-mono text-xs uppercase shrink-0 transition">
              Save &amp; Run
            </button>
          </form>
        </div>

        <div class="lg:col-span-5 rounded-2xl border border-slate-800 bg-[#080d18] flex flex-col h-[480px]">
          <div class="p-3.5 border-b border-slate-800 bg-slate-950 font-mono text-xs font-bold text-white uppercase flex justify-between items-center">
            <span>Saved AI Directives</span>
            <span id="dir-count-pill" class="text-[10px] text-cyan-400">0 SAVED</span>
          </div>
          <div id="directives-list" class="flex-1 p-3.5 overflow-y-auto space-y-2 font-mono text-xs"></div>
        </div>
      </div>
    </div>

    <!-- ==================== TAB 4: REVENUE LEDGER ==================== -->
    <div id="tab-ledger" class="tab-view hidden space-y-4">
      <div class="flex flex-wrap justify-between items-center gap-2">
        <div>
          <h2 class="text-base font-bold text-white">Revenue &amp; Sale Attribution Ledger</h2>
          <p id="ledger-sub" class="text-xs text-slate-400">Log real sales manually in LIVE mode or simulate test checkouts in DEMO mode.</p>
        </div>
        <div class="flex items-center gap-2">
          <button id="sim-sale-btn" onclick="simulateDemoSale()" class="px-3.5 py-2 rounded-xl bg-amber-500/20 hover:bg-amber-500/30 border border-amber-500/40 text-amber-300 font-mono font-bold text-xs uppercase transition">
            + Simulate Sale
          </button>
          <button onclick="exportCSV()" class="px-3.5 py-2 rounded-xl bg-slate-900 hover:bg-slate-800 border border-slate-700 text-slate-200 font-mono text-xs transition">
            Export CSV
          </button>
        </div>
      </div>

      <!-- Manual '+ Log Sale' Form (Ideal for LIVE Mode without Stripe/Backend) -->
      <form onsubmit="handleLogRealSale(event)" class="rounded-2xl border border-emerald-500/30 bg-[#080d18] p-4 grid grid-cols-1 sm:grid-cols-12 gap-3 font-mono text-xs">
        <div class="sm:col-span-5">
          <label class="block text-[10px] text-slate-400 uppercase mb-1">Sale / Product Description</label>
          <input id="sale-desc" type="text" required placeholder="e.g., Client Retainer or Digital Guide Sale" class="w-full bg-slate-900 border border-slate-700 focus:border-emerald-500 rounded-xl px-3 py-2 text-white outline-none" />
        </div>
        <div class="sm:col-span-3">
          <label class="block text-[10px] text-slate-400 uppercase mb-1">Assign Minion</label>
          <select id="sale-minion" class="w-full bg-slate-900 border border-slate-700 focus:border-emerald-500 rounded-xl px-3 py-2 text-white outline-none"></select>
        </div>
        <div class="sm:col-span-2">
          <label class="block text-[10px] text-slate-400 uppercase mb-1">Amount ($)</label>
          <input id="sale-amount" type="number" step="0.01" min="0.01" required placeholder="99.00" class="w-full bg-slate-900 border border-slate-700 focus:border-emerald-500 rounded-xl px-3 py-2 text-white outline-none" />
        </div>
        <div class="sm:col-span-2 flex items-end">
          <button type="submit" class="w-full py-2 px-3 rounded-xl bg-emerald-500 hover:bg-emerald-400 text-slate-950 font-bold uppercase transition h-[34px]">
            + Log Sale
          </button>
        </div>
      </form>

      <!-- Ledger Table -->
      <div class="rounded-2xl border border-slate-800 bg-[#080d18] overflow-hidden font-mono text-xs">
        <div class="overflow-x-auto">
          <table class="w-full text-left border-collapse">
            <thead class="bg-slate-950 text-slate-400 border-b border-slate-800 text-[10px] uppercase">
              <tr>
                <th class="p-3">Time</th>
                <th class="p-3">Minion</th>
                <th class="p-3">Description</th>
                <th class="p-3">Mode</th>
                <th class="p-3 text-right">Amount</th>
              </tr>
            </thead>
            <tbody id="ledger-tbody" class="divide-y divide-slate-800/60"></tbody>
          </table>
        </div>
      </div>
    </div>

  </main>

  <!-- Mobile Bottom Navigation -->
  <nav class="lg:hidden fixed bottom-0 left-0 right-0 z-40 bg-[#030712]/95 backdrop-blur-md border-t border-slate-800 px-2 py-2 font-mono">
    <div class="grid grid-cols-4 gap-1 text-center text-[10px]">
      <button onclick="switchTab('home')" data-tab="home" class="mob-btn py-1.5 rounded-lg text-cyan-400 font-bold">Floorplan</button>
      <button onclick="switchTab('roster')" data-tab="roster" class="mob-btn py-1.5 rounded-lg text-slate-400">Minions</button>
      <button onclick="switchTab('console')" data-tab="console" class="mob-btn py-1.5 rounded-lg text-slate-400">AI Orders</button>
      <button onclick="switchTab('ledger')" data-tab="ledger" class="mob-btn py-1.5 rounded-lg text-slate-400">Ledger</button>
    </div>
  </nav>

  <script>
    // ==================== 1. PERSISTENT STATE (localStorage v5) ====================
    const STORAGE = 'neural_core_v5';

    const DEMO_MINIONS = [
      { id: 'products', dept: 'PRODUCTS', name: 'Kev-01', visor: '#a855f7', alive: true, total: 3450, rate: 35, speed: 2.0, phrase: 'Selling A6 Bundle!' },
      { id: 'research', dept: 'RESEARCH', name: 'Stu-X', visor: '#06b6d4', alive: true, total: 2910, rate: 30, speed: 2.0, phrase: 'High-margin niches!' },
      { id: 'marketing', dept: 'MARKETING', name: 'Bob-M', visor: '#fb923c', alive: true, total: 4120, rate: 40, speed: 2.5, phrase: 'Viral funnel live!' },
      { id: 'sales', dept: 'SALES', name: 'Otto-V', visor: '#22c55e', alive: true, total: 7840, rate: 65, speed: 3.0, phrase: 'Closing B2B deal!' },
      { id: 'finance', dept: 'FINANCE', name: 'Mel-9', visor: '#f59e0b', alive: true, total: 3100, rate: 32, speed: 2.0, phrase: 'Yield +14% optimized' },
      { id: 'aicore', dept: 'AI CORE', name: 'Gru-Prime', visor: '#ec4899', alive: true, total: 6200, rate: 55, speed: 3.0, phrase: 'Swarm routing active' }
    ];

    const DEMO_LEDGER = [
      { time: '12:00 PM', minion: 'Otto-V', desc: 'Demo Enterprise Venue Pack', mode: 'DEMO', amount: 250.00 },
      { time: '11:42 AM', minion: 'Kev-01', desc: 'Demo Digital Guide Bundle', mode: 'DEMO', amount: 79.00 }
    ];

    function buildDefaultState() {
      return {
        isDemo: true,
        activeTab: 'home',
        minions: JSON.parse(JSON.stringify(DEMO_MINIONS)),
        directives: [],
        ledger: JSON.parse(JSON.stringify(DEMO_LEDGER)),
        events: ['[SYSTEM] Persistent storage v5 initialized. Click DEMO pill in header to switch to LIVE mode ($0.00).']
      };
    }

    let state = (() => {
      try {
        const saved = JSON.parse(localStorage.getItem(STORAGE));
        if (saved && Array.isArray(saved.minions) && saved.minions.length === 6) return saved;
      } catch (e) {}
      return buildDefaultState();
    })();

    function save() {
      try { localStorage.setItem(STORAGE, JSON.stringify(state)); } catch (e) {}
    }

    function money(n) { return '$' + Number(n || 0).toLocaleString('en-US', { minimumFractionDigits: 2, maximumFractionDigits: 2 }); }
    function shortMoney(n) { return '$' + Math.round(n || 0).toLocaleString('en-US'); }

    function showToast(title, msg, tone = 'cyan') {
      const c = document.getElementById('toast-container');
      const border = tone === 'emerald' ? 'border-emerald-500/60 text-emerald-300' : tone === 'amber' ? 'border-amber-500/60 text-amber-300' : 'border-cyan-500/60 text-cyan-300';
      const el = document.createElement('div');
      el.className = `pointer-events-auto rounded-xl border ${border} bg-slate-950/95 p-3 text-xs font-mono shadow-2xl transition-opacity duration-300`;
      el.innerHTML = `<div class="font-bold">${title}</div><div class="text-slate-300 mt-0.5">${msg}</div>`;
      c.appendChild(el);
      setTimeout(() => { el.style.opacity = '0'; setTimeout(() => el.remove(), 300); }, 2800);
    }

    // ==================== 2. TOGGLE DEMO / LIVE MODE ====================
    function toggleMode() {
      state.isDemo = !state.isDemo;
      const timeStr = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });

      if (!state.isDemo) {
        // LIVE MODE: Reset fake balances to $0.00 and pause simulated auto-ticks
        state.minions.forEach(m => { m.total = 0; });
        state.ledger = [];
        state.events.unshift(`[${timeStr}] [LIVE MODE] Switched out of Demo Mode. Balances reset to $0.00 and fake background ticks paused. Use "+ Log Sale" to record real revenue.`);
        showToast('LIVE MODE ACTIVE', 'Balances reset to $0.00. Fake auto-ticks paused—log real sales in the Ledger!', 'emerald');
      } else {
        // DEMO MODE: Restore demo metrics and resume 24/7 auto-simulation
        state.minions = JSON.parse(JSON.stringify(DEMO_MINIONS));
        state.ledger = JSON.parse(JSON.stringify(DEMO_LEDGER));
        state.events.unshift(`[${timeStr}] [DEMO MODE] Restored 24/7 simulated earnings loop.`);
        showToast('DEMO MODE RESTORED', '24/7 simulated background earnings resumed.', 'amber');
      }

      save();
      render();
    }

    // ==================== 3. BACKGROUND SIMULATION LOOP (DEMO ONLY) ====================
    setInterval(() => {
      if (!state.isDemo) return; // Paused in LIVE mode so no fake money is added

      state.minions.forEach(m => {
        if (!m.alive) return;
        const dirCount = state.directives.filter(d => d.active && d.minionId === m.id).length;
        const mult = 1 + dirCount * 0.5;
        const inc = Number((m.rate * m.speed * mult * 0.5).toFixed(2));
        m.total = Number((m.total + inc).toFixed(2));
      });

      if (Math.random() < 0.3) {
        const activeM = state.minions[Math.floor(Math.random() * state.minions.length)];
        const payout = Math.round(45 + Math.random() * 110);
        activeM.total = Number((activeM.total + payout).toFixed(2));
        state.ledger.unshift({
          time: new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', second: '2-digit' }),
          minion: activeM.name,
          desc: 'Demo 24/7 Auto-Checkout',
          mode: 'DEMO',
          amount: payout
        });
        if (state.ledger.length > 35) state.ledger.pop();
      }

      save();
      updateReadouts();
    }, 1000);

    // ==================== 4. UI UPDATES & RENDERING ====================
    function updateReadouts() {
      const totalRev = state.minions.reduce((s, m) => s + m.total, 0);
      const activeBoosters = state.directives.filter(d => d.active).length;
      const ratePerMin = state.isDemo
        ? state.minions.reduce((s, m) => s + (m.rate * m.speed * 30), 0)
        : 0;

      document.getElementById('head-rev').textContent = money(totalRev);
      document.getElementById('kpi-rev').textContent = money(totalRev);
      document.getElementById('kpi-rate').textContent = state.isDemo ? `${money(ratePerMin)}/min` : 'Manual Log';
      document.getElementById('kpi-dirs').textContent = `${activeBoosters} Booster${activeBoosters === 1 ? '' : 's'}`;
    }

    function render() {
      updateReadouts();

      // Update Mode Pill & Banners
      const pill = document.getElementById('mode-pill');
      const sub = document.getElementById('header-sub');
      const revLbl = document.getElementById('head-rev-lbl');
      const kpiRevLbl = document.getElementById('kpi-rev-lbl');
      const banner = document.getElementById('mode-banner');
      const bannerText = document.getElementById('banner-text');
      const bannerBtn = document.getElementById('banner-toggle-btn');
      const fpStatus = document.getElementById('fp-mode-status');
      const homeActionBtn = document.getElementById('home-action-btn');
      const simSaleBtn = document.getElementById('sim-sale-btn');

      if (state.isDemo) {
        pill.textContent = 'DEMO';
        pill.className = 'cursor-pointer text-[10px] font-mono font-bold uppercase px-2.5 py-0.5 rounded-full bg-amber-500/15 text-amber-400 border border-amber-500/40 hover:opacity-85 transition shrink-0';
        sub.textContent = '24/7 AUTO-SIMULATION • TAP BADGE FOR LIVE';
        sub.className = 'text-[10px] font-mono text-amber-400/90 uppercase tracking-wider truncate';
        revLbl.textContent = 'DEMO REVENUE';
        kpiRevLbl.textContent = 'DEMO EARNINGS';
        banner.className = 'rounded-2xl border border-amber-500/35 bg-amber-950/20 p-3.5 flex flex-col sm:flex-row sm:items-center justify-between gap-3';
        bannerText.innerHTML = `<span class="text-amber-200"><strong>DEMO MODE:</strong> Minions are running automated 24/7 simulated earnings. Click the <strong>DEMO</strong> badge above or switch to <strong>LIVE</strong> mode ($0.00 start, fake ticks paused) to log real sales.</span>`;
        bannerBtn.textContent = 'Switch to LIVE Mode';
        bannerBtn.className = 'px-3.5 py-2 rounded-xl bg-amber-500/20 hover:bg-amber-500/30 border border-amber-500/50 text-amber-300 font-mono text-xs font-bold shrink-0 transition';
        fpStatus.textContent = 'AUTO-TICK: ON (DEMO)';
        fpStatus.className = 'text-amber-400';
        homeActionBtn.textContent = '⚡ Supercharge All Minions';
        if (simSaleBtn) simSaleBtn.classList.remove('hidden');
      } else {
        pill.textContent = 'LIVE';
        pill.className = 'cursor-pointer text-[10px] font-mono font-bold uppercase px-2.5 py-0.5 rounded-full bg-emerald-500/20 text-emerald-400 border border-emerald-500/50 hover:opacity-85 transition shrink-0';
        sub.textContent = 'LIVE TRACKING • REAL SALES LEDGER';
        sub.className = 'text-[10px] font-mono text-emerald-400 uppercase tracking-wider truncate';
        revLbl.textContent = 'LIVE REVENUE';
        kpiRevLbl.textContent = 'REAL EARNINGS';
        banner.className = 'rounded-2xl border border-emerald-500/35 bg-emerald-950/20 p-3.5 flex flex-col sm:flex-row sm:items-center justify-between gap-3';
        bannerText.innerHTML = `<span class="text-emerald-200"><strong>LIVE MODE ACTIVE:</strong> Simulated fake background ticks are paused. Use <strong>+ Log Sale</strong> in the Revenue Ledger (or click any workstation bay) to record real earnings.</span>`;
        bannerBtn.textContent = 'Restore DEMO Mode';
        bannerBtn.className = 'px-3.5 py-2 rounded-xl bg-slate-900 hover:bg-slate-800 border border-slate-700 text-slate-300 font-mono text-xs font-bold shrink-0 transition';
        fpStatus.textContent = 'LIVE LEDGER MODE (NO FAKE TICKS)';
        fpStatus.className = 'text-emerald-400';
        homeActionBtn.textContent = '+ Log Real Sale';
        if (simSaleBtn) simSaleBtn.classList.add('hidden');
      }

      // Dropdown options
      const opts = state.minions.map(m => `<option value="${m.id}">${m.name} (${m.dept})</option>`).join('');
      const cTarget = document.getElementById('console-target');
      const sTarget = document.getElementById('sale-minion');
      if (cTarget && cTarget.innerHTML !== opts) cTarget.innerHTML = opts;
      if (sTarget && sTarget.innerHTML !== opts) sTarget.innerHTML = opts;

      // Roster Grid
      document.getElementById('roster-grid').innerHTML = state.minions.map(m => {
        const dirs = state.directives.filter(d => d.active && d.minionId === m.id);
        return `
          <div class="rounded-2xl border border-slate-800 bg-[#080d18] p-3.5 space-y-2.5 font-mono text-xs">
            <div class="flex justify-between items-center">
              <span class="px-2 py-0.5 rounded bg-slate-900 border border-slate-700 text-cyan-300 font-bold">${m.dept}</span>
              <span class="${state.isDemo ? 'text-amber-400' : 'text-emerald-400'} font-bold">${state.isDemo ? 'DEMO AUTO' : 'LIVE READY'}</span>
            </div>
            <div class="flex items-center gap-3">
              <div class="w-10 h-10 rounded-xl bg-slate-900 border border-slate-700 flex items-center justify-center text-lg">🟡</div>
              <div class="min-w-0">
                <div class="font-bold text-white">${m.name} <span class="text-cyan-400">(${m.speed}x)</span></div>
                <div class="text-[10px] text-slate-400 truncate">${dirs.length ? '🤖 ' + dirs[0].text : m.phrase}</div>
              </div>
            </div>
            <div class="flex justify-between items-center pt-2 border-t border-slate-800">
              <span class="text-[10px] text-slate-400">Attributed: <strong class="text-emerald-400">${shortMoney(m.total)}</strong></span>
              <button onclick="superchargeMinion('${m.id}')" class="px-3 py-1 rounded-lg bg-emerald-500/20 hover:bg-emerald-500/30 text-emerald-300 border border-emerald-500/40 font-bold transition">
                ⚡ Boost
              </button>
            </div>
          </div>
        `;
      }).join('');

      // Console Stream & Directives
      document.getElementById('console-stream').innerHTML = state.events.map(ev => `
        <div class="${ev.startsWith('>') ? 'text-cyan-300 font-bold' : 'text-slate-300'}">${ev}</div>
      `).join('');

      document.getElementById('dir-count-pill').textContent = `${state.directives.length} SAVED`;
      document.getElementById('directives-list').innerHTML = state.directives.length === 0
        ? '<div class="text-slate-500 text-center py-6">No saved AI directives yet. Give an order on the left to save it permanently!</div>'
        : state.directives.map(d => `
          <div class="p-2.5 rounded-xl border border-emerald-500/30 bg-emerald-950/15 space-y-1">
            <div class="flex justify-between items-center text-[10px] text-emerald-400">
              <span>${d.minionName} (+50% Yield)</span>
              <button onclick="delDir('${d.id}')" class="text-rose-400 hover:text-rose-300">Remove</button>
            </div>
            <div class="text-slate-200">${d.text}</div>
          </div>
        `).join('');

      // Ledger Table
      document.getElementById('ledger-tbody').innerHTML = state.ledger.length === 0
        ? `<tr><td colspan="5" class="p-8 text-center text-slate-500">No sales recorded yet. Use the "+ Log Sale" form above to add your first real transaction!</td></tr>`
        : state.ledger.map(l => `
          <tr class="hover:bg-slate-900/40 transition">
            <td class="p-3 text-slate-400 whitespace-nowrap">${l.time}</td>
            <td class="p-3 text-white font-bold whitespace-nowrap">${l.minion}</td>
            <td class="p-3 text-slate-200">${l.desc}</td>
            <td class="p-3 whitespace-nowrap">
              <span class="px-2 py-0.5 rounded-full text-[10px] ${l.mode === 'LIVE' ? 'bg-emerald-500/15 text-emerald-400 border border-emerald-500/30' : 'bg-amber-500/15 text-amber-400 border border-amber-500/30'}">${l.mode}</span>
            </td>
            <td class="p-3 text-right text-emerald-400 font-bold whitespace-nowrap">+${money(l.amount)}</td>
          </tr>
        `).join('');
    }

    // ==================== 5. USER ACTIONS ====================
    function handleHomePrimaryAction() {
      if (state.isDemo) {
        superchargeAll();
      } else {
        switchTab('ledger');
        document.getElementById('sale-desc').focus();
      }
    }

    function superchargeMinion(id) {
      const m = state.minions.find(x => x.id === id);
      if (!m) return;
      m.speed = Number((m.speed + 0.5).toFixed(1));
      if (state.isDemo) {
        const bonus = 150;
        m.total = Number((m.total + bonus).toFixed(2));
        state.ledger.unshift({
          time: new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' }),
          minion: m.name,
          desc: 'Demo Speed Supercharge',
          mode: 'DEMO',
          amount: bonus
        });
      }
      save();
      render();
      showToast(`${m.name} Boosted!`, `Work speed increased to ${m.speed}x.`);
    }

    function superchargeAll() {
      state.minions.forEach(m => {
        m.speed = Number((m.speed + 0.5).toFixed(1));
        if (state.isDemo) m.total = Number((m.total + 100).toFixed(2));
      });
      save();
      render();
      showToast('Workforce Supercharged', 'All 6 Minions upgraded +0.5x speed.');
    }

    function submitAI(e) {
      e.preventDefault();
      const input = document.getElementById('console-input');
      const text = input.value.trim();
      if (!text) return;
      input.value = '';

      const targetId = document.getElementById('console-target').value;
      const m = state.minions.find(x => x.id === targetId) || state.minions[0];

      state.directives.unshift({
        id: 'd-' + Date.now(),
        minionId: m.id,
        minionName: m.name,
        text,
        active: true
      });
      m.speed = Number((m.speed + 0.5).toFixed(1));

      if (state.isDemo) {
        m.total = Number((m.total + 200).toFixed(2));
        state.ledger.unshift({
          time: new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' }),
          minion: m.name,
          desc: `AI Directive: ${text.slice(0, 36)}`,
          mode: 'DEMO',
          amount: 200
        });
      }

      state.events.unshift(`> [SAVED DIRECTIVE] ${m.name}: ${text}`);
      save();
      render();
      showToast('AI Directive Saved', `Persisted for ${m.name} (+50% yield multiplier).`, 'cyan');
    }

    function delDir(id) {
      state.directives = state.directives.filter(d => d.id !== id);
      save();
      render();
    }

    function handleLogRealSale(e) {
      e.preventDefault();
      const desc = document.getElementById('sale-desc').value.trim();
      const mId = document.getElementById('sale-minion').value;
      const amt = parseFloat(document.getElementById('sale-amount').value);
      if (!desc || isNaN(amt) || amt <= 0) return;

      const m = state.minions.find(x => x.id === mId) || state.minions[0];
      m.total = Number((m.total + amt).toFixed(2));

      const timeStr = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
      state.ledger.unshift({
        time: timeStr,
        minion: m.name,
        desc,
        mode: state.isDemo ? 'DEMO' : 'LIVE',
        amount: amt
      });
      state.events.unshift(`[${timeStr}] [${state.isDemo ? 'DEMO' : 'LIVE'} SALE] +${money(amt)} credited to ${m.name} (${desc})`);

      document.getElementById('sale-desc').value = '';
      document.getElementById('sale-amount').value = '';
      save();
      render();
      showToast('Sale Logged!', `+${money(amt)} credited to ${m.name}.`, 'emerald');
    }

    function simulateDemoSale() {
      const m = state.minions[Math.floor(Math.random() * state.minions.length)];
      const amt = [49, 99, 149, 249][Math.floor(Math.random() * 4)];
      m.total = Number((m.total + amt).toFixed(2));
      state.ledger.unshift({
        time: new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' }),
        minion: m.name,
        desc: 'Demo Simulated Checkout',
        mode: 'DEMO',
        amount: amt
      });
      save();
      render();
      showToast('Demo Sale Simulated', `+${money(amt)} credited to ${m.name}.`, 'amber');
    }

    function exportCSV() {
      const rows = [['Time', 'Minion', 'Description', 'Mode', 'Amount']];
      state.ledger.forEach(l => rows.push([l.time, l.minion, `"${l.desc.replace(/"/g, '""')}"`, l.mode, l.amount.toFixed(2)]));
      const blob = new Blob([rows.map(r => r.join(',')).join('\n')], { type: 'text/csv' });
      const url = URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = `neural-core-ledger-${state.isDemo ? 'demo' : 'live'}.csv`;
      a.click();
      URL.revokeObjectURL(url);
      showToast('CSV Exported', 'Revenue ledger downloaded.');
    }

    function switchTab(tab) {
      state.activeTab = tab;
      save();
      document.querySelectorAll('.tab-view').forEach(el => el.classList.add('hidden'));
      document.getElementById(`tab-${tab}`).classList.remove('hidden');
      document.querySelectorAll('.nav-btn').forEach(b => {
        b.className = b.dataset.tab === tab
          ? 'nav-btn px-3 py-1.5 rounded-lg text-cyan-300 bg-cyan-500/20'
          : 'nav-btn px-3 py-1.5 rounded-lg text-slate-400 hover:text-white';
      });
      document.querySelectorAll('.mob-btn').forEach(b => {
        b.className = b.dataset.tab === tab
          ? 'mob-btn py-1.5 rounded-lg text-cyan-400 font-bold'
          : 'mob-btn py-1.5 rounded-lg text-slate-400';
      });
      if (tab === 'home') resizeCanvas();
    }

    // ==================== 6. INTERACTIVE FLOORPLAN HUD CANVAS ====================
    const fpCanvas = document.getElementById('c-fp');
    const fpCtx = fpCanvas.getContext('2d');
    let fpTick = 0;

    function resizeCanvas() {
      const wrap = document.getElementById('fp-wrap');
      if (!wrap) return;
      fpCanvas.width = wrap.clientWidth || 800;
      fpCanvas.height = wrap.clientHeight || 380;
    }

    function drawFloorplan() {
      fpTick++;
      if (state.activeTab === 'home') {
        const W = fpCanvas.width;
        const H = fpCanvas.height;
        fpCtx.clearRect(0, 0, W, H);

        const cols = W < 600 ? 2 : 3;
        const rows = Math.ceil(state.minions.length / cols);
        const bw = W / cols;
        const bh = H / rows;

        state.minions.forEach((m, i) => {
          const x = (i % cols) * bw;
          const y = Math.floor(i / cols) * bh;
          const dirs = state.directives.filter(d => d.active && d.minionId === m.id);
          const bubbleText = dirs.length ? `🤖 ${dirs[0].text.slice(0, 22)}` : m.phrase;

          // Workstation Bay Box
          fpCtx.fillStyle = 'rgba(8, 13, 24, 0.92)';
          fpCtx.strokeStyle = m.visor;
          fpCtx.lineWidth = 1.5;
          fpCtx.beginPath();
          fpCtx.roundRect(x + 6, y + 6, bw - 12, bh - 12, 10);
          fpCtx.fill();
          fpCtx.stroke();

          // Header Text
          fpCtx.font = '700 11px "JetBrains Mono", monospace';
          fpCtx.fillStyle = '#f8fafc';
          fpCtx.fillText(`${m.dept}: ${m.name}`, x + 16, y + 26);

          fpCtx.font = '600 10px "JetBrains Mono", monospace';
          fpCtx.fillStyle = '#34d399';
          fpCtx.fillText(`Speed: ${m.speed}x • ${shortMoney(m.total)}`, x + 16, y + 44);

          // Animated Minion Character
          const walkX = x + bw * 0.5 + Math.sin(fpTick * 0.03 * m.speed + i) * (bw * 0.22);
          const walkY = y + bh * 0.64 + Math.abs(Math.cos(fpTick * 0.12 * m.speed)) * -3;

          fpCtx.fillStyle = '#facc15';
          fpCtx.beginPath();
          fpCtx.roundRect(walkX - 9, walkY - 14, 18, 22, 8);
          fpCtx.fill();

          fpCtx.fillStyle = '#2563eb';
          fpCtx.fillRect(walkX - 9, walkY - 2, 18, 10);

          fpCtx.fillStyle = m.visor;
          fpCtx.beginPath();
          fpCtx.arc(walkX, walkY - 8, 4, 0, Math.PI * 2);
          fpCtx.fill();

          // Speech Bubble
          fpCtx.font = '600 9px "JetBrains Mono", monospace';
          const tw = fpCtx.measureText(bubbleText).width + 12;
          const bx = Math.max(x + 12, Math.min(x + bw - tw - 12, walkX - tw / 2));
          const by = walkY - 34;

          fpCtx.fillStyle = 'rgba(2, 6, 23, 0.92)';
          fpCtx.strokeStyle = `${m.visor}99`;
          fpCtx.beginPath();
          fpCtx.roundRect(bx, by, tw, 15, 5);
          fpCtx.fill();
          fpCtx.stroke();

          fpCtx.fillStyle = '#e2e8f0';
          fpCtx.fillText(bubbleText, bx + 6, by + 10.5);
        });
      }
      requestAnimationFrame(drawFloorplan);
    }

    fpCanvas.addEventListener('click', (e) => {
      const rect = fpCanvas.getBoundingClientRect();
      const x = e.clientX - rect.left;
      const y = e.clientY - rect.top;
      const cols = fpCanvas.width < 600 ? 2 : 3;
      const rows = Math.ceil(state.minions.length / cols);
      const col = Math.floor(x / (fpCanvas.width / cols));
      const row = Math.floor(y / (fpCanvas.height / rows));
      const idx = row * cols + col;
      if (state.minions[idx]) superchargeMinion(state.minions[idx].id);
    });

    window.addEventListener('resize', resizeCanvas);

    window.onload = () => {
      render();
      switchTab(state.activeTab || 'home');
      resizeCanvas();
      drawFloorplan();
    };
  </script>
</body>
</html>

const paymentConfig = {
  mode: "TEST", // Change to "LIVE" only after entering real rate & live keys
  processorName: "Stripe",
  feePercent: 0.029, // Example: 2.9% -> enter your real rate as a decimal (0.029 = 2.9%)
  feeFixed: 0.30,    // Example: $0.30 per transaction
  rateConfirmed: false // Set to true once you verify your real processor rate
};

function calculateNetPayout(grossAmount) {
  const fee = grossAmount * paymentConfig.feePercent + paymentConfig.feeFixed;
  const net = Math.max(0, grossAmount - fee);
  return {
    gross: Number(grossAmount.toFixed(2)),
    estimatedFee: Number(fee.toFixed(2)),
    netPayout: Number(net.toFixed(2)),
    isSimulated: paymentConfig.mode !== "LIVE"
  };
}

function canGoLive() {
  return paymentConfig.mode === "LIVE" && paymentConfig.rateConfirmed === true;
}

<!DOCTYPE html>
<html lang="en" class="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pipeline Revenue Calculator & LocalStorage Manager</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Google Fonts: Inter & JetBrains Mono -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500;600;700&display=swap" rel="stylesheet">
    <script>
        tailwind.config = {
            darkMode: 'class',
            theme: {
                extend: {
                    fontFamily: {
                        sans: ['Inter', 'sans-serif'],
                        mono: ['JetBrains Mono', 'monospace'],
                    },
                    colors: {
                        slate: {
                            850: '#151e2e',
                            900: '#0f172a',
                            950: '#090d16',
                        }
                    }
                }
            }
        }
    </script>
</head>
<body class="bg-slate-950 text-slate-200 font-sans min-h-screen antialiased selection:bg-indigo-500/30 selection:text-indigo-200 flex flex-col justify-between">

    <!-- Top Navigation / Status Header -->
    <header class="border-b border-slate-800/80 bg-slate-900/60 backdrop-blur-md sticky top-0 z-20">
        <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between">
            <div class="flex items-center space-x-3">
                <div class="w-8 h-8 rounded-lg bg-gradient-to-br from-indigo-500 to-cyan-500 flex items-center justify-center shadow-lg shadow-indigo-500/20">
                    <svg class="w-4 h-4 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                    </svg>
                </div>
                <div>
                    <h1 class="text-sm sm:text-base font-semibold text-white tracking-tight">PIPELINE REVENUE CALCULATOR</h1>
                    <p class="text-[11px] font-mono text-slate-400">LOCAL_STORAGE :: EMERGENT_COMPATIBLE</p>
                </div>
            </div>

            <!-- Global System Status Pill -->
            <div id="global-status-pill" class="flex items-center space-x-2 px-3 py-1.5 rounded-full bg-slate-900 border border-slate-800 text-xs font-mono">
                <span id="global-status-dot" class="w-2 h-2 rounded-full bg-amber-400 animate-pulse"></span>
                <span id="global-status-text" class="text-slate-300">AWAITING_PAYLOAD</span>
            </div>
        </div>
    </header>

    <!-- Main Dashboard Container -->
    <main class="max-w-6xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8 flex-grow">
        
        <!-- Toast Notification Banner -->
        <div id="toast-banner" class="hidden mb-6 rounded-xl border px-4 py-3 flex items-center justify-between transition-all duration-300">
            <div class="flex items-center space-x-3">
                <span id="toast-icon" class="flex-shrink-0"></span>
                <p id="toast-message" class="text-sm font-medium"></p>
            </div>
            <button type="button" onclick="hideToast()" class="text-slate-400 hover:text-white p-1 rounded-lg transition-colors">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
            </button>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-12 gap-8">
            
            <!-- LEFT COLUMN: Control Panel Form -->
            <section class="lg:col-span-5 flex flex-col space-y-6">
                <div class="bg-slate-900/90 border border-slate-800 rounded-2xl p-6 shadow-xl">
                    <div class="mb-6">
                        <h2 class="text-lg font-semibold text-white flex items-center gap-2">
                            <span>Pipeline Parameters</span>
                        </h2>
                        <p class="text-xs sm:text-sm text-slate-400 mt-1">
                            Input your revenue metrics to calculate expected pipeline value. Leave fields blank to keep <code class="font-mono text-amber-400 bg-amber-400/10 px-1.5 py-0.5 rounded">---</code> awaiting state.
                        </p>
                    </div>

                    <form id="metrics-form" class="space-y-5" novalidate>
                        <!-- Input 1: Gross Revenue -->
                        <div>
                            <div class="flex justify-between items-center mb-1.5">
                                <label for="input-revenue" class="block text-xs font-semibold uppercase tracking-wider text-slate-300">
                                    Gross Revenue (Pipeline)
                                </label>
                                <span class="text-[11px] font-mono text-slate-500">grossRevenue</span>
                            </div>
                            <div class="relative">
                                <div class="absolute inset-y-0 left-0 pl-3.5 flex items-center pointer-events-none text-slate-500 font-mono text-sm">$</div>
                                <input 
                                    type="text" 
                                    id="input-revenue" 
                                    name="grossRevenue"
                                    placeholder="e.g., 500000" 
                                    autocomplete="off"
                                    class="w-full bg-slate-950 border border-slate-800 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-500/20 rounded-xl pl-8 pr-10 py-3 text-sm font-mono text-white placeholder-slate-600 transition-all outline-none"
                                    oninput="calculateDynamicPreview()"
                                >
                                <button type="button" onclick="clearSingleField('input-revenue')" title="Clear field to keep ---" class="absolute right-3 top-1/2 -translate-y-1/2 text-slate-600 hover:text-slate-300 p-1 rounded-md transition-colors">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
                                </button>
                            </div>
                        </div>

                        <!-- Input 2: Win Rate -->
                        <div>
                            <div class="flex justify-between items-center mb-1.5">
                                <label for="input-winrate" class="block text-xs font-semibold uppercase tracking-wider text-slate-300">
                                    Win Rate (%)
                                </label>
                                <span class="text-[11px] font-mono text-slate-500">winRate</span>
                            </div>
                            <div class="relative">
                                <input 
                                    type="text" 
                                    id="input-winrate" 
                                    name="winRate"
                                    placeholder="e.g., 25" 
                                    autocomplete="off"
                                    class="w-full bg-slate-950 border border-slate-800 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-500/20 rounded-xl pl-4 pr-10 py-3 text-sm font-mono text-white placeholder-slate-600 transition-all outline-none"
                                    oninput="calculateDynamicPreview()"
                                >
                                <div class="absolute inset-y-0 right-8 pr-1 flex items-center pointer-events-none text-slate-500 font-mono text-sm">%</div>
                                <button type="button" onclick="clearSingleField('input-winrate')" title="Clear field to keep ---" class="absolute right-3 top-1/2 -translate-y-1/2 text-slate-600 hover:text-slate-300 p-1 rounded-md transition-colors">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
                                </button>
                            </div>
                        </div>

                        <!-- Input 3: Avg Deal Size -->
                        <div>
                            <div class="flex justify-between items-center mb-1.5">
                                <label for="input-dealsize" class="block text-xs font-semibold uppercase tracking-wider text-slate-300">
                                    Avg Deal Size
                                </label>
                                <span class="text-[11px] font-mono text-slate-500">avgDealSize</span>
                            </div>
                            <div class="relative">
                                <div class="absolute inset-y-0 left-0 pl-3.5 flex items-center pointer-events-none text-slate-500 font-mono text-sm">$</div>
                                <input 
                                    type="text" 
                                    id="input-dealsize" 
                                    name="avgDealSize"
                                    placeholder="e.g., 10000" 
                                    autocomplete="off"
                                    class="w-full bg-slate-950 border border-slate-800 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-500/20 rounded-xl pl-8 pr-10 py-3 text-sm font-mono text-white placeholder-slate-600 transition-all outline-none"
                                    oninput="calculateDynamicPreview()"
                                >
                                <button type="button" onclick="clearSingleField('input-dealsize')" title="Clear field to keep ---" class="absolute right-3 top-1/2 -translate-y-1/2 text-slate-600 hover:text-slate-300 p-1 rounded-md transition-colors">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
                                </button>
                            </div>
                        </div>

                        <!-- Primary Action Buttons -->
                        <div class="pt-3 flex flex-col space-y-3">
                            <button 
                                type="submit" 
                                class="w-full bg-indigo-600 hover:bg-indigo-500 active:bg-indigo-700 text-white font-semibold text-sm py-3.5 px-5 rounded-xl shadow-lg shadow-indigo-600/25 transition-all flex items-center justify-center space-x-2 cursor-pointer"
                            >
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7H5a2 2 0 00-2 2v9a2 2 0 002 2h14a2 2 0 002-2V9a2 2 0 00-2-2h-3m-1 4l-3 3m0 0l-3-3m3 3V4"></path>
                                </svg>
                                <span>Save / Inject to Storage</span>
                            </button>

                            <button 
                                type="button" 
                                id="reset-btn"
                                class="w-full bg-rose-950/40 hover:bg-rose-900/50 text-rose-400 hover:text-rose-200 border border-rose-800/60 hover:border-rose-600 font-mono font-semibold text-xs sm:text-sm py-3.5 px-5 rounded-xl transition-all flex items-center justify-center space-x-2 cursor-pointer"
                            >
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                </svg>
                                <span>RESET TO "---" EMPTY</span>
                            </button>
                        </div>
                    </form>
                </div>
            </section>

            <!-- RIGHT COLUMN: Calculated Revenue & Storage Inspector -->
            <section class="lg:col-span-7 flex flex-col space-y-6">
                
                <!-- Computed Expected Pipeline Revenue Hero Card -->
                <div id="card-hero" class="bg-gradient-to-br from-indigo-950/70 via-slate-900 to-slate-900 border border-indigo-500/30 rounded-2xl p-6 shadow-xl relative overflow-hidden">
                    <div class="absolute -right-10 -bottom-10 w-48 h-48 bg-indigo-500/10 rounded-full blur-3xl pointer-events-none"></div>
                    
                    <div class="flex items-center justify-between mb-4">
                        <span class="text-xs font-semibold uppercase tracking-wider text-indigo-300 font-mono">Computed Forecast</span>
                        <span id="badge-expected" class="inline-flex items-center gap-1.5 px-2.5 py-1 rounded-md text-[10px] font-mono font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20">
                            <span class="w-1.5 h-1.5 rounded-full bg-amber-400"></span>
                            AWAITING INPUTS
                        </span>
                    </div>

                    <div class="mb-4">
                        <h3 class="text-sm text-slate-400 mb-1">Expected Pipeline Revenue</h3>
                        <div id="display-expected" class="text-3xl sm:text-4xl font-mono font-bold text-slate-400 tracking-tight break-all">---</div>
                    </div>

                    <div class="grid grid-cols-2 gap-4 pt-4 border-t border-slate-800/80 text-xs font-mono text-slate-400">
                        <div>
                            <span class="block text-[10px] text-slate-500 uppercase">Expected Deals</span>
                            <span id="display-expected-deals" class="text-slate-300 font-semibold text-sm">---</span>
                        </div>
                        <div>
                            <span class="block text-[10px] text-slate-500 uppercase">Conversion Efficiency</span>
                            <span id="display-efficiency" class="text-slate-300 font-semibold text-sm">---</span>
                        </div>
                    </div>
                </div>

                <!-- Live Telemetry Cards Grid -->
                <div>
                    <div class="flex items-center justify-between mb-3 px-1">
                        <h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400">Stored Parameters</h3>
                        <span id="last-sync-label" class="text-xs font-mono text-slate-500">SYNC: NEVER</span>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
                        <!-- Card 1: Gross Revenue -->
                        <div id="card-revenue" class="bg-slate-900/90 border border-slate-800 rounded-2xl p-4 flex flex-col justify-between transition-all duration-300">
                            <div class="flex items-start justify-between gap-2 mb-2">
                                <span class="text-[11px] font-medium text-slate-400 leading-snug">Gross Revenue</span>
                                <span id="badge-revenue" class="inline-flex items-center gap-1 px-1.5 py-0.5 rounded text-[9px] font-mono font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20">---</span>
                            </div>
                            <div>
                                <div id="display-revenue" class="text-xl font-mono font-bold text-slate-500 tracking-tight break-all">---</div>
                            </div>
                        </div>

                        <!-- Card 2: Win Rate -->
                        <div id="card-winrate" class="bg-slate-900/90 border border-slate-800 rounded-2xl p-4 flex flex-col justify-between transition-all duration-300">
                            <div class="flex items-start justify-between gap-2 mb-2">
                                <span class="text-[11px] font-medium text-slate-400 leading-snug">Win Rate</span>
                                <span id="badge-winrate" class="inline-flex items-center gap-1 px-1.5 py-0.5 rounded text-[9px] font-mono font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20">---</span>
                            </div>
                            <div>
                                <div id="display-winrate" class="text-xl font-mono font-bold text-slate-500 tracking-tight break-all">---</div>
                            </div>
                        </div>

                        <!-- Card 3: Avg Deal Size -->
                        <div id="card-dealsize" class="bg-slate-900/90 border border-slate-800 rounded-2xl p-4 flex flex-col justify-between transition-all duration-300">
                            <div class="flex items-start justify-between gap-2 mb-2">
                                <span class="text-[11px] font-medium text-slate-400 leading-snug">Avg Deal Size</span>
                                <span id="badge-dealsize" class="inline-flex items-center gap-1 px-1.5 py-0.5 rounded text-[9px] font-mono font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20">---</span>
                            </div>
                            <div>
                                <div id="display-dealsize" class="text-xl font-mono font-bold text-slate-500 tracking-tight break-all">---</div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Raw JSON localStorage Inspector -->
                <div class="bg-slate-900/90 border border-slate-800 rounded-2xl overflow-hidden shadow-xl flex-grow flex flex-col">
                    <div class="bg-slate-950/80 border-b border-slate-800 px-4 py-3 flex items-center justify-between">
                        <div class="flex items-center space-x-2">
                            <div class="flex space-x-1.5">
                                <span class="w-2.5 h-2.5 rounded-full bg-slate-700"></span>
                                <span class="w-2.5 h-2.5 rounded-full bg-slate-700"></span>
                                <span class="w-2.5 h-2.5 rounded-full bg-slate-700"></span>
                            </div>
                            <span class="text-xs font-mono text-slate-400 ml-2">localStorage.getItem("<span class="text-cyan-400">pipeline_revenue_calculator_v1</span>")</span>
                        </div>
                        <button 
                            type="button" 
                            onclick="copyRawJson()" 
                            class="text-xs font-mono text-slate-400 hover:text-white bg-slate-800/80 hover:bg-slate-700 px-2.5 py-1 rounded-lg transition-colors flex items-center gap-1.5 cursor-pointer"
                        >
                            <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z"></path></svg>
                            <span id="copy-btn-text">Copy JSON</span>
                        </button>
                    </div>

                    <div class="p-5 bg-slate-950/60 flex-grow overflow-x-auto">
                        <pre id="json-inspector" class="font-mono text-xs sm:text-sm leading-relaxed text-cyan-300"></pre>
                    </div>

                    <div class="bg-slate-900/90 border-t border-slate-800/80 px-4 py-2.5 flex items-center justify-between text-[11px] font-mono text-slate-500">
                        <span>STORAGE ENGINE: window.localStorage</span>
                        <span id="storage-bytes">0 BYTES ALLOCATED</span>
                    </div>
                </div>

            </section>
        </div>
    </main>

    <!-- Footer -->
    <footer class="border-t border-slate-900 py-5 mt-8">
        <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 flex flex-col sm:flex-row items-center justify-between text-xs text-slate-500 gap-2">
            <span>Client-Side Pipeline Forecasting & State Controller</span>
            <span class="font-mono">Blank inputs preserve "---" awaiting sentinel</span>
        </div>
    </footer>

    <!-- Application Logic -->
    <script>
        const STORAGE_KEY = 'pipeline_revenue_calculator_v1';
        const EMPTY_SENTINEL = '---';

        const DEFAULT_STATE = {
            grossRevenue: EMPTY_SENTINEL,
            winRate: EMPTY_SENTINEL,
            avgDealSize: EMPTY_SENTINEL,
            updatedAt: null
        };

        function formatCurrency(val) {
            const num = parseFloat(val);
            if (isNaN(num)) return val;
            return '$' + num.toLocaleString('en-US', { maximumFractionDigits: 2 });
        }

        function formatPercent(val) {
            const num = parseFloat(val);
            if (isNaN(num)) return val;
            return num + '%';
        }

        function loadStateFromStorage() {
            try {
                const raw = localStorage.getItem(STORAGE_KEY);
                if (!raw) return { ...DEFAULT_STATE };
                const parsed = JSON.parse(raw);
                return {
                    grossRevenue: parsed.grossRevenue && parsed.grossRevenue.trim() !== '' ? parsed.grossRevenue : EMPTY_SENTINEL,
                    winRate: parsed.winRate && parsed.winRate.trim() !== '' ? parsed.winRate : EMPTY_SENTINEL,
                    avgDealSize: parsed.avgDealSize && parsed.avgDealSize.trim() !== '' ? parsed.avgDealSize : EMPTY_SENTINEL,
                    updatedAt: parsed.updatedAt || null
                };
            } catch (error) {
                console.error('Error reading localStorage:', error);
                return { ...DEFAULT_STATE };
            }
        }

        function saveStateToStorage(newState) {
            try {
                const serialized = JSON.stringify(newState, null, 2);
                localStorage.setItem(STORAGE_KEY, serialized);
                renderDashboard(newState, serialized);
                return true;
            } catch (error) {
                console.error('Error writing localStorage:', error);
                showToast('Failed to write to localStorage. Check browser settings.', 'error');
                return false;
            }
        }

        function resetStorageToEmpty() {
            try {
                localStorage.removeItem(STORAGE_KEY);
            } catch (error) {
                console.error('Error clearing localStorage:', error);
            }

            document.getElementById('input-revenue').value = '';
            document.getElementById('input-winrate').value = '';
            document.getElementById('input-dealsize').value = '';

            renderDashboard({ ...DEFAULT_STATE }, null);
            calculateDynamicPreview();
            showToast('Local storage purged. All metrics reset to "---" awaiting state.', 'reset');
        }

        function calculateExpectedRevenue(revStr, winStr, dealStr) {
            if (!revStr || revStr === EMPTY_SENTINEL || !winStr || winStr === EMPTY_SENTINEL) {
                return { expectedRev: EMPTY_SENTINEL, expectedDeals: EMPTY_SENTINEL, efficiency: EMPTY_SENTINEL };
            }

            const gross = parseFloat(revStr.replace(/[^0-9.-]+/g, ""));
            const win = parseFloat(winStr.replace(/[^0-9.-]+/g, ""));
            const dealSize = dealStr && dealStr !== EMPTY_SENTINEL ? parseFloat(dealStr.replace(/[^0-9.-]+/g, "")) : 0;

            if (isNaN(gross) || isNaN(win)) {
                return { expectedRev: EMPTY_SENTINEL, expectedDeals: EMPTY_SENTINEL, efficiency: EMPTY_SENTINEL };
            }

            const expectedRev = gross * (win / 100.0);
            
            let expectedDeals = '---';
            if (!isNaN(dealSize) && dealSize > 0) {
                const totalDeals = gross / dealSize;
                const wonDeals = totalDeals * (win / 100.0);
                expectedDeals = wonDeals.toFixed(1) + ' deals';
            }

            return {
                expectedRev: '$' + expectedRev.toLocaleString('en-US', { minimumFractionDigits: 0, maximumFractionDigits: 2 }),
                expectedDeals: expectedDeals,
                efficiency: win + '%'
            };
        }

        function calculateDynamicPreview() {
            const rawRev = document.getElementById('input-revenue').value.trim();
            const rawWin = document.getElementById('input-winrate').value.trim();
            const rawDeal = document.getElementById('input-dealsize').value.trim();

            const res = calculateExpectedRevenue(rawRev, rawWin, rawDeal);
            const displayEl = document.getElementById('display-expected');
            const dealsEl = document.getElementById('display-expected-deals');
            const effEl = document.getElementById('display-efficiency');
            const badgeEl = document.getElementById('badge-expected');

            displayEl.textContent = res.expectedRev;
            dealsEl.textContent = res.expectedDeals;
            effEl.textContent = res.efficiency;

            if (res.expectedRev === EMPTY_SENTINEL) {
                displayEl.className = 'text-3xl sm:text-4xl font-mono font-bold text-slate-400 tracking-tight break-all';
                badgeEl.className = 'inline-flex items-center gap-1.5 px-2.5 py-1 rounded-md text-[10px] font-mono font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20';
                badgeEl.innerHTML = `<span class="w-1.5 h-1.5 rounded-full bg-amber-400"></span>AWAITING INPUTS`;
            } else {
                displayEl.className = 'text-3xl sm:text-4xl font-mono font-bold text-emerald-400 tracking-tight break-all';
                badgeEl.className = 'inline-flex items-center gap-1.5 px-2.5 py-1 rounded-md text-[10px] font-mono font-semibold bg-emerald-500/10 text-emerald-400 border border-emerald-500/20';
                badgeEl.innerHTML = `<span class="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse"></span>FORECAST ACTIVE`;
            }
        }

        function updateMetricCard(keySuffix, value, isFormattedPercent = false, isFormattedCurrency = false) {
            const displayEl = document.getElementById(`display-${keySuffix}`);
            const badgeEl = document.getElementById(`badge-${keySuffix}`);
            const cardEl = document.getElementById(`card-${keySuffix}`);

            const isAwaiting = !value || value === EMPTY_SENTINEL;

            let formattedVal = value;
            if (!isAwaiting) {
                if (isFormattedCurrency) formattedVal = formatCurrency(value);
                else if (isFormattedPercent) formattedVal = formatPercent(value);
            }

            displayEl.textContent = isAwaiting ? EMPTY_SENTINEL : formattedVal;

            if (isAwaiting) {
                displayEl.className = 'text-xl font-mono font-bold text-slate-500 tracking-tight break-all';
                badgeEl.className = 'inline-flex items-center gap-1 px-1.5 py-0.5 rounded text-[9px] font-mono font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20';
                badgeEl.textContent = 'AWAITING';
                cardEl.className = 'bg-slate-900/90 border border-slate-800 rounded-2xl p-4 flex flex-col justify-between transition-all duration-300';
            } else {
                displayEl.className = 'text-xl font-mono font-bold text-white tracking-tight break-all';
                badgeEl.className = 'inline-flex items-center gap-1 px-1.5 py-0.5 rounded text-[9px] font-mono font-semibold bg-emerald-500/10 text-emerald-400 border border-emerald-500/20';
                badgeEl.textContent = 'STORED';
                cardEl.className = 'bg-slate-900 border border-emerald-500/30 shadow-md shadow-emerald-950/20 rounded-2xl p-4 flex flex-col justify-between transition-all duration-300';
            }
        }

        function renderDashboard(state, rawSerializedString = null) {
            updateMetricCard('revenue', state.grossRevenue, false, true);
            updateMetricCard('winrate', state.winRate, true, false);
            updateMetricCard('dealsize', state.avgDealSize, false, true);

            const activeCount = [state.grossRevenue, state.winRate, state.avgDealSize].filter(val => val && val !== EMPTY_SENTINEL).length;

            const globalDot = document.getElementById('global-status-dot');
            const globalText = document.getElementById('global-status-text');

            if (activeCount === 0) {
                globalDot.className = 'w-2 h-2 rounded-full bg-amber-400 animate-pulse';
                globalText.textContent = 'AWAITING_PAYLOAD (0/3)';
                globalText.className = 'text-amber-300';
            } else if (activeCount < 3) {
                globalDot.className = 'w-2 h-2 rounded-full bg-cyan-400 animate-pulse';
                globalText.textContent = `PARTIAL_INJECTION (${activeCount}/3)`;
                globalText.className = 'text-cyan-300';
            } else {
                globalDot.className = 'w-2 h-2 rounded-full bg-emerald-400';
                globalText.textContent = 'TELEMETRY_ACTIVE (3/3)';
                globalText.className = 'text-emerald-300';
            }

            const syncLabel = document.getElementById('last-sync-label');
            if (state.updatedAt) {
                const dateObj = new Date(state.updatedAt);
                syncLabel.textContent = `SYNC: ${dateObj.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', second: '2-digit' })}`;
            } else {
                syncLabel.textContent = 'SYNC: AWAITING';
            }

            const inspectorEl = document.getElementById('json-inspector');
            const bytesEl = document.getElementById('storage-bytes');
            const rawFromBrowser = rawSerializedString !== null ? rawSerializedString : localStorage.getItem(STORAGE_KEY);

            if (!rawFromBrowser) {
                inspectorEl.textContent = `// localStorage["${STORAGE_KEY}"] is currently null\n` + JSON.stringify({ status: "EMPTY_STORAGE_KEY", fallbackState: DEFAULT_STATE }, null, 2);
                inspectorEl.className = 'font-mono text-xs sm:text-sm leading-relaxed text-slate-400';
                bytesEl.textContent = '0 BYTES ALLOCATED';
            } else {
                inspectorEl.textContent = rawFromBrowser;
                inspectorEl.className = 'font-mono text-xs sm:text-sm leading-relaxed text-cyan-300';
                bytesEl.textContent = `${new Blob([rawFromBrowser]).size} BYTES ALLOCATED`;
            }
        }

        function hydrateFormInputs(state) {
            document.getElementById('input-revenue').value = state.grossRevenue !== EMPTY_SENTINEL ? state.grossRevenue : '';
            document.getElementById('input-winrate').value = state.winRate !== EMPTY_SENTINEL ? state.winRate : '';
            document.getElementById('input-dealsize').value = state.avgDealSize !== EMPTY_SENTINEL ? state.avgDealSize : '';
        }

        function clearSingleField(inputId) {
            const el = document.getElementById(inputId);
            if (el) {
                el.value = '';
                el.focus();
                calculateDynamicPreview();
            }
        }

        function copyRawJson() {
            const inspectorEl = document.getElementById('json-inspector');
            const copyBtnText = document.getElementById('copy-btn-text');
            const tempTextarea = document.createElement('textarea');
            tempTextarea.value = inspectorEl.textContent;
            tempTextarea.style.position = 'fixed';
            tempTextarea.style.opacity = '0';
            document.body.appendChild(tempTextarea);
            tempTextarea.select();

            try {
                document.execCommand('copy');
                copyBtnText.textContent = 'Copied!';
                setTimeout(() => { copyBtnText.textContent = 'Copy JSON'; }, 2000);
            } catch (err) {
                showToast('Unable to copy JSON.', 'error');
            } finally {
                document.body.removeChild(tempTextarea);
            }
        }

        let toastTimeout = null;
        function showToast(message, type = 'success') {
            const banner = document.getElementById('toast-banner');
            const msgEl = document.getElementById('toast-message');
            const iconEl = document.getElementById('toast-icon');

            msgEl.textContent = message;
            banner.classList.remove('hidden');

            if (type === 'success') {
                banner.className = 'mb-6 rounded-xl border border-emerald-500/30 bg-emerald-950/50 text-emerald-200 px-4 py-3 flex items-center justify-between transition-all duration-300';
                iconEl.innerHTML = `<svg class="w-5 h-5 text-emerald-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>`;
            } else if (type === 'reset') {
                banner.className = 'mb-6 rounded-xl border border-amber-500/30 bg-amber-950/50 text-amber-200 px-4 py-3 flex items-center justify-between transition-all duration-300';
                iconEl.innerHTML = `<svg class="w-5 h-5 text-amber-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15"></path></svg>`;
            } else {
                banner.className = 'mb-6 rounded-xl border border-rose-500/30 bg-rose-950/50 text-rose-200 px-4 py-3 flex items-center justify-between transition-all duration-300';
                iconEl.innerHTML = `<svg class="w-5 h-5 text-rose-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>`;
            }

            if (toastTimeout) clearTimeout(toastTimeout);
            toastTimeout = setTimeout(hideToast, 4000);
        }

        function hideToast() {
            document.getElementById('toast-banner').classList.add('hidden');
        }

        document.addEventListener('DOMContentLoaded', () => {
            const initialState = loadStateFromStorage();
            hydrateFormInputs(initialState);
            renderDashboard(initialState);
            calculateDynamicPreview();

            const form = document.getElementById('metrics-form');
            form.addEventListener('submit', (e) => {
                e.preventDefault();

                const rawRev = document.getElementById('input-revenue').value.trim();
                const rawWin = document.getElementById('input-winrate').value.trim();
                const rawDeal = document.getElementById('input-dealsize').value.trim();

                const nextState = {
                    grossRevenue: rawRev !== '' ? rawRev : EMPTY_SENTINEL,
                    winRate: rawWin !== '' ? rawWin : EMPTY_SENTINEL,
                    avgDealSize: rawDeal !== '' ? rawDeal : EMPTY_SENTINEL,
                    updatedAt: new Date().toISOString()
                };

                if (saveStateToStorage(nextState)) {
                    showToast('Pipeline metrics injected into localStorage successfully.', 'success');
                }
            });

            document.getElementById('reset-btn').addEventListener('click', () => {
                resetStorageToEmpty();
            });

            window.addEventListener('storage', (event) => {
                if (event.key === STORAGE_KEY) {
                    const syncedState = loadStateFromStorage();
                    hydrateFormInputs(syncedState);
                    renderDashboard(syncedState);
                    calculateDynamicPreview();
                    showToast('Synchronized state change from another browser tab.', 'success');
                }
            });
        });
    </script>
</body>
</html>



const session = await stripe.billingPortal.sessions.create({
  customer: customerId, // e.g., 'cus_9s6XKzkNRiz8i3'
  return_url: 'https://your-app.com/settings',
});

// Redirect user to session.url

<!DOCTYPE html>
<html lang="en" class="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pipeline Revenue Calculator & LocalStorage Manager</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Google Fonts: Inter & JetBrains Mono -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500;600;700&display=swap" rel="stylesheet">
    <script>
        tailwind.config = {
            darkMode: 'class',
            theme: {
                extend: {
                    fontFamily: {
                        sans: ['Inter', 'sans-serif'],
                        mono: ['JetBrains Mono', 'monospace'],
                    },
                    colors: {
                        slate: {
                            850: '#151e2e',
                            900: '#0f172a',
                            950: '#090d16',
                        }
                    }
                }
            }
        }
    </script>
</head>
<body class="bg-slate-950 text-slate-200 font-sans min-h-screen antialiased selection:bg-indigo-500/30 selection:text-indigo-200 flex flex-col justify-between">

    <!-- Top Navigation / Status Header -->
    <header class="border-b border-slate-800/80 bg-slate-900/60 backdrop-blur-md sticky top-0 z-20">
        <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between">
            <div class="flex items-center space-x-3">
                <div class="w-8 h-8 rounded-lg bg-gradient-to-br from-indigo-500 to-cyan-500 flex items-center justify-center shadow-lg shadow-indigo-500/20">
                    <svg class="w-4 h-4 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
                    </svg>
                </div>
                <div>
                    <h1 class="text-sm sm:text-base font-semibold text-white tracking-tight">PIPELINE REVENUE CALCULATOR</h1>
                    <p class="text-[11px] font-mono text-slate-400">LOCAL_STORAGE :: EMERGENT_COMPATIBLE</p>
                </div>
            </div>

            <!-- Global System Status Pill -->
            <div id="global-status-pill" class="flex items-center space-x-2 px-3 py-1.5 rounded-full bg-slate-900 border border-slate-800 text-xs font-mono">
                <span id="global-status-dot" class="w-2 h-2 rounded-full bg-amber-400 animate-pulse"></span>
                <span id="global-status-text" class="text-slate-300">AWAITING_PAYLOAD</span>
            </div>
        </div>
    </header>

    <!-- Main Dashboard Container -->
    <main class="max-w-6xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8 flex-grow">
        
        <!-- Toast Notification Banner -->
        <div id="toast-banner" class="hidden mb-6 rounded-xl border px-4 py-3 flex items-center justify-between transition-all duration-300">
            <div class="flex items-center space-x-3">
                <span id="toast-icon" class="flex-shrink-0"></span>
                <p id="toast-message" class="text-sm font-medium"></p>
            </div>
            <button type="button" onclick="hideToast()" class="text-slate-400 hover:text-white p-1 rounded-lg transition-colors">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
            </button>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-12 gap-8">
            
            <!-- LEFT COLUMN: Control Panel Form -->
            <section class="lg:col-span-5 flex flex-col space-y-6">
                <div class="bg-slate-900/90 border border-slate-800 rounded-2xl p-6 shadow-xl">
                    <div class="mb-6">
                        <h2 class="text-lg font-semibold text-white flex items-center gap-2">
                            <span>Pipeline Parameters</span>
                        </h2>
                        <p class="text-xs sm:text-sm text-slate-400 mt-1">
                            Input your revenue metrics to calculate expected pipeline value. Leave fields blank to keep <code class="font-mono text-amber-400 bg-amber-400/10 px-1.5 py-0.5 rounded">---</code> awaiting state.
                        </p>
                    </div>

                    <form id="metrics-form" class="space-y-5" novalidate>
                        <!-- Input 1: Gross Revenue -->
                        <div>
                            <div class="flex justify-between items-center mb-1.5">
                                <label for="input-revenue" class="block text-xs font-semibold uppercase tracking-wider text-slate-300">
                                    Gross Revenue (Pipeline)
                                </label>
                                <span class="text-[11px] font-mono text-slate-500">grossRevenue</span>
                            </div>
                            <div class="relative">
                                <div class="absolute inset-y-0 left-0 pl-3.5 flex items-center pointer-events-none text-slate-500 font-mono text-sm">$</div>
                                <input 
                                    type="text" 
                                    id="input-revenue" 
                                    name="grossRevenue"
                                    placeholder="e.g., 500000" 
                                    autocomplete="off"
                                    class="w-full bg-slate-950 border border-slate-800 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-500/20 rounded-xl pl-8 pr-10 py-3 text-sm font-mono text-white placeholder-slate-600 transition-all outline-none"
                                    oninput="calculateDynamicPreview()"
                                >
                                <button type="button" onclick="clearSingleField('input-revenue')" title="Clear field to keep ---" class="absolute right-3 top-1/2 -translate-y-1/2 text-slate-600 hover:text-slate-300 p-1 rounded-md transition-colors">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
                                </button>
                            </div>
                        </div>

                        <!-- Input 2: Win Rate -->
                        <div>
                            <div class="flex justify-between items-center mb-1.5">
                                <label for="input-winrate" class="block text-xs font-semibold uppercase tracking-wider text-slate-300">
                                    Win Rate (%)
                                </label>
                                <span class="text-[11px] font-mono text-slate-500">winRate</span>
                            </div>
                            <div class="relative">
                                <input 
                                    type="text" 
                                    id="input-winrate" 
                                    name="winRate"
                                    placeholder="e.g., 25" 
                                    autocomplete="off"
                                    class="w-full bg-slate-950 border border-slate-800 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-500/20 rounded-xl pl-4 pr-10 py-3 text-sm font-mono text-white placeholder-slate-600 transition-all outline-none"
                                    oninput="calculateDynamicPreview()"
                                >
                                <div class="absolute inset-y-0 right-8 pr-1 flex items-center pointer-events-none text-slate-500 font-mono text-sm">%</div>
                                <button type="button" onclick="clearSingleField('input-winrate')" title="Clear field to keep ---" class="absolute right-3 top-1/2 -translate-y-1/2 text-slate-600 hover:text-slate-300 p-1 rounded-md transition-colors">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
                                </button>
                            </div>
                        </div>

                        <!-- Input 3: Avg Deal Size -->
                        <div>
                            <div class="flex justify-between items-center mb-1.5">
                                <label for="input-dealsize" class="block text-xs font-semibold uppercase tracking-wider text-slate-300">
                                    Avg Deal Size
                                </label>
                                <span class="text-[11px] font-mono text-slate-500">avgDealSize</span>
                            </div>
                            <div class="relative">
                                <div class="absolute inset-y-0 left-0 pl-3.5 flex items-center pointer-events-none text-slate-500 font-mono text-sm">$</div>
                                <input 
                                    type="text" 
                                    id="input-dealsize" 
                                    name="avgDealSize"
                                    placeholder="e.g., 10000" 
                                    autocomplete="off"
                                    class="w-full bg-slate-950 border border-slate-800 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-500/20 rounded-xl pl-8 pr-10 py-3 text-sm font-mono text-white placeholder-slate-600 transition-all outline-none"
                                    oninput="calculateDynamicPreview()"
                                >
                                <button type="button" onclick="clearSingleField('input-dealsize')" title="Clear field to keep ---" class="absolute right-3 top-1/2 -translate-y-1/2 text-slate-600 hover:text-slate-300 p-1 rounded-md transition-colors">
                                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
                                </button>
                            </div>
                        </div>

                        <!-- Primary Action Buttons -->
                        <div class="pt-3 flex flex-col space-y-3">
                            <button 
                                type="submit" 
                                class="w-full bg-indigo-600 hover:bg-indigo-500 active:bg-indigo-700 text-white font-semibold text-sm py-3.5 px-5 rounded-xl shadow-lg shadow-indigo-600/25 transition-all flex items-center justify-center space-x-2 cursor-pointer"
                            >
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7H5a2 2 0 00-2 2v9a2 2 0 002 2h14a2 2 0 002-2V9a2 2 0 00-2-2h-3m-1 4l-3 3m0 0l-3-3m3 3V4"></path>
                                </svg>
                                <span>Save / Inject to Storage</span>
                            </button>

                            <button 
                                type="button" 
                                id="reset-btn"
                                class="w-full bg-rose-950/40 hover:bg-rose-900/50 text-rose-400 hover:text-rose-200 border border-rose-800/60 hover:border-rose-600 font-mono font-semibold text-xs sm:text-sm py-3.5 px-5 rounded-xl transition-all flex items-center justify-center space-x-2 cursor-pointer"
                            >
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                </svg>
                                <span>RESET TO "---" EMPTY</span>
                            </button>
                        </div>
                    </form>
                </div>
            </section>

            <!-- RIGHT COLUMN: Calculated Revenue & Storage Inspector -->
            <section class="lg:col-span-7 flex flex-col space-y-6">
                
                <!-- Computed Expected Pipeline Revenue Hero Card -->
                <div id="card-hero" class="bg-gradient-to-br from-indigo-950/70 via-slate-900 to-slate-900 border border-indigo-500/30 rounded-2xl p-6 shadow-xl relative overflow-hidden">
                    <div class="absolute -right-10 -bottom-10 w-48 h-48 bg-indigo-500/10 rounded-full blur-3xl pointer-events-none"></div>
                    
                    <div class="flex items-center justify-between mb-4">
                        <span class="text-xs font-semibold uppercase tracking-wider text-indigo-300 font-mono">Computed Forecast</span>
                        <span id="badge-expected" class="inline-flex items-center gap-1.5 px-2.5 py-1 rounded-md text-[10px] font-mono font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20">
                            <span class="w-1.5 h-1.5 rounded-full bg-amber-400"></span>
                            AWAITING INPUTS
                        </span>
                    </div>

                    <div class="mb-4">
                        <h3 class="text-sm text-slate-400 mb-1">Expected Pipeline Revenue</h3>
                        <div id="display-expected" class="text-3xl sm:text-4xl font-mono font-bold text-slate-400 tracking-tight break-all">---</div>
                    </div>

                    <div class="grid grid-cols-2 gap-4 pt-4 border-t border-slate-800/80 text-xs font-mono text-slate-400">
                        <div>
                            <span class="block text-[10px] text-slate-500 uppercase">Expected Deals</span>
                            <span id="display-expected-deals" class="text-slate-300 font-semibold text-sm">---</span>
                        </div>
                        <div>
                            <span class="block text-[10px] text-slate-500 uppercase">Conversion Efficiency</span>
                            <span id="display-efficiency" class="text-slate-300 font-semibold text-sm">---</span>
                        </div>
                    </div>
                </div>

                <!-- Live Telemetry Cards Grid -->
                <div>
                    <div class="flex items-center justify-between mb-3 px-1">
                        <h3 class="text-xs font-semibold uppercase tracking-wider text-slate-400">Stored Parameters</h3>
                        <span id="last-sync-label" class="text-xs font-mono text-slate-500">SYNC: NEVER</span>
                    </div>

                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
                        <!-- Card 1: Gross Revenue -->
                        <div id="card-revenue" class="bg-slate-900/90 border border-slate-800 rounded-2xl p-4 flex flex-col justify-between transition-all duration-300">
                            <div class="flex items-start justify-between gap-2 mb-2">
                                <span class="text-[11px] font-medium text-slate-400 leading-snug">Gross Revenue</span>
                                <span id="badge-revenue" class="inline-flex items-center gap-1 px-1.5 py-0.5 rounded text-[9px] font-mono font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20">---</span>
                            </div>
                            <div>
                                <div id="display-revenue" class="text-xl font-mono font-bold text-slate-500 tracking-tight break-all">---</div>
                            </div>
                        </div>

                        <!-- Card 2: Win Rate -->
                        <div id="card-winrate" class="bg-slate-900/90 border border-slate-800 rounded-2xl p-4 flex flex-col justify-between transition-all duration-300">
                            <div class="flex items-start justify-between gap-2 mb-2">
                                <span class="text-[11px] font-medium text-slate-400 leading-snug">Win Rate</span>
                                <span id="badge-winrate" class="inline-flex items-center gap-1 px-1.5 py-0.5 rounded text-[9px] font-mono font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20">---</span>
                            </div>
                            <div>
                                <div id="display-winrate" class="text-xl font-mono font-bold text-slate-500 tracking-tight break-all">---</div>
                            </div>
                        </div>

                        <!-- Card 3: Avg Deal Size -->
                        <div id="card-dealsize" class="bg-slate-900/90 border border-slate-800 rounded-2xl p-4 flex flex-col justify-between transition-all duration-300">
                            <div class="flex items-start justify-between gap-2 mb-2">
                                <span class="text-[11px] font-medium text-slate-400 leading-snug">Avg Deal Size</span>
                                <span id="badge-dealsize" class="inline-flex items-center gap-1 px-1.5 py-0.5 rounded text-[9px] font-mono font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20">---</span>
                            </div>
                            <div>
                                <div id="display-dealsize" class="text-xl font-mono font-bold text-slate-500 tracking-tight break-all">---</div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Raw JSON localStorage Inspector -->
                <div class="bg-slate-900/90 border border-slate-800 rounded-2xl overflow-hidden shadow-xl flex-grow flex flex-col">
                    <div class="bg-slate-950/80 border-b border-slate-800 px-4 py-3 flex items-center justify-between">
                        <div class="flex items-center space-x-2">
                            <div class="flex space-x-1.5">
                                <span class="w-2.5 h-2.5 rounded-full bg-slate-700"></span>
                                <span class="w-2.5 h-2.5 rounded-full bg-slate-700"></span>
                                <span class="w-2.5 h-2.5 rounded-full bg-slate-700"></span>
                            </div>
                            <span class="text-xs font-mono text-slate-400 ml-2">localStorage.getItem("<span class="text-cyan-400">pipeline_revenue_calculator_v1</span>")</span>
                        </div>
                        <button 
                            type="button" 
                            onclick="copyRawJson()" 
                            class="text-xs font-mono text-slate-400 hover:text-white bg-slate-800/80 hover:bg-slate-700 px-2.5 py-1 rounded-lg transition-colors flex items-center gap-1.5 cursor-pointer"
                        >
                            <svg class="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z"></path></svg>
                            <span id="copy-btn-text">Copy JSON</span>
                        </button>
                    </div>

                    <div class="p-5 bg-slate-950/60 flex-grow overflow-x-auto">
                        <pre id="json-inspector" class="font-mono text-xs sm:text-sm leading-relaxed text-cyan-300"></pre>
                    </div>

                    <div class="bg-slate-900/90 border-t border-slate-800/80 px-4 py-2.5 flex items-center justify-between text-[11px] font-mono text-slate-500">
                        <span>STORAGE ENGINE: window.localStorage</span>
                        <span id="storage-bytes">0 BYTES ALLOCATED</span>
                    </div>
                </div>

            </section>
        </div>
    </main>

    <!-- Footer -->
    <footer class="border-t border-slate-900 py-5 mt-8">
        <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 flex flex-col sm:flex-row items-center justify-between text-xs text-slate-500 gap-2">
            <span>Client-Side Pipeline Forecasting & State Controller</span>
            <span class="font-mono">Blank inputs preserve "---" awaiting sentinel</span>
        </div>
    </footer>

    <!-- Application Logic -->
    <script>
        const STORAGE_KEY = 'pipeline_revenue_calculator_v1';
        const EMPTY_SENTINEL = '---';

        const DEFAULT_STATE = {
            grossRevenue: EMPTY_SENTINEL,
            winRate: EMPTY_SENTINEL,
            avgDealSize: EMPTY_SENTINEL,
            updatedAt: null
        };

        function formatCurrency(val) {
            const num = parseFloat(val);
            if (isNaN(num)) return val;
            return '$' + num.toLocaleString('en-US', { maximumFractionDigits: 2 });
        }

        function formatPercent(val) {
            const num = parseFloat(val);
            if (isNaN(num)) return val;
            return num + '%';
        }

        function loadStateFromStorage() {
            try {
                const raw = localStorage.getItem(STORAGE_KEY);
                if (!raw) return { ...DEFAULT_STATE };
                const parsed = JSON.parse(raw);
                return {
                    grossRevenue: parsed.grossRevenue && parsed.grossRevenue.trim() !== '' ? parsed.grossRevenue : EMPTY_SENTINEL,
                    winRate: parsed.winRate && parsed.winRate.trim() !== '' ? parsed.winRate : EMPTY_SENTINEL,
                    avgDealSize: parsed.avgDealSize && parsed.avgDealSize.trim() !== '' ? parsed.avgDealSize : EMPTY_SENTINEL,
                    updatedAt: parsed.updatedAt || null
                };
            } catch (error) {
                console.error('Error reading localStorage:', error);
                return { ...DEFAULT_STATE };
            }
        }

        function saveStateToStorage(newState) {
            try {
                const serialized = JSON.stringify(newState, null, 2);
                localStorage.setItem(STORAGE_KEY, serialized);
                renderDashboard(newState, serialized);
                return true;
            } catch (error) {
                console.error('Error writing localStorage:', error);
                showToast('Failed to write to localStorage. Check browser settings.', 'error');
                return false;
            }
        }

        function resetStorageToEmpty() {
            try {
                localStorage.removeItem(STORAGE_KEY);
            } catch (error) {
                console.error('Error clearing localStorage:', error);
            }

            document.getElementById('input-revenue').value = '';
            document.getElementById('input-winrate').value = '';
            document.getElementById('input-dealsize').value = '';

            renderDashboard({ ...DEFAULT_STATE }, null);
            calculateDynamicPreview();
            showToast('Local storage purged. All metrics reset to "---" awaiting state.', 'reset');
        }

        function calculateExpectedRevenue(revStr, winStr, dealStr) {
            if (!revStr || revStr === EMPTY_SENTINEL || !winStr || winStr === EMPTY_SENTINEL) {
                return { expectedRev: EMPTY_SENTINEL, expectedDeals: EMPTY_SENTINEL, efficiency: EMPTY_SENTINEL };
            }

            const gross = parseFloat(revStr.replace(/[^0-9.-]+/g, ""));
            const win = parseFloat(winStr.replace(/[^0-9.-]+/g, ""));
            const dealSize = dealStr && dealStr !== EMPTY_SENTINEL ? parseFloat(dealStr.replace(/[^0-9.-]+/g, "")) : 0;

            if (isNaN(gross) || isNaN(win)) {
                return { expectedRev: EMPTY_SENTINEL, expectedDeals: EMPTY_SENTINEL, efficiency: EMPTY_SENTINEL };
            }

            const expectedRev = gross * (win / 100.0);
            
            let expectedDeals = '---';
            if (!isNaN(dealSize) && dealSize > 0) {
                const totalDeals = gross / dealSize;
                const wonDeals = totalDeals * (win / 100.0);
                expectedDeals = wonDeals.toFixed(1) + ' deals';
            }

            return {
                expectedRev: '$' + expectedRev.toLocaleString('en-US', { minimumFractionDigits: 0, maximumFractionDigits: 2 }),
                expectedDeals: expectedDeals,
                efficiency: win + '%'
            };
        }

        function calculateDynamicPreview() {
            const rawRev = document.getElementById('input-revenue').value.trim();
            const rawWin = document.getElementById('input-winrate').value.trim();
            const rawDeal = document.getElementById('input-dealsize').value.trim();

            const res = calculateExpectedRevenue(rawRev, rawWin, rawDeal);
            const displayEl = document.getElementById('display-expected');
            const dealsEl = document.getElementById('display-expected-deals');
            const effEl = document.getElementById('display-efficiency');
            const badgeEl = document.getElementById('badge-expected');

            displayEl.textContent = res.expectedRev;
            dealsEl.textContent = res.expectedDeals;
            effEl.textContent = res.efficiency;

            if (res.expectedRev === EMPTY_SENTINEL) {
                displayEl.className = 'text-3xl sm:text-4xl font-mono font-bold text-slate-400 tracking-tight break-all';
                badgeEl.className = 'inline-flex items-center gap-1.5 px-2.5 py-1 rounded-md text-[10px] font-mono font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20';
                badgeEl.innerHTML = `<span class="w-1.5 h-1.5 rounded-full bg-amber-400"></span>AWAITING INPUTS`;
            } else {
                displayEl.className = 'text-3xl sm:text-4xl font-mono font-bold text-emerald-400 tracking-tight break-all';
                badgeEl.className = 'inline-flex items-center gap-1.5 px-2.5 py-1 rounded-md text-[10px] font-mono font-semibold bg-emerald-500/10 text-emerald-400 border border-emerald-500/20';
                badgeEl.innerHTML = `<span class="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse"></span>FORECAST ACTIVE`;
            }
        }

        function updateMetricCard(keySuffix, value, isFormattedPercent = false, isFormattedCurrency = false) {
            const displayEl = document.getElementById(`display-${keySuffix}`);
            const badgeEl = document.getElementById(`badge-${keySuffix}`);
            const cardEl = document.getElementById(`card-${keySuffix}`);

            const isAwaiting = !value || value === EMPTY_SENTINEL;

            let formattedVal = value;
            if (!isAwaiting) {
                if (isFormattedCurrency) formattedVal = formatCurrency(value);
                else if (isFormattedPercent) formattedVal = formatPercent(value);
            }

            displayEl.textContent = isAwaiting ? EMPTY_SENTINEL : formattedVal;

            if (isAwaiting) {
                displayEl.className = 'text-xl font-mono font-bold text-slate-500 tracking-tight break-all';
                badgeEl.className = 'inline-flex items-center gap-1 px-1.5 py-0.5 rounded text-[9px] font-mono font-semibold bg-amber-500/10 text-amber-400 border border-amber-500/20';
                badgeEl.textContent = 'AWAITING';
                cardEl.className = 'bg-slate-900/90 border border-slate-800 rounded-2xl p-4 flex flex-col justify-between transition-all duration-300';
            } else {
                displayEl.className = 'text-xl font-mono font-bold text-white tracking-tight break-all';
                badgeEl.className = 'inline-flex items-center gap-1 px-1.5 py-0.5 rounded text-[9px] font-mono font-semibold bg-emerald-500/10 text-emerald-400 border border-emerald-500/20';
                badgeEl.textContent = 'STORED';
                cardEl.className = 'bg-slate-900 border border-emerald-500/30 shadow-md shadow-emerald-950/20 rounded-2xl p-4 flex flex-col justify-between transition-all duration-300';
            }
        }

        function renderDashboard(state, rawSerializedString = null) {
            updateMetricCard('revenue', state.grossRevenue, false, true);
            updateMetricCard('winrate', state.winRate, true, false);
            updateMetricCard('dealsize', state.avgDealSize, false, true);

            const activeCount = [state.grossRevenue, state.winRate, state.avgDealSize].filter(val => val && val !== EMPTY_SENTINEL).length;

            const globalDot = document.getElementById('global-status-dot');
            const globalText = document.getElementById('global-status-text');

            if (activeCount === 0) {
                globalDot.className = 'w-2 h-2 rounded-full bg-amber-400 animate-pulse';
                globalText.textContent = 'AWAITING_PAYLOAD (0/3)';
                globalText.className = 'text-amber-300';
            } else if (activeCount < 3) {
                globalDot.className = 'w-2 h-2 rounded-full bg-cyan-400 animate-pulse';
                globalText.textContent = `PARTIAL_INJECTION (${activeCount}/3)`;
                globalText.className = 'text-cyan-300';
            } else {
                globalDot.className = 'w-2 h-2 rounded-full bg-emerald-400';
                globalText.textContent = 'TELEMETRY_ACTIVE (3/3)';
                globalText.className = 'text-emerald-300';
            }

            const syncLabel = document.getElementById('last-sync-label');
            if (state.updatedAt) {
                const dateObj = new Date(state.updatedAt);
                syncLabel.textContent = `SYNC: ${dateObj.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', second: '2-digit' })}`;
            } else {
                syncLabel.textContent = 'SYNC: AWAITING';
            }

            const inspectorEl = document.getElementById('json-inspector');
            const bytesEl = document.getElementById('storage-bytes');
            const rawFromBrowser = rawSerializedString !== null ? rawSerializedString : localStorage.getItem(STORAGE_KEY);

            if (!rawFromBrowser) {
                inspectorEl.textContent = `// localStorage["${STORAGE_KEY}"] is currently null\n` + JSON.stringify({ status: "EMPTY_STORAGE_KEY", fallbackState: DEFAULT_STATE }, null, 2);
                inspectorEl.className = 'font-mono text-xs sm:text-sm leading-relaxed text-slate-400';
                bytesEl.textContent = '0 BYTES ALLOCATED';
            } else {
                inspectorEl.textContent = rawFromBrowser;
                inspectorEl.className = 'font-mono text-xs sm:text-sm leading-relaxed text-cyan-300';
                bytesEl.textContent = `${new Blob([rawFromBrowser]).size} BYTES ALLOCATED`;
            }
        }

        function hydrateFormInputs(state) {
            document.getElementById('input-revenue').value = state.grossRevenue !== EMPTY_SENTINEL ? state.grossRevenue : '';
            document.getElementById('input-winrate').value = state.winRate !== EMPTY_SENTINEL ? state.winRate : '';
            document.getElementById('input-dealsize').value = state.avgDealSize !== EMPTY_SENTINEL ? state.avgDealSize : '';
        }

        function clearSingleField(inputId) {
            const el = document.getElementById(inputId);
            if (el) {
                el.value = '';
                el.focus();
                calculateDynamicPreview();
            }
        }

        function copyRawJson() {
            const inspectorEl = document.getElementById('json-inspector');
            const copyBtnText = document.getElementById('copy-btn-text');
            const tempTextarea = document.createElement('textarea');
            tempTextarea.value = inspectorEl.textContent;
            tempTextarea.style.position = 'fixed';
            tempTextarea.style.opacity = '0';
            document.body.appendChild(tempTextarea);
            tempTextarea.select();

            try {
                document.execCommand('copy');
                copyBtnText.textContent = 'Copied!';
                setTimeout(() => { copyBtnText.textContent = 'Copy JSON'; }, 2000);
            } catch (err) {
                showToast('Unable to copy JSON.', 'error');
            } finally {
                document.body.removeChild(tempTextarea);
            }
        }

        let toastTimeout = null;
        function showToast(message, type = 'success') {
            const banner = document.getElementById('toast-banner');
            const msgEl = document.getElementById('toast-message');
            const iconEl = document.getElementById('toast-icon');

            msgEl.textContent = message;
            banner.classList.remove('hidden');

            if (type === 'success') {
                banner.className = 'mb-6 rounded-xl border border-emerald-500/30 bg-emerald-950/50 text-emerald-200 px-4 py-3 flex items-center justify-between transition-all duration-300';
                iconEl.innerHTML = `<svg class="w-5 h-5 text-emerald-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>`;
            } else if (type === 'reset') {
                banner.className = 'mb-6 rounded-xl border border-amber-500/30 bg-amber-950/50 text-amber-200 px-4 py-3 flex items-center justify-between transition-all duration-300';
                iconEl.innerHTML = `<svg class="w-5 h-5 text-amber-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15"></path></svg>`;
            } else {
                banner.className = 'mb-6 rounded-xl border border-rose-500/30 bg-rose-950/50 text-rose-200 px-4 py-3 flex items-center justify-between transition-all duration-300';
                iconEl.innerHTML = `<svg class="w-5 h-5 text-rose-400" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path></svg>`;
            }

            if (toastTimeout) clearTimeout(toastTimeout);
            toastTimeout = setTimeout(hideToast, 4000);
        }

        function hideToast() {
            document.getElementById('toast-banner').classList.add('hidden');
        }

        document.addEventListener('DOMContentLoaded', () => {
            const initialState = loadStateFromStorage();
            hydrateFormInputs(initialState);
            renderDashboard(initialState);
            calculateDynamicPreview();

            const form = document.getElementById('metrics-form');
            form.addEventListener('submit', (e) => {
                e.preventDefault();

                const rawRev = document.getElementById('input-revenue').value.trim();
                const rawWin = document.getElementById('input-winrate').value.trim();
                const rawDeal = document.getElementById('input-dealsize').value.trim();

                const nextState = {
                    grossRevenue: rawRev !== '' ? rawRev : EMPTY_SENTINEL,
                    winRate: rawWin !== '' ? rawWin : EMPTY_SENTINEL,
                    avgDealSize: rawDeal !== '' ? rawDeal : EMPTY_SENTINEL,
                    updatedAt: new Date().toISOString()
                };

                if (saveStateToStorage(nextState)) {
                    showToast('Pipeline metrics injected into localStorage successfully.', 'success');
                }
            });

            document.getElementById('reset-btn').addEventListener('click', () => {
                resetStorageToEmpty();
            });

            window.addEventListener('storage', (event) => {
                if (event.key === STORAGE_KEY) {
                    const syncedState = loadStateFromStorage();
                    hydrateFormInputs(syncedState);
                    renderDashboard(syncedState);
                    calculateDynamicPreview();
                    showToast('Synchronized state change from another browser tab.', 'success');
                }
            });
        });
    </script>
</body>
</html>


import uuid
from typing import TypedDict, Literal
from langgraph.graph import StateGraph, START, END
from langgraph.checkpoint.memory import MemorySaver # Swap for PostgresSaver in production
from langgraph.types import interrupt, Command

# 1. Define the shared state across your Company Map
class DepartmentState(TypedDict):
    task_id: str
    department: Literal["SALES", "OPERATIONS", "MARKETING"]
    input_prompt: str
    draft_output: str
    status: str

# 2. Department Agent Node (e.g., Sales Proposal Drafter)
def draft_business_asset(state: DepartmentState):
    # Replace with your LLM call (OpenAI, Anthropic, Gemini)
    generated_draft = f"[{state['department']} AGENT] Automated output for: {state['input_prompt']}"
    return {
        "draft_output": generated_draft,
        "status": "PENDING_APPROVAL"
    }

# 3. Human-in-the-Loop Approval Gate
def human_approval_node(state: DepartmentState):
    # Pauses execution and surfaces state to your frontend Approve tab
    decision = interrupt({
        "task_id": state["task_id"],
        "department": state["department"],
        "draft": state["draft_output"]
    })
    
    if decision.get("approved"):
        return {"status": "APPROVED"}
    return {"status": "REJECTED"}

# 4. External Automation Execution Node
def execute_business_action(state: DepartmentState):
    if state["status"] == "APPROVED":
        # Trigger Slack, HubSpot, Gmail, or Stripe API here
        print(f"EXECUTING LIVE ACTION: {state['draft_output']}")
        return {"status": "COMPLETED"}
    return {"status": "ABORTED"}

# Build and compile the graph
builder = StateGraph(DepartmentState)
builder.add_node("draft", draft_business_asset)
builder.add_node("approve", human_approval_node)
builder.add_node("execute", execute_business_action)

builder.add_edge(START, "draft")
builder.add_edge("draft", "approve")
builder.add_edge("approve", "execute")
builder.add_edge("execute", END)

checkpointer = MemorySaver()
company_os = builder.compile(checkpointer=checkpointer)


// components/ApprovalCard.tsx
export function ApprovalCard({ item, onDecision }: { item: any; onDecision: (id: string, approved: boolean) => void }) {
  return (
    <div className="rounded-xl bg-[#11131A] border border-white/10 p-5 shadow-lg">
      <div className="flex items-center gap-2 mb-3">
        <span className="px-2.5 py-0.5 text-xs font-mono uppercase rounded-full bg-amber-500/10 text-amber-400 border border-amber-500/20">
          {item.mode} {/* REAL or DEMO */}
        </span>
        <span className="px-2.5 py-0.5 text-xs font-mono uppercase rounded-full bg-purple-500/10 text-purple-400 border border-purple-500/20">
          PENDING APPROVAL
        </span>
        <span className="px-2.5 py-0.5 text-xs font-mono uppercase rounded-full bg-white/5 text-gray-400">
          {item.department}
        </span>
      </div>

      <h3 className="text-white font-semibold text-lg mb-1">{item.title}</h3>
      <p className="text-gray-400 text-sm mb-4">{item.draft_output}</p>

      <div className="flex items-center gap-3">
        <button
          onClick={() => onDecision(item.task_id, true)}
          className="px-4 py-2 rounded-lg bg-emerald-500 hover:bg-emerald-400 text-black font-medium text-sm transition"
        >
          ✓ Approve
        </button>
        <button
          onClick={() => onDecision(item.task_id, false)}
          className="px-4 py-2 rounded-lg bg-white/5 hover:bg-white/10 text-gray-300 border border-white/10 font-medium text-sm transition"
        >
          ✕ Reject
        </button>
      </div>
    </div>
  );
}
