# Thai Military Dataset

This project is an open-source dataset containing the ranks and corps (เหล่า) of the Thai military branches: Royal Thai Army (RTA), Royal Thai Navy (RTN), and Royal Thai Air Force (RTAF). It provides structured data in various formats for developers to use in their applications.

## Project Overview

- **Purpose:** To provide a standardized, ready-to-use dataset of Thai military ranks and corps.
- **Target Audience:** Software developers building HR systems, personnel management applications, or performing data analytics.
- **Scope:** Includes ranks and corps from the Army, Navy, and Air Force.
- **License:** MIT License.

## Project Structure

- `data/`: The core of the project, containing the dataset in different formats.
  - `csv/`: For data analysis, machine learning, and spreadsheets.
    - `thai_military_ranks.csv`: Comprehensive rank data.
    - `thai_military_corps.csv`: Comprehensive corps and groups data.
  - `json/`: For web/mobile applications and APIs.
    - `thai_military_ranks.json`: Comprehensive rank data.
    - `thai_military_ranks_grouped.json`: Rank data grouped by branch.
    - `thai_military_corps.json`: Comprehensive corps data.
    - `thai_military_corps_grouped.json`: Corps data grouped by branch.
  - `sql/`: SQL scripts for database integration (MySQL, PostgreSQL, SQLite).
- `examples/`: (Planned) Examples of how to use the data in various programming languages.
- `scripts/`: Utility scripts for the dataset.
  - `generate_json.py`: Generates JSON files from CSV data.
  - `generate_sql.py`: Generates SQL scripts from CSV data.
  - `validate_dataset.py`: Ensures data integrity across CSV files.

## Data Schema

The data follows a standardized schema:

### 1. Ranks
| Field | Description | Example |
| :--- | :--- | :--- |
| `id` | Unique reference ID | `RTA-O-01` |
| `branch_th` | Military branch (Thai) | `กองทัพบก` |
| `branch_en` | Military branch (English) | `Royal Thai Army` |
| `type_th` | Rank type (Thai) | `ชั้นสัญญาบัตร` |
| `type_en` | Rank type (English) | `Commissioned Officer` |
| `rank_th` | Full rank name (Thai) | `พลเอก` |
| `rank_en` | Full rank name (English) | `General` |
| `abbr_th` | Rank abbreviation (Thai) | `พล.อ.` |
| `abbr_en` | Rank abbreviation (English) | `GEN` |

### 2. Corps
| Field | Description | Example |
| :--- | :--- | :--- |
| `id` | Unique reference ID | `RTA-CORPS-01` |
| `branch_th` | Military branch (Thai) | `กองทัพบก` |
| `branch_en` | Military branch (English) | `Royal Thai Army` |
| `type_th` | Corps/Group type (Thai) | `เหล่า` |
| `type_en` | Corps/Group type (English) | `Corps` |
| `corps_th` | Corps name (Thai) | `เหล่าทหารราบ` |
| `corps_en` | Corps name (English) | `Infantry` |

## Usage and Development

- **Consumption:** Choose the desired format from the `data/` directory and import it into your project.
- **Data Integrity:** All data is referenced from official Thai laws and regulations, including the Military Rank Act B.E. 2479.
- **Contributions:** Contributions are welcome. Please ensure new data follows the existing schema and includes proper references.

## TODOs
- [x] Populate `data/json/` with Thai military rank and corps data.
- [x] Populate `data/csv/` with Thai military rank and corps data.
- [x] Populate `data/sql/` with database creation and insertion scripts.
- [x] Add usage examples in the `examples/` directory.
- [x] Add utility scripts in the `scripts/` directory.

