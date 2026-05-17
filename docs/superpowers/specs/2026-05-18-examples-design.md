# Design Spec - Usage Examples

This document outlines the design for providing usage examples for the Thai Military Dataset.

## 1. Purpose
To help developers quickly understand how to integrate the dataset into their applications using popular programming languages and tools.

## 2. Scope
We will provide examples in **Python** and **JavaScript (Node.js)**, as these are the most common languages for web development and data processing.

## 3. Example Contents

### 3.1 Python Examples (`examples/python/`)
- `load_json.py`: Demonstrates loading the flat and grouped JSON files.
- `read_csv.py`: Demonstrates reading the CSV files using the standard `csv` module.
- `filter_data.py`: Shows how to filter ranks/corps by military branch.

### 3.2 JavaScript Examples (`examples/javascript/`)
- `load_json.js`: Demonstrates loading JSON using `require` or `fs`.
- `search_ranks.js`: A simple script to find a rank by ID or name.

### 3.3 SQL Examples (`examples/sql/`)
- `queries.sql`: A collection of useful SQL queries (e.g., "Get all Army ranks", "Count corps per branch").

## 4. Implementation Strategy
1.  **Code Quality:** Keep examples extremely simple and well-commented.
2.  **No External Dependencies:** Use only standard libraries (e.g., Python's `json`/`csv`, Node's `fs`) to ensure the examples run without `pip install` or `npm install`.
3.  **Documentation:** Add a `README.md` inside each example folder explaining how to run the scripts.

## 5. Success Criteria
- Examples are saved in the `examples/` directory.
- All code examples are functional and easy to follow.
- README update: Mark the "Add usage examples" TODO as completed.
