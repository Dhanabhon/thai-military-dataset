# GitHub Pages Demo Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build an interactive, searchable demo site for the Thai Military Dataset using Vanilla JS and Tailwind CSS, hosted on GitHub Pages.

**Architecture:** A Single Page Application (SPA) in `index.html` that fetches JSON data and provides a real-time search interface with branch-specific highlighting.

**Tech Stack:** HTML5, Vanilla JavaScript, Tailwind CSS (via CDN).

---

### Task 1: Initialize index.html & Basic Layout

**Files:**
- Create: `index.html`

- [ ] **Step 1: Create `index.html` with basic structure and Tailwind CDN**

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🇹🇭 Thai Military Dataset Demo</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-slate-50 min-h-screen font-sans text-slate-900">
    <div class="max-w-3xl mx-auto px-6 py-12">
        <!-- Header -->
        <header class="flex justify-between items-center mb-16">
            <div class="font-bold text-xl tracking-tight">🇹🇭 Thai Military Data</div>
            <nav class="flex gap-6 text-sm font-medium text-slate-500">
                <a href="https://github.com/Dhanabhon/thai-military-dataset" class="hover:text-slate-900">GitHub</a>
                <a href="#" class="hover:text-slate-900">Documentation</a>
            </nav>
        </header>

        <!-- Main -->
        <main class="text-center">
            <h1 class="text-4xl font-extrabold mb-4 tracking-tight">Find Ranks & Corps</h1>
            <p class="text-lg text-slate-500 mb-10">Explore the comprehensive dataset of Thai military personnel structure.</p>
            
            <div id="search-container" class="relative text-left max-w-lg mx-auto">
                <!-- Search bar and results will go here -->
                <div class="placeholder bg-white p-4 border border-slate-200 rounded-xl shadow-sm text-slate-400">
                    Loading dataset...
                </div>
            </div>
        </main>

        <footer class="mt-24 text-center text-xs text-slate-400">
            Powered by Thai Military Dataset • Built with Gemini AI
        </footer>
    </div>
    
    <script>
        console.log('Demo app initialized');
    </script>
</body>
</html>
```

- [ ] **Step 2: Commit**

```bash
git add index.html
git commit -m "feat: initialize demo index.html with layout"
```

---

### Task 2: Implement Data Fetching & Search UI

**Files:**
- Modify: `index.html`

- [ ] **Step 1: Implement JSON fetching and basic search input**

Update the script and the search container.

```javascript
// Replace placeholder in index.html with:
const container = document.getElementById('search-container');
container.innerHTML = `
    <div class="relative group">
        <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none text-slate-400">
            <svg class="h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
        </div>
        <input type="text" id="search-input" placeholder="Search by rank name or abbreviation..." class="block w-full pl-11 pr-4 py-3 border border-slate-200 rounded-xl leading-5 bg-white placeholder-slate-400 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500 sm:text-sm shadow-sm transition-all">
    </div>
    <div id="results-dropdown" class="hidden absolute z-10 mt-2 w-full bg-white border border-slate-200 rounded-xl shadow-xl overflow-hidden max-h-96 overflow-y-auto">
        <!-- Results will be injected here -->
    </div>
`;

let ranks = [];
let corps = [];

async function init() {
    try {
        const [ranksRes, corpsRes] = await Promise.all([
            fetch('data/json/thai_military_ranks.json'),
            fetch('data/json/thai_military_corps.json')
        ]);
        ranks = await ranksRes.json();
        corps = await corpsRes.json();
        console.log('Data loaded:', { ranks: ranks.length, corps: corps.length });
    } catch (err) {
        console.error('Failed to load data:', err);
    }
}
init();
```

- [ ] **Step 2: Commit**

```bash
git add index.html
git commit -m "feat: implement data fetching and search UI shell"
```

---

### Task 3: Implement Search Filtering Logic

**Files:**
- Modify: `index.html`

- [ ] **Step 1: Implement real-time filtering and result rendering**

Add the search listener and rendering functions.

```javascript
const input = document.getElementById('search-input');
const dropdown = document.getElementById('results-dropdown');

function renderResults(results) {
    if (results.length === 0) {
        dropdown.innerHTML = '<div class="px-4 py-3 text-sm text-slate-500 text-center">No results found</div>';
    } else {
        dropdown.innerHTML = results.map(item => {
            const isRank = 'rank_en' in item;
            const name_en = isRank ? item.rank_en : item.corps_en;
            const name_th = isRank ? item.rank_th : item.corps_th;
            const abbr = isRank ? item.abbr_en : '';
            const branch = item.branch_en.replace('Royal Thai ', '');
            
            return `
                <div class="px-4 py-3 hover:bg-slate-50 cursor-pointer border-b border-slate-100 last:border-0 flex justify-between items-center group/item transition-colors">
                    <div>
                        <div class="text-sm font-semibold text-slate-900 group-hover/item:text-blue-600 transition-colors">${name_en} <span class="text-slate-400 font-normal ml-1">(${name_th})</span></div>
                        <div class="text-[10px] text-slate-400 uppercase tracking-wider">${isRank ? 'Rank' : 'Corps'} ${abbr ? '• ' + abbr : ''}</div>
                    </div>
                    <span class="text-[10px] font-bold px-2 py-0.5 rounded-full bg-slate-100 text-slate-600 uppercase tracking-tighter">${branch}</span>
                </div>
            `;
        }).join('');
    }
    dropdown.classList.remove('hidden');
}

input.addEventListener('input', (e) => {
    const query = e.target.value.toLowerCase().trim();
    if (!query) {
        dropdown.classList.add('hidden');
        return;
    }

    const filteredRanks = ranks.filter(r => 
        r.rank_en.toLowerCase().includes(query) || 
        r.rank_th.includes(query) || 
        r.abbr_en.toLowerCase().includes(query) ||
        r.abbr_th.includes(query)
    );

    const filteredCorps = corps.filter(c => 
        c.corps_en.toLowerCase().includes(query) || 
        c.corps_th.includes(query)
    );

    renderResults([...filteredRanks, ...filteredCorps].slice(0, 15));
});

// Hide dropdown when clicking outside
document.addEventListener('click', (e) => {
    if (!container.contains(e.target)) dropdown.classList.add('hidden');
});
```

- [ ] **Step 2: Commit**

```bash
git add index.html
git commit -m "feat: implement real-time search filtering and rendering"
```

---

### Task 4: Final Polish & Readme Update

**Files:**
- Modify: `README.md`
- Modify: `GEMINI.md`

- [ ] **Step 1: Add a "Live Demo" link to README.md**
- [ ] **Step 2: Update TODOs in GEMINI.md**
- [ ] **Step 3: Commit**

```bash
git add README.md GEMINI.md
git commit -m "docs: add live demo link and update tasks"
```
