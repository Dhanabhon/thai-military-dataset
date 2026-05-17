# Consolidated Thai Military Rank CSV Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Create a consolidated, high-quality CSV dataset of Thai military ranks for the Army, Navy, and Air Force.

**Architecture:** Single flat CSV file with 9 columns following the project's standard schema. Includes a validation script to ensure data integrity.

**Tech Stack:** CSV, Python (for validation), Markdown (for documentation).

---

### Task 1: Project Preparation

**Files:**
- Modify: `GEMINI.md`

- [ ] **Step 1: Update GEMINI.md TODOs**

Update the TODO list to reflect that the CSV task is in progress.

```markdown
// ...
## TODOs
- [ ] Populate `data/json/` with Thai military rank data.
- [/] Populate `data/csv/` with Thai military rank data.
// ...
```

- [ ] **Step 2: Commit**

```bash
git add GEMINI.md
git commit -m "docs: mark CSV task as in progress"
```

### Task 2: Initialize CSV and Army (RTA) Data

**Files:**
- Create: `data/csv/thai_military_ranks.csv`

- [ ] **Step 1: Write CSV Header and Royal Thai Army Ranks**

Include both Commissioned Officers (O) and Non-Commissioned Officers (N).

```csv
id,branch_th,branch_en,type_th,type_en,rank_th,rank_en,abbr_th,abbr_en
RTA-O-01,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,พลเอก,General,พล.อ.,GEN
RTA-O-02,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,พลโท,Lieutenant General,พล.ท.,LTG
RTA-O-03,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,พลตรี,Major General,พล.ต.,MG
RTA-O-04,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,พันเอก,Colonel,พ.อ.,COL
RTA-O-05,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,พันโท,Lieutenant Colonel,พ.ท.,LTC
RTA-O-06,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,พันตรี,Major,พ.ต.,MAJ
RTA-O-07,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,ร้อยเอก,Captain,ร.อ.,CPT
RTA-O-08,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,ร้อยโท,Lieutenant,ร.ท.,LT
RTA-O-09,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,ร้อยตรี,Second Lieutenant,ร.ต.,2LT
RTA-N-01,กองทัพบก,Royal Thai Army,ชั้นประทวน,Non-Commissioned Officer,จ่าสิบเอก,Sergeant Major 1st Class,จ.ส.อ.,SM1
RTA-N-02,กองทัพบก,Royal Thai Army,ชั้นประทวน,Non-Commissioned Officer,จ่าสิบโท,Sergeant Major 2nd Class,จ.ส.ท.,SM2
RTA-N-03,กองทัพบก,Royal Thai Army,ชั้นประทวน,Non-Commissioned Officer,จ่าสิบตรี,Sergeant Major 3rd Class,จ.ส.ต.,SM3
RTA-N-04,กองทัพบก,Royal Thai Army,ชั้นประทวน,Non-Commissioned Officer,สิบเอก,Sergeant,ส.อ.,SGT
RTA-N-05,กองทัพบก,Royal Thai Army,ชั้นประทวน,Non-Commissioned Officer,สิบโท,Corporal,ส.ท.,CPL
RTA-N-06,กองทัพบก,Royal Thai Army,ชั้นประทวน,Non-Commissioned Officer,สิบตรี,Lance Corporal,ส.ต.,LCPL
RTA-N-07,กองทัพบก,Royal Thai Army,ชั้นประทวน,Non-Commissioned Officer,พลทหาร,Private,พลฯ,PVT
```

- [ ] **Step 2: Commit**

```bash
git add data/csv/thai_military_ranks.csv
git commit -m "feat: initialize CSV with Royal Thai Army ranks"
```

### Task 3: Royal Thai Navy (RTN) Data

**Files:**
- Modify: `data/csv/thai_military_ranks.csv`

- [ ] **Step 1: Append Royal Thai Navy Ranks**

```csv
RTN-O-01,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,พลเรือเอก,Admiral,พล.ร.อ.,ADM
RTN-O-02,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,พลเรือโท,Vice Admiral,พล.ร.ท.,VADM
RTN-O-03,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,พลเรือตรี,Rear Admiral,พล.ร.ต.,RADM
RTN-O-04,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,นาวาเอก,Captain,น.อ.,CAPT
RTN-O-05,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,นาวาโท,Commander,น.ท.,CDR
RTN-O-06,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,นาวาตรี,Lieutenant Commander,น.ต.,LCDR
RTN-O-07,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,เรือเอก,Lieutenant,ร.อ.,LT
RTN-O-08,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,เรือโท,Lieutenant Junior Grade,ร.ท.,LTJG
RTN-O-09,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,เรือตรี,Sub Lieutenant,ร.ต.,SUB LT
RTN-N-01,กองทัพเรือ,Royal Thai Navy,ชั้นประทวน,Non-Commissioned Officer,พันจ่าเอก,Chief Petty Officer 1st Class,พ.จ.อ.,CPO1
RTN-N-02,กองทัพเรือ,Royal Thai Navy,ชั้นประทวน,Non-Commissioned Officer,พันจ่าโท,Chief Petty Officer 2nd Class,พ.จ.ท.,CPO2
RTN-N-03,กองทัพเรือ,Royal Thai Navy,ชั้นประทวน,Non-Commissioned Officer,พันจ่าตรี,Chief Petty Officer 3rd Class,พ.จ.ต.,CPO3
RTN-N-04,กองทัพเรือ,Royal Thai Navy,ชั้นประทวน,Non-Commissioned Officer,จ่าเอก,Petty Officer 1st Class,จ.อ.,PO1
RTN-N-05,กองทัพเรือ,Royal Thai Navy,ชั้นประทวน,Non-Commissioned Officer,จ่าโท,Petty Officer 2nd Class,จ.ท.,PO2
RTN-N-06,กองทัพเรือ,Royal Thai Navy,ชั้นประทวน,Non-Commissioned Officer,จ่าตรี,Petty Officer 3rd Class,จ.ต.,PO3
RTN-N-07,กองทัพเรือ,Royal Thai Navy,ชั้นประทวน,Non-Commissioned Officer,พลทหาร,Seaman,พลฯ,SEA
```

