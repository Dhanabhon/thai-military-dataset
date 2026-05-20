# Design Spec: Female Military Ranks Implementation

## Metadata
- **Date:** 2026-05-20
- **Topic:** Female Military Ranks
- **Status:** Approved
- **File Path:** `data/csv/thai_military_ranks.csv`

## 1. Overview
The goal is to include female-specific rank titles for the Royal Thai Army, Navy, and Air Force. In the Thai military system, female ranks are explicitly distinguished in Thai by the suffix "หญิง" (Female), while the English translations often remain identical to their male counterparts.

## 2. Design Strategy
Based on the approved approach, female ranks will be added as **separate rows** in the dataset to ensure clarity and ease of lookup.

### 2.1. ID Schema
Female rank IDs will follow the existing pattern with a `-W` suffix:
- Format: `[BRANCH]-[TYPE]-[LEVEL]-W`
- Examples:
  - `RTA-O-01-W` (Female General, Army)
  - `RTN-N-01-W` (Female Chief Petty Officer 1st Class, Navy)
  - `RTAF-AO-09-W` (Female Acting Pilot Officer, Air Force)

### 2.2. Naming Conventions

| Column | Rule | Example (Female) |
| :--- | :--- | :--- |
| `rank_th` | Add "หญิง" suffix to the full Thai rank | `พลเอกหญิง` |
| `abbr_th` | Add "หญิง" suffix to the Thai abbreviation | `พล.อ.หญิง` |
| `rank_en` | **Same as male/general rank** | `General` |
| `abbr_en` | **Same as male/general abbreviation** | `GEN` |

### 2.3. Scope
Female ranks will be added for the following categories:
- **Commissioned Officers (O)**
- **Acting Officers (AO)**
- **Non-Commissioned Officers (N)**

**Exclusion:**
- The `พลทหาร` (Private/Seaman/Airman) level (Level 07 in NCO category) will be excluded as there is no distinct "หญิง" form typically used in this context for the dataset's purpose.

## 3. Data Generation Strategy
1. Iterate through all existing Officer (O), Acting Officer (AO), and NCO (N) rows in `data/csv/thai_military_ranks.csv` (excluding Level 07 NCOs).
2. For each row, generate a new row with the `-W` ID suffix and "หญิง" Thai suffixes.
3. Append these new rows to the CSV file.
4. Run `scripts/generate_json.py` and `scripts/generate_sql.py` to propagate changes to other formats.

## 4. Success Criteria
- Female ranks are present in the CSV with correct `-W` IDs.
- Thai names and abbreviations include the "หญิง" suffix.
- English names and abbreviations match the male/general versions.
- JSON and SQL files are correctly updated and validated.
