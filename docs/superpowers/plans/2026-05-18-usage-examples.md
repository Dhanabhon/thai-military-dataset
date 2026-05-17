# Usage Examples Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Create practical, dependency-free code examples in Python and JavaScript to demonstrate how to use the dataset.

**Architecture:** Examples will be organized by language in the `examples/` directory. Each language folder will include a README with instructions.

**Tech Stack:** Python 3, Node.js, SQL.

---

### Task 1: Python Examples

**Files:**
- Create: `examples/python/load_json.py`
- Create: `examples/python/read_csv.py`
- Create: `examples/python/README.md`

- [ ] **Step 1: Create `examples/python/load_json.py`**

```python
import json
import os

# Path to the data relative to the project root
RANKS_PATH = '../../data/json/thai_military_ranks.json'
GROUPED_RANKS_PATH = '../../data/json/thai_military_ranks_grouped.json'

def load_example():
    # Adjust path if running from examples/python
    base_dir = os.path.dirname(__file__)
    ranks_file = os.path.join(base_dir, RANKS_PATH)
    grouped_file = os.path.join(base_dir, GROUPED_RANKS_PATH)

    print("--- Loading Flat JSON ---")
    with open(ranks_file, 'r', encoding='utf-8') as f:
        ranks = json.load(f)
        print(f"Loaded {len(ranks)} ranks.")
        print(f"First rank: {ranks[0]['rank_th']} ({ranks[0]['rank_en']})")

    print("\n--- Loading Grouped JSON ---")
    with open(grouped_file, 'r', encoding='utf-8') as f:
        grouped = json.load(f)
        for branch, items in grouped.items():
            print(f"{branch}: {len(items)} items")

if __name__ == "__main__":
    load_example()
```

- [ ] **Step 2: Create `examples/python/read_csv.py`**

```python
import csv
import os

CSV_PATH = '../../data/csv/thai_military_ranks.csv'

def read_example():
    base_dir = os.path.dirname(__file__)
    csv_file = os.path.join(base_dir, CSV_PATH)

    print("--- Reading CSV ---")
    with open(csv_file, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        army_ranks = [row for row in reader if row['branch_en'] == 'Royal Thai Army']
        print(f"Found {len(army_ranks)} Army ranks.")
        for r in army_ranks[:5]:
            print(f"- {r['rank_th']} ({r['rank_en']})")

if __name__ == "__main__":
    read_example()
```

- [ ] **Step 3: Create `examples/python/README.md`**

```markdown
# Python Examples

This folder contains simple Python scripts to demonstrate how to use the Thai Military Dataset.

## How to run

Ensure you are in this directory:
```bash
cd examples/python
python3 load_json.py
python3 read_csv.py
```
```

- [ ] **Step 4: Commit**

```bash
git add examples/python/*
git commit -m "feat: add Python usage examples"
```

---

### Task 2: JavaScript Examples

**Files:**
- Create: `examples/javascript/load_json.js`
- Create: `examples/javascript/README.md`

- [ ] **Step 1: Create `examples/javascript/load_json.js`**

```javascript
const fs = require('fs');
const path = require('path');

const RANKS_PATH = path.join(__dirname, '../../data/json/thai_military_ranks.json');

try {
  const data = fs.readFileSync(RANKS_PATH, 'utf8');
  const ranks = JSON.parse(data);

  console.log('--- JavaScript JSON Load Example ---');
  console.log(`Loaded ${ranks.length} ranks.`);
  
  const gen = ranks.find(r => r.id === 'RTA-O-01');
  if (gen) {
    console.log(`Found Rank: ${gen.rank_th} (${gen.rank_en})`);
  }
} catch (err) {
  console.error('Error loading JSON:', err);
}
```

- [ ] **Step 2: Create `examples/javascript/README.md`**

```markdown
# JavaScript Examples

Simple Node.js scripts to demonstrate dataset usage.

## How to run

```bash
cd examples/javascript
node load_json.js
```
```

- [ ] **Step 3: Commit**

```bash
git add examples/javascript/*
git commit -m "feat: add JavaScript usage examples"
```

---

### Task 3: SQL Examples

**Files:**
- Create: `examples/sql/queries.sql`

- [ ] **Step 1: Create `examples/sql/queries.sql`**

```sql
-- 1. Get all ranks for the Royal Thai Navy
SELECT * FROM thai_military_ranks 
WHERE branch_en = 'Royal Thai Navy';

-- 2. Count number of corps per branch
SELECT branch_en, COUNT(*) as corps_count 
FROM thai_military_corps 
GROUP BY branch_en;

-- 3. Search for a specific rank by abbreviation
SELECT * FROM thai_military_ranks 
WHERE abbr_en = 'GEN';
```

- [ ] **Step 2: Commit**

```bash
git add examples/sql/*
git commit -m "feat: add SQL query examples"
```

---

### Task 4: Documentation Update

**Files:**
- Modify: `GEMINI.md`

- [ ] **Step 1: Mark TODO as completed in GEMINI.md**
- [ ] **Step 2: Commit**

```bash
git add GEMINI.md
git commit -m "docs: mark examples task as completed"
```