- [ ] **Step 2: Commit**

```bash
git add data/csv/thai_military_ranks.csv
git commit -m "feat: add Royal Thai Navy ranks to CSV"
```

### Task 4: Royal Thai Air Force (RTAF) Data

**Files:**
- Modify: `data/csv/thai_military_ranks.csv`

- [ ] **Step 1: Append Royal Thai Air Force Ranks**

```csv
RTAF-O-01,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,พลอากาศเอก,Air Chief Marshal,พล.อ.อ.,ACM
RTAF-O-02,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,พลอากาศโท,Air Marshal,พล.อ.ท.,AM
RTAF-O-03,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,พลอากาศตรี,Air Vice Marshal,พล.อ.ต.,AVM
RTAF-O-04,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,นาวาอากาศเอก,Group Captain,น.อ.,GP CAPT
RTAF-O-05,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,นาวาอากาศโท,Wing Commander,น.ท.,WG CDR
RTAF-O-06,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,นาวาอากาศตรี,Squadron Leader,น.ต.,SQN LDR
RTAF-O-07,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,เรืออากาศเอก,Flight Lieutenant,ร.อ.,FLT LT
RTAF-O-08,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,เรืออากาศโท,Flying Officer,ร.ท.,FLG OFF
RTAF-O-09,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,เรืออากาศตรี,Pilot Officer,ร.ต.,PLT OFF
RTAF-N-01,กองทัพอากาศ,Royal Thai Air Force,ชั้นประทวน,Non-Commissioned Officer,พันจ่าอากาศเอก,Flight Sergeant 1st Class,พ.จ.อ.,FS1
RTAF-N-02,กองทัพอากาศ,Royal Thai Air Force,ชั้นประทวน,Non-Commissioned Officer,พันจ่าอากาศโท,Flight Sergeant 2nd Class,พ.จ.ท.,FS2
RTAF-N-03,กองทัพอากาศ,Royal Thai Air Force,ชั้นประทวน,Non-Commissioned Officer,พันจ่าอากาศตรี,Flight Sergeant 3rd Class,พ.จ.ต.,FS3
RTAF-N-04,กองทัพอากาศ,Royal Thai Air Force,ชั้นประทวน,Non-Commissioned Officer,จ่าอากาศเอก,Sergeant,จ.อ.,SGT
RTAF-N-05,กองทัพอากาศ,Royal Thai Air Force,ชั้นประทวน,Non-Commissioned Officer,จ่าอากาศโท,Corporal,จ.ท.,CPL
RTAF-N-06,กองทัพอากาศ,Royal Thai Air Force,ชั้นประทวน,Non-Commissioned Officer,จ่าอากาศตรี,Leading Aircraftman,จ.ต.,LAC
RTAF-N-07,กองทัพอากาศ,Royal Thai Air Force,ชั้นประทวน,Non-Commissioned Officer,พลทหาร,Airman,พลฯ,AIR
```

- [ ] **Step 2: Commit**

```bash
git add data/csv/thai_military_ranks.csv
git commit -m "feat: add Royal Thai Air Force ranks to CSV"
```

### Task 5: Validation and Cleanup

**Files:**
- Create: `scripts/validate_dataset.py`
- Modify: `GEMINI.md`

- [ ] **Step 1: Create Validation Script**

```python
import csv
import sys
import os

def validate_csv(file_path):
    print(f"Validating {file_path}...")
    ids = set()
    errors = []
    
    with open(file_path, mode='r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        required_fields = ['id', 'branch_th', 'branch_en', 'type_th', 'type_en', 'rank_th', 'rank_en', 'abbr_th', 'abbr_en']
        
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
    
    print(f"Success! {len(ids)} ranks validated.")
    return True

if __name__ == "__main__":
    target = "data/csv/thai_military_ranks.csv"
    if validate_csv(target):
        sys.exit(0)
    else:
        sys.exit(1)
```

- [ ] **Step 2: Run Validation**

Run: `python3 scripts/validate_dataset.py`
Expected: `Success! 48 ranks validated.` (16 per branch * 3)

- [ ] **Step 3: Update GEMINI.md TODOs**

```markdown
// ...
## TODOs
- [ ] Populate `data/json/` with Thai military rank data.
- [x] Populate `data/csv/` with Thai military rank data.
// ...
```

- [ ] **Step 4: Commit**

```bash
git add scripts/validate_dataset.py GEMINI.md
git commit -m "test: add validation script and mark CSV task as complete"
```
