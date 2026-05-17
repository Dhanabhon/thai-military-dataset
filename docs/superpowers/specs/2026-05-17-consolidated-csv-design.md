# Design Spec: Consolidated Thai Military Rank CSV

## Metadata
- **Date:** 2026-05-17
- **Topic:** Consolidated CSV Dataset
- **Status:** Draft
- **File Path:** `data/csv/thai_military_ranks.csv`

## 1. Overview
The goal is to create a single, comprehensive CSV file containing the ranking systems of the Royal Thai Army (RTA), Royal Thai Navy (RTN), and Royal Thai Air Force (RTAF). This dataset will serve as a source of truth for developers needing localized and translated military rank information.

## 2. Schema Definition

| Column | Type | Description | Example |
| :--- | :--- | :--- | :--- |
| `id` | String | Unique identifier (Branch-Type-Level) | `RTA-O-01` |
| `branch_th` | String | Military branch in Thai | `กองทัพบก` |
| `branch_en` | String | Military branch in English | `Royal Thai Army` |
| `type_th` | String | Rank category (Officer/NCO) in Thai | `ชั้นสัญญาบัตร` |
| `type_en` | String | Rank category (Officer/NCO) in English | `Commissioned Officer` |
| `rank_th` | String | Full rank title in Thai | `พลเอก` |
| `rank_en` | String | Full rank title in English | `General` |
| `abbr_th` | String | Official abbreviation in Thai | `พล.อ.` |
| `abbr_en` | String | Official abbreviation in English | `GEN` |

## 3. Data Content Strategy

### Branches Included:
1. **Royal Thai Army (RTA)**
2. **Royal Thai Navy (RTN)**
3. **Royal Thai Air Force (RTAF)**

### Rank Levels:
- **Commissioned Officers (O):** From General/Admiral/Air Chief Marshal down to Second Lieutenant/Sub Lieutenant/Pilot Officer. Includes "Special" (พิเศษ) status for O-04 levels (Senior Colonel/Senior Captain/Senior Group Captain).
- **Acting Officers (AO):** Acting ranks for officers from Acting Second Lieutenant up to Acting Colonel. Includes "Acting Special" (ว่าที่...พิเศษ) status for AO-04 levels.
- **Non-Commissioned Officers (N):** From Sergeant Major/Chief Petty Officer down to Private/Seaman/Airman.

### Exclusion:
- 5-star ceremonial ranks (Field Marshal, etc.) will be excluded for general use-case relevance.
- Acting ranks for General officer levels (not typically used).

## 4. Implementation Plan
1. Research full lists for all 3 branches (done).
2. Map Thai names to official English translations and abbreviations.
3. Generate CSV rows using the defined `id` format:
   - `[BRANCH]-O-[LVL]` for Officers.
   - `[BRANCH]-O-[LVL]-S` for Special Officers.
   - `[BRANCH]-AO-[LVL]` for Acting Officers.
   - `[BRANCH]-AO-[LVL]-S` for Acting Special Officers.
   - `[BRANCH]-N-[LVL]` for NCOs.
4. Verify data against official references listed in `README.md`.

## 5. Success Criteria
- CSV is valid and follows the schema.
- Thai and English encodings are correct (UTF-8).
- No duplicate IDs.
- Abbreviations match official Royal Thai Armed Forces standards.
