# Thai Military Corps (เหล่า) Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Create `data/csv/thai_military_corps.csv` with a comprehensive list of corps and groups for the Army, Navy, and Air Force.

**Architecture:** A new CSV file following the standard schema: `id`, `branch_th`, `branch_en`, `corps_th`, `corps_en`.

**Tech Stack:** CSV, Python (for validation).

---

### Task 1: Royal Thai Army (RTA) Corps

**Files:**
- Create: `data/csv/thai_military_corps.csv`

- [ ] **Step 1: Write CSV Header and RTA Corps**

```csv
id,branch_th,branch_en,corps_th,corps_en
RTA-CORPS-01,กองทัพบก,Royal Thai Army,เหล่าทหารราบ,Infantry
RTA-CORPS-02,กองทัพบก,Royal Thai Army,เหล่าทหารม้า,Cavalry
RTA-CORPS-03,กองทัพบก,Royal Thai Army,เหล่าทหารปืนใหญ่,Artillery
RTA-CORPS-04,กองทัพบก,Royal Thai Army,เหล่าทหารช่าง,Engineers
RTA-CORPS-05,กองทัพบก,Royal Thai Army,เหล่าทหารสื่อสาร,Signals
RTA-CORPS-06,กองทัพบก,Royal Thai Army,เหล่าททหารการข่าว,Military Intelligence
RTA-CORPS-07,กองทัพบก,Royal Thai Army,เหล่าทหารพลาธิการ,Quartermaster
RTA-CORPS-08,กองทัพบก,Royal Thai Army,เหล่าทหารสรรพาวุธ,Ordnance
RTA-CORPS-09,กองทัพบก,Royal Thai Army,เหล่าทหารขนส่ง,Transport
RTA-CORPS-10,กองทัพบก,Royal Thai Army,เหล่าทหารแพทย์,Medical
RTA-CORPS-11,กองทัพบก,Royal Thai Army,เหล่าทหารการเงิน,Finance
RTA-CORPS-12,กองทัพบก,Royal Thai Army,เหล่าทหารสารบรรณ,Adjutant General
RTA-CORPS-13,กองทัพบก,Royal Thai Army,เหล่าทหารสารวัตร,Military Police
RTA-CORPS-14,กองทัพบก,Royal Thai Army,เหล่าทหารพระธรรมนูญ,Judge Advocate General
RTA-CORPS-15,กองทัพบก,Royal Thai Army,เหล่าทหารการสัตว์,Animal Transport
RTA-CORPS-16,กองทัพบก,Royal Thai Army,เหล่าทหารดุริยางค์,Band
RTA-CORPS-17,กองทัพบก,Royal Thai Army,เหล่าทหารไปรษณีย์,Post
```

- [ ] **Step 2: Commit**

```bash
git add data/csv/thai_military_corps.csv
git commit -m "feat: add Royal Thai Army corps to dataset"
```

### Task 2: Royal Thai Navy (RTN) Groups and Corps

**Files:**
- Modify: `data/csv/thai_military_corps.csv`

- [ ] **Step 1: Append RTN Groups and Corps**

```csv
RTN-CORPS-01,กองทัพเรือ,Royal Thai Navy,พรรคนาวิน,Line Group
RTN-CORPS-02,กองทัพเรือ,Royal Thai Navy,พรรคกลิน,Engineering Group
RTN-CORPS-03,กองทัพเรือ,Royal Thai Navy,พรรคนาวิกโยธิน,Marine Corps Group
RTN-CORPS-04,กองทัพเรือ,Royal Thai Navy,พรรคพิเศษ,Special Group
RTN-CORPS-05,กองทัพเรือ,Royal Thai Navy,เหล่าทหารพลาธิการ,Quartermaster Corps
RTN-CORPS-06,กองทัพเรือ,Royal Thai Navy,เหล่าทหารแพทย์,Medical Corps
RTN-CORPS-07,กองทัพเรือ,Royal Thai Navy,เหล่าทหารการเงิน,Finance Corps
RTN-CORPS-08,กองทัพเรือ,Royal Thai Navy,เหล่าทหารพระธรรมนูญ,Judge Advocate General Corps
RTN-CORPS-09,กองทัพเรือ,Royal Thai Navy,เหล่าทหารสารบรรณ,Adjutant General Corps
RTN-CORPS-10,กองทัพเรือ,Royal Thai Navy,เหล่าทหารช่าง,Engineers Corps
RTN-CORPS-11,กองทัพเรือ,Royal Thai Navy,เหล่าทหารสรรพาวุธ,Ordnance Corps
RTN-CORPS-12,กองทัพเรือ,Royal Thai Navy,เหล่าทหารดุริยางค์,Band Corps
RTN-CORPS-13,กองทัพเรือ,Royal Thai Navy,เหล่าทหารสารวัตร,Military Police Corps
RTN-CORPS-14,กองทัพเรือ,Royal Thai Navy,เหล่าทหารขนส่ง,Transport Corps
RTN-CORPS-15,กองทัพเรือ,Royal Thai Navy,เหล่าทหารอุทกศาสตร์,Hydrographic Corps
```

