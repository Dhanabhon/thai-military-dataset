# Design Spec: Thai Military Corps (เหล่า) Dataset

## Metadata
- **Date:** 2026-05-17
- **Topic:** Military Corps and Groups (เหล่า และ พรรค)
- **Status:** Draft
- **File Path:** `data/csv/thai_military_corps.csv`

## 1. Overview
The project is expanding from a rank-only dataset to a broader "Thai Military Dataset". This spec covers the addition of a comprehensive list of Corps (เหล่า) for the Army and Air Force, and Groups/Corps (พรรค/เหล่า) for the Navy.

## 2. Schema Definition

| Column | Type | Description | Example |
| :--- | :--- | :--- | :--- |
| `id` | String | Unique identifier (Branch-CORPS-XX) | `RTA-CORPS-01` |
| `branch_th` | String | Military branch in Thai | `กองทัพบก` |
| `branch_en` | String | Military branch in English | `Royal Thai Army` |
| `corps_th` | String | Corps/Group name in Thai | `เหล่าทหารราบ` |
| `corps_en` | String | Corps/Group name in English | `Infantry` |

## 3. Data Content Strategy

### Royal Thai Army (RTA) - 17 Corps
- Combat: Infantry, Cavalry.
- Combat Support: Artillery, Engineers, Signals, Intelligence.
- Service Support: Logistics, Ordnance, Transport, Medical, Finance, Adjutant General, Military Police, Judge Advocate General, Animal Transport, Band, Post.

### Royal Thai Navy (RTN)
- Line Group (พรรคนาวิน)
- Engineering Group (พรรคกลิน)
- Marine Corps Group (พรรคนาวิกโยธิน)
- Special Group (พรรคพิเศษ) - subdivided into Medical, Finance, etc.

### Royal Thai Air Force (RTAF)
- Functional fields including Pilots, Air Security (อากาศโยธิน), Aeronautical Engineering, etc.

## 4. Repository Rename (Pre-Implementation)
- **New Name:** `thai-military-dataset`
- **Internal Updates:** Update `README.md`, `GEMINI.md`, and any existing documentation headers.
- **Git Remote:** Update local `origin` to the new URL.

## 5. Implementation Plan
1. Update internal documentation and remote URL.
2. Research the definitive list of Navy and Air Force functional fields.
3. Generate `data/csv/thai_military_corps.csv`.
4. Update `scripts/validate_dataset.py` to support the new file.

## 6. Success Criteria
- Repo is correctly renamed and accessible.
- New CSV contains all major corps/groups for all 3 branches.
- Validation script passes for both Ranks and Corps files.
