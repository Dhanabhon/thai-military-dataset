# Special Ranks (พิเศษ) Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Append 6 "Special" (พิเศษ) officer ranks to the consolidated CSV dataset.

**Architecture:** Append new rows with the `[BRANCH]-O-04-S` and `[BRANCH]-AO-04-S` ID formats.

**Tech Stack:** CSV, Python (for validation).

---

### Task 1: Royal Thai Army (RTA) Special Ranks

**Files:**
- Modify: `data/csv/thai_military_ranks.csv`

- [ ] **Step 1: Append RTA Special Ranks**

```csv
RTA-O-04-S,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,พันเอก (พิเศษ),Senior Colonel,พ.อ. (พ.),SR COL
RTA-AO-04-S,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่พันเอก (พิเศษ),Acting Senior Colonel,ว่าที่ พ.อ. (พ.),ACT SR COL
```

- [ ] **Step 2: Commit**

```bash
git add data/csv/thai_military_ranks.csv
git commit -m "feat: add Royal Thai Army special ranks"
```

### Task 2: Royal Thai Navy (RTN) Special Ranks

**Files:**
- Modify: `data/csv/thai_military_ranks.csv`

- [ ] **Step 1: Append RTN Special Ranks**

```csv
RTN-O-04-S,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,นาวาเอก (พิเศษ),Senior Captain,น.อ. (พ.),SR CAPT
RTN-AO-04-S,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่นาวาเอก (พิเศษ),Acting Senior Captain,ว่าที่ น.อ. (พ.),ACT SR CAPT
```

- [ ] **Step 2: Commit**

```bash
git add data/csv/thai_military_ranks.csv
git commit -m "feat: add Royal Thai Navy special ranks"
```

### Task 3: Royal Thai Air Force (RTAF) Special Ranks

**Files:**
- Modify: `data/csv/thai_military_ranks.csv`

- [ ] **Step 1: Append RTAF Special Ranks**

```csv
RTAF-O-04-S,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,นาวาอากาศเอก (พิเศษ),Senior Group Captain,น.อ. (พ.),SR GP CAPT
RTAF-AO-04-S,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่นาวาอากาศเอก (พิเศษ),Acting Senior Group Captain,ว่าที่ น.อ. (พ.),ACT SR GP CAPT
```

- [ ] **Step 2: Commit**

```bash
git add data/csv/thai_military_ranks.csv
git commit -m "feat: add Royal Thai Air Force special ranks"
```

### Task 4: Final Validation

**Files:**
- None

- [ ] **Step 1: Run Validation**

Run: `python3 scripts/validate_dataset.py`
Expected: `Success! 72 ranks validated.` (66 current + 6 new)

- [ ] **Step 2: Commit**

```bash
git commit --allow-empty -m "test: verify special ranks in dataset"
```