- [ ] **Step 2: Commit**

```bash
git add data/csv/thai_military_corps.csv
git commit -m "feat: add Royal Thai Navy groups and corps"
```

### Task 3: Royal Thai Air Force (RTAF) Corps

**Files:**
- Modify: `data/csv/thai_military_corps.csv`

- [ ] **Step 1: Append RTAF Corps**

```csv
RTAF-CORPS-01,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารนักบิน,Pilots
RTAF-CORPS-02,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารอากาศโยธิน,Air Security
RTAF-CORPS-03,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารต่อสู้อากาศยาน,Anti-Aircraft Artillery
RTAF-CORPS-04,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารช่างอากาศ,Aeronautical Engineering
RTAF-CORPS-05,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารสื่อสารอิเล็กทรอนิกส์,Communications and Electronics
RTAF-CORPS-06,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารสรรพาวุธ,Ordnance
RTAF-CORPS-07,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารพลาธิการ,Quartermaster
RTAF-CORPS-08,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารขนส่ง,Transport
RTAF-CORPS-09,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารแพทย์,Medical
RTAF-CORPS-10,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารการเงิน,Finance
RTAF-CORPS-11,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารสารบรรณ,Adjutant General
RTAF-CORPS-12,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารสารวัตร,Military Police
RTAF-CORPS-13,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารพระธรรมนูญ,Judge Advocate General
RTAF-CORPS-14,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารดุริยางค์,Band
RTAF-CORPS-15,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารพัสดุ,Supply
RTAF-CORPS-16,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารช่างโยธา,Civil Engineering
RTAF-CORPS-17,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารแผนที่,Mapping/Survey
RTAF-CORPS-18,กองทัพอากาศ,Royal Thai Air Force,เหล่าทหารอุตุ,Meteorology
```

- [ ] **Step 2: Commit**

```bash
git add data/csv/thai_military_corps.csv
git commit -m "feat: add Royal Thai Air Force corps"
```

### Task 4: Update Validation Script

**Files:**
- Modify: `scripts/validate_dataset.py`

- [ ] **Step 1: Refactor Validation Script to handle multiple files**

```python
import csv
import sys
import os

def validate_csv(file_path, required_fields):
    print(f"Validating {file_path}...")
    ids = set()
    errors = []
    
    if not os.path.exists(file_path):
        print(f"ERROR: File {file_path} not found.")
        return False

    with open(file_path, mode='r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        
        if reader.fieldnames != required_fields:
            errors.append(f"Header mismatch. Expected {required_fields}, got {reader.fieldnames}")
            
        for i, row in enumerate(reader, start=2):
            # Check for missing values
            for field in required_fields:
                if not row.get(field):
                    errors.append(f"Line {i}: Missing value for field '{field}'")
            
            # Check for unique IDs
            if row['id'] in ids:
                errors.append(f"Line {i}: Duplicate ID '{row['id']}'")
            ids.add(row['id'])
            
    if errors:
        for error in errors:
            print(f"ERROR: {error}")
        return False
    
    print(f"Success! {len(ids)} items validated in {file_path}.")
    return True

if __name__ == "__main__":
    datasets = [
        {
            "path": "data/csv/thai_military_ranks.csv",
            "fields": ['id', 'branch_th', 'branch_en', 'type_th', 'type_en', 'rank_th', 'rank_en', 'abbr_th', 'abbr_en']
        },
        {
            "path": "data/csv/thai_military_corps.csv",
            "fields": ['id', 'branch_th', 'branch_en', 'corps_th', 'corps_en']
        }
    ]
    
    all_valid = True
    for ds in datasets:
        if not validate_csv(ds["path"], ds["fields"]):
            all_valid = False
            
    if all_valid:
        sys.exit(0)
    else:
        sys.exit(1)
```

- [ ] **Step 2: Run Validation**

Run: `python3 scripts/validate_dataset.py`
Expected: Success for both files.

- [ ] **Step 3: Commit**

```bash
git add scripts/validate_dataset.py
git commit -m "test: update validation script to support multiple datasets"
```
