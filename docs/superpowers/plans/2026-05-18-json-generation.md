# JSON Data Generation Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Convert Thai military ranks and corps CSV files into flat and grouped JSON formats.

**Architecture:** A Python script `scripts/generate_json.py` will serve as the source of truth for the transformation. It will read CSV files and output four JSON files to `data/json/`. The `scripts/validate_dataset.py` script will be updated to verify the output.

**Tech Stack:** Python 3 (standard library: `csv`, `json`, `os`).

---

### Task 1: Update Validation Script (TDD Setup)

**Files:**
- Modify: `scripts/validate_dataset.py`

- [ ] **Step 1: Update `validate_dataset.py` to check for JSON files**

Add checks for `data/json/thai_military_ranks.json`, `data/json/thai_military_ranks_grouped.json`, `data/json/thai_military_corps.json`, and `data/json/thai_military_corps_grouped.json`.

```python
# In scripts/validate_dataset.py
import json

def validate_json_file(file_path, expected_count, is_grouped=False):
    print(f"Validating {file_path}...")
    if not os.path.exists(file_path):
        print(f"Error: {file_path} not found.")
        return False
    
    with open(file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
        
    if is_grouped:
        total_count = sum(len(items) for items in data.values())
    else:
        total_count = len(data)
        
    if total_count != expected_count:
        print(f"Error: {file_path} count mismatch. Expected {expected_count}, got {total_count}.")
        return False
        
    print(f"Successfully validated {file_path} ({total_count} records).")
    return True

# Update main loop to call this
```

- [ ] **Step 2: Run validation to verify it fails**

Run: `python3 scripts/validate_dataset.py`
Expected: FAIL (files not found)

- [ ] **Step 3: Commit**

```bash
git add scripts/validate_dataset.py
git commit -m "test: update validation script to expect JSON files"
```

---

### Task 2: Implement JSON Generation Script (Skeleton)

**Files:**
- Create: `scripts/generate_json.py`

- [ ] **Step 1: Create skeleton for `generate_json.py`**

```python
import csv
import json
import os

def csv_to_json(csv_path, flat_json_path, grouped_json_path, group_key):
    # TODO: Implement in Task 3
    pass

def main():
    os.makedirs('data/json', exist_ok=True)
    # Ranks
    csv_to_json('data/csv/thai_military_ranks.csv', 
                'data/json/thai_military_ranks.json', 
                'data/json/thai_military_ranks_grouped.json', 
                'branch_en')
    # Corps
    csv_to_json('data/csv/thai_military_corps.csv', 
                'data/json/thai_military_corps.json', 
                'data/json/thai_military_corps_grouped.json', 
                'branch_en')

if __name__ == "__main__":
    main()
```

- [ ] **Step 2: Commit**

```bash
git add scripts/generate_json.py
git commit -m "feat: add skeleton for JSON generation script"
```

---

### Task 3: Implement Conversion Logic

**Files:**
- Modify: `scripts/generate_json.py`

- [ ] **Step 1: Implement `csv_to_json` function**

```python
def csv_to_json(csv_path, flat_json_path, grouped_json_path, group_key):
    print(f"Converting {csv_path}...")
    items = []
    grouped_items = {}
    
    with open(csv_path, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            items.append(row)
            
            group_val = row[group_key]
            if group_val not in grouped_items:
                grouped_items[group_val] = []
            grouped_items[group_val].append(row)
            
    # Write Flat
    with open(flat_json_path, 'w', encoding='utf-8') as f:
        json.dump(items, f, ensure_ascii=False, indent=2)
        
    # Write Grouped
    with open(grouped_json_path, 'w', encoding='utf-8') as f:
        json.dump(grouped_items, f, ensure_ascii=False, indent=2)
        
    print(f"Generated {flat_json_path} and {grouped_json_path}")
```

- [ ] **Step 2: Run generation**

Run: `python3 scripts/generate_json.py`
Expected: Files created in `data/json/`

- [ ] **Step 3: Run validation to verify it passes**

Run: `python3 scripts/validate_dataset.py`
Expected: PASS

- [ ] **Step 4: Commit**

```bash
git add scripts/generate_json.py data/json/*.json
git commit -m "feat: implement JSON generation logic and generate data"
```

---

### Task 4: Final Verification & Readme Update

**Files:**
- Modify: `README.md`
- Modify: `GEMINI.md`

- [ ] **Step 1: Update README.md to include JSON format info**
- [ ] **Step 2: Mark TODO as completed in GEMINI.md**
- [ ] **Step 3: Commit**

```bash
git add README.md GEMINI.md
git commit -m "docs: update README and TODOs for JSON format"
```
