# Acting Ranks (ว่าที่) Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Append 18 "Acting" (ว่าที่) officer ranks to the consolidated CSV dataset.

**Architecture:** Append new rows with the `[BRANCH]-AO-[LEVEL]` ID format.

**Tech Stack:** CSV, Python (for validation).

---

### Task 1: Royal Thai Army (RTA) Acting Ranks

**Files:**
- Modify: `data/csv/thai_military_ranks.csv`

- [ ] **Step 1: Append RTA Acting Ranks**

```csv
RTA-AO-04,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่พันเอก,Acting Colonel,ว่าที่ พ.อ.,ACT COL
RTA-AO-05,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่พันโท,Acting Lieutenant Colonel,ว่าที่ พ.ท.,ACT LTC
RTA-AO-06,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่พันตรี,Acting Major,ว่าที่ พ.ต.,ACT MAJ
RTA-AO-07,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่ร้อยเอก,Acting Captain,ว่าที่ ร.อ.,ACT CPT
RTA-AO-08,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่ร้อยโท,Acting Lieutenant,ว่าที่ ร.ท.,ACT LT
RTA-AO-09,กองทัพบก,Royal Thai Army,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่ร้อยตรี,Acting Second Lieutenant,ว่าที่ ร.ต.,ACT 2LT
```

- [ ] **Step 2: Commit**

```bash
git add data/csv/thai_military_ranks.csv
git commit -m "feat: add Royal Thai Army acting ranks"
```

### Task 2: Royal Thai Navy (RTN) Acting Ranks

**Files:**
- Modify: `data/csv/thai_military_ranks.csv`

- [ ] **Step 1: Append RTN Acting Ranks**

```csv
RTN-AO-04,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่นาวาเอก,Acting Captain,ว่าที่ น.อ.,ACT CAPT
RTN-AO-05,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่นาวาโท,Acting Commander,ว่าที่ น.ท.,ACT CDR
RTN-AO-06,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่นาวาตรี,Acting Lieutenant Commander,ว่าที่ น.ต.,ACT LCDR
RTN-AO-07,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่เรือเอก,Acting Lieutenant,ว่าที่ ร.อ.,ACT LT
RTN-AO-08,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่เรือโท,Acting Lieutenant Junior Grade,ว่าที่ ร.ท.,ACT LTJG
RTN-AO-09,กองทัพเรือ,Royal Thai Navy,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่เรือตรี,Acting Sub Lieutenant,ว่าที่ ร.ต.,ACT SUB LT
```

- [ ] **Step 2: Commit**

```bash
git add data/csv/thai_military_ranks.csv
git commit -m "feat: add Royal Thai Navy acting ranks"
```

### Task 3: Royal Thai Air Force (RTAF) Acting Ranks

**Files:**
- Modify: `data/csv/thai_military_ranks.csv`

- [ ] **Step 1: Append RTAF Acting Ranks**

```csv
RTAF-AO-04,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่นาวาอากาศเอก,Acting Group Captain,ว่าที่ น.อ.,ACT GP CAPT
RTAF-AO-05,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่นาวาอากาศโท,Acting Wing Commander,ว่าที่ น.ท.,ACT WG CDR
RTAF-AO-06,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่นาวาอากาศตรี,Acting Squadron Leader,ว่าที่ น.ต.,ACT SQN LDR
RTAF-AO-07,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่เรืออากาศเอก,Acting Flight Lieutenant,ว่าที่ ร.อ.,ACT FLT LT
RTAF-AO-08,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่เรืออากาศโท,Acting Flying Officer,ว่าที่ ร.ท.,ACT FLG OFF
RTAF-AO-09,กองทัพอากาศ,Royal Thai Air Force,ชั้นสัญญาบัตร,Commissioned Officer,ว่าที่เรืออากาศตรี,Acting Pilot Officer,ว่าที่ ร.ต.,ACT PLT OFF
```

- [ ] **Step 2: Commit**

```bash
git add data/csv/thai_military_ranks.csv
git commit -m "feat: add Royal Thai Air Force acting ranks"
```

### Task 4: Final Validation

**Files:**
- Modify: `GEMINI.md`

- [ ] **Step 1: Run Validation**

Run: `python3 scripts/validate_dataset.py`
Expected: `Success! 66 ranks validated.` (48 original + 18 new)

- [ ] **Step 2: Commit**

```bash
git commit -m "test: verify acting ranks in dataset"
```
