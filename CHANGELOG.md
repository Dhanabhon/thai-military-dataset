# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.0] - 2026-05-20

### Added
- Female military ranks for all branches (RTA, RTN, RTAF).
- 66 new female rank rows added to CSV, JSON, and SQL datasets.
- Support for `-W` ID suffix for female ranks.
- `หญิง` suffix for Thai rank names and abbreviations.

### Changed
- Updated `scripts/validate_dataset.py` to support 135 total rank entries.
- Regenerated all JSON and SQL derived formats.

## [1.0.0] - 2026-05-18

### Added
- Initial consolidated dataset of Thai military ranks.
- Support for Royal Thai Army (RTA), Royal Thai Navy (RTN), and Royal Thai Air Force (RTAF).
- Rank categories: Commissioned Officers, Acting Officers, and Non-Commissioned Officers.
- Multiple data formats: CSV, JSON (flat and grouped), and SQL (PostgreSQL, MySQL, SQLite).
- Utility scripts for JSON and SQL generation.
- Validation script for data integrity.
- Usage examples in Python, JavaScript, and SQL.
- Interactive GitHub Pages demo.

## [0.1.0] - 2026-05-17

### Added
- Initial project structure and design specifications.
- Draft schema for Thai military ranks and corps.
- MIT License and README.
