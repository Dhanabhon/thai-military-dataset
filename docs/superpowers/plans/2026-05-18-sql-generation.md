# SQL Data Generation Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Convert Thai military ranks and corps CSV files into dialect-specific SQL scripts (MySQL, PostgreSQL, SQLite).

**Architecture:** A Python script `scripts/generate_sql.py` will read CSV files and output three SQL files to `data/sql/`. The `scripts/validate_dataset.py` script will be updated to verify the presence and basic content of the SQL files.

**Tech Stack:** Python 3 (standard library: `csv`, `os`).

---

### Task 1: Update Validation Script (TDD Setup)

**Files:**
- Modify: `scripts/validate_dataset.py`

- [ ] **Step 1: Update `validate_dataset.py` to check for SQL files**

Add checks for `data/sql/mysql.sql`, `data/sql/postgres.sql`, and `data/sql/sqlite.sql`.

```python
# In scripts/validate_dataset.py
def validate_sql_file(file_path):
    print(f"Validating {file_path}...")
    if not os.path.exists(file_path):
        print(f"Error: {file_path} not found.")
        return False
    
    # Basic check for CREATE and INSERT keywords
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
        if "CREATE TABLE" not in content or "INSERT INTO" not in content:
            print(f"Error: {file_path} is missing basic SQL commands.")
            return False
            
    print(f"Successfully validated {file_path}.")
    return True

# Update main loop to call this
```

- [ ] **Step 2: Run validation to verify it fails**

Run: `python3 scripts/validate_dataset.py`
Expected: FAIL (files not found)

- [ ] **Step 3: Commit**

```bash
git add scripts/validate_dataset.py
git commit -m "test: update validation script to expect SQL files"
```

---

### Task 2: Implement SQL Generation Script

**Files:**
- Create: `scripts/generate_sql.py`

- [ ] **Step 1: Create `scripts/generate_sql.py`**

```python
import csv
import os

def generate_sql(engine):
    sql_path = f'data/sql/{engine}.sql'
    print(f"Generating {sql_path}...")
    
    # Dialect-specific settings
    quote = "`" if engine == "mysql" else '"'
    on_conflict = ""
    if engine == "mysql":
        on_conflict = "IGNORE"
    elif engine == "postgresql" or engine == "sqlite":
        # Simplified for common INSERT usage
        on_conflict = ""
        
    with open(sql_path, 'w', encoding='utf-8') as out:
        # Schema for ranks
        out.write(f"CREATE TABLE IF NOT EXISTS {quote}thai_military_ranks{quote} (\n")
        out.write(f"  {quote}id{quote} VARCHAR(20) PRIMARY KEY,\n")
        out.write(f"  {quote}branch_th{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}branch_en{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}type_th{quote} VARCHAR(50) NOT NULL,\n")
        out.write(f"  {quote}type_en{quote} VARCHAR(50) NOT NULL,\n")
        out.write(f"  {quote}rank_th{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}rank_en{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}abbr_th{quote} VARCHAR(50) NOT NULL,\n")
        out.write(f"  {quote}abbr_en{quote} VARCHAR(50) NOT NULL\n")
        out.write(");\n\n")
        
        # Insert ranks
        with open('data/csv/thai_military_ranks.csv', 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)
            for row in reader:
                vals = [row[k].replace("'", "''") for k in reader.fieldnames]
                vals_str = ", ".join(f"'{v}'" for v in vals)
                insert_stmt = f"INSERT {on_conflict} INTO {quote}thai_military_ranks{quote} VALUES ({vals_str});\n"
                out.write(insert_stmt)
        
        out.write("\n")
        
        # Schema for corps
        out.write(f"CREATE TABLE IF NOT EXISTS {quote}thai_military_corps{quote} (\n")
        out.write(f"  {quote}id{quote} VARCHAR(20) PRIMARY KEY,\n")
        out.write(f"  {quote}branch_th{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}branch_en{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}type_th{quote} VARCHAR(50) NOT NULL,\n")
        out.write(f"  {quote}type_en{quote} VARCHAR(50) NOT NULL,\n")
        out.write(f"  {quote}corps_th{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}corps_en{quote} VARCHAR(100) NOT NULL\n")
        out.write(");\n\n")
        
        # Insert corps
        with open('data/csv/thai_military_corps.csv', 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)
            for row in reader:
                vals = [row[k].replace("'", "''") for k in reader.fieldnames]
                vals_str = ", ".join(f"'{v}'" for v in vals)
                insert_stmt = f"INSERT {on_conflict} INTO {quote}thai_military_corps{quote} VALUES ({vals_str});\n"
                out.write(insert_stmt)

def main():
    os.makedirs('data/sql', exist_ok=True)
    for engine in ["mysql", "postgres", "sqlite"]:
        generate_sql(engine)

if __name__ == "__main__":
    main()
```

- [ ] **Step 2: Run generation**

Run: `python3 scripts/generate_sql.py`
Expected: Files created in `data/sql/`

- [ ] **Step 3: Run validation to verify it passes**

Run: `python3 scripts/validate_dataset.py`
Expected: PASS

- [ ] **Step 4: Commit**

```bash
git add scripts/generate_sql.py data/sql/*.sql
git commit -m "feat: implement SQL generation logic and generate data"
```

---

### Task 3: Final Verification & Documentation Update

**Files:**
- Modify: `README.md`
- Modify: `GEMINI.md`

- [ ] **Step 1: Update README.md and GEMINI.md to confirm SQL format is ready**
- [ ] **Step 2: Commit**

```bash
git add README.md GEMINI.md
git commit -m "docs: finalize SQL integration docs"
```
