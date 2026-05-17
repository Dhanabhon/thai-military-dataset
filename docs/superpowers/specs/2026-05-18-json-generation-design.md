# Design Spec - JSON Data Generation

This document outlines the design for converting the Thai Military Dataset from CSV format to JSON format.

## 1. Purpose
To provide developers with structured JSON data that is ready for consumption in web, mobile, and API applications.

## 2. Approach
We will provide two versions of the JSON data for both Ranks and Corps:
1.  **Flat Version:** A 1:1 mapping of CSV rows to a JSON array.
2.  **Grouped Version:** Data grouped by military branch (`branch_en`) for easier UI categorization.

The conversion will be automated via a Python script to ensure consistency.

## 3. Data Schema

### 3.1 Ranks (`thai_military_ranks.json`)
```json
[
  {
    "id": "RTA-O-01",
    "branch_th": "กองทัพบก",
    "branch_en": "Royal Thai Army",
    "type_th": "ชั้นสัญญาบัตร",
    "type_en": "Commissioned Officer",
    "rank_th": "พลเอก",
    "rank_en": "General",
    "abbr_th": "พล.อ.",
    "abbr_en": "GEN"
  }
]
```

### 3.2 Corps (`thai_military_corps.json`)
```json
[
  {
    "id": "RTA-CORPS-01",
    "branch_th": "กองทัพบก",
    "branch_en": "Royal Thai Army",
    "corps_th": "เหล่าทหารราบ",
    "corps_en": "Infantry"
  }
]
```

## 4. File Structure

| Category | Format | Path |
| :--- | :--- | :--- |
| **Ranks** | Flat Array | `data/json/thai_military_ranks.json` |
| **Ranks** | Grouped Object | `data/json/thai_military_ranks_grouped.json` |
| **Corps** | Flat Array | `data/json/thai_military_corps.json` |
| **Corps** | Grouped Object | `data/json/thai_military_corps_grouped.json` |

## 5. Implementation Strategy
1.  **Script:** Create `scripts/generate_json.py` using Python's `csv` and `json` modules.
2.  **Encoding:** Explicitly use `utf-8` to handle Thai characters.
3.  **Indentation:** Use 2-space indentation for better readability in the JSON files.
4.  **Verification:** Update `scripts/validate_dataset.py` to verify JSON files exist and contain the correct number of records.

## 6. Success Criteria
- JSON files are generated in `data/json/`.
- Thai characters are correctly encoded and readable.
- The `grouped` files correctly nest data under `Royal Thai Army`, `Royal Thai Navy`, and `Royal Thai Air Force`.
- Validation script passes for both CSV and JSON formats.
