# Thai Military Rank Dataset

This project is an open-source dataset containing the ranks of the Thai military branches: Royal Thai Army (RTA), Royal Thai Navy (RTN), and Royal Thai Air Force (RTAF). It provides structured data in various formats for developers to use in their applications.

## Project Overview

- **Purpose:** To provide a standardized, ready-to-use dataset of Thai military ranks.
- **Target Audience:** Software developers building HR systems, personnel management applications, or performing data analytics.
- **Scope:** Includes ranks from the Army, Navy, and Air Force.
- **License:** MIT License.

## Project Structure

- `data/`: The core of the project, containing the dataset in different formats.
  - `csv/`: For data analysis, machine learning, and spreadsheets.
  - `json/`: For web/mobile applications and APIs.
  - `sql/`: SQL scripts for database integration (MySQL, PostgreSQL, SQLite).
- `examples/`: (Planned) Examples of how to use the data in various programming languages.
- `scripts/`: Scripts for data processing, validation, or format conversion.

## Data Schema

The data follows a standardized schema:

| Field | Description | Example |
| :--- | :--- | :--- |
| `id` | Unique reference ID for the rank | `RTA-O-01` |
| `branch_th` | Military branch (Thai) | `กองทัพบก` |
| `branch_en` | Military branch (English) | `Royal Thai Army` |
| `type_th` | Rank type (Thai) | `ชั้นสัญญาบัตร` |
| `type_en` | Rank type (English) | `Commissioned Officer` |
| `rank_th` | Full rank name (Thai) | `พลเอก` |
| `rank_en` | Full rank name (English) | `General` |
| `abbr_th` | Rank abbreviation (Thai) | `พล.อ.` |
| `abbr_en` | Rank abbreviation (English) | `GEN` |

### JSON Example:
```json
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
```

## Usage and Development

- **Consumption:** Choose the desired format from the `data/` directory and import it into your project.
- **Data Integrity:** All data is referenced from official Thai laws and regulations, including the Military Rank Act B.E. 2479.
- **Contributions:** Contributions are welcome. Please ensure new data follows the existing schema and includes proper references.

## TODOs
- [ ] Populate `data/json/` with Thai military rank data.
- [x] Populate `data/csv/` with Thai military rank data.
- [ ] Populate `data/sql/` with database creation and insertion scripts.
- [ ] Add usage examples in the `examples/` directory.
- [x] Add utility scripts in the `scripts/` directory.
