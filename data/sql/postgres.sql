-- Thai Military Ranks (postgres)
CREATE TABLE IF NOT EXISTS "thai_military_ranks" (
  "id" VARCHAR(20) PRIMARY KEY,
  "branch_th" VARCHAR(100) NOT NULL,
  "branch_en" VARCHAR(100) NOT NULL,
  "type_th" VARCHAR(50) NOT NULL,
  "type_en" VARCHAR(50) NOT NULL,
  "rank_th" VARCHAR(100) NOT NULL,
  "rank_en" VARCHAR(100) NOT NULL,
  "abbr_th" VARCHAR(50) NOT NULL,
  "abbr_en" VARCHAR(50) NOT NULL
);

INSERT INTO "thai_military_ranks" VALUES ('RTA-O-01', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลเอก', 'General', 'พล.อ.', 'GEN');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-02', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลโท', 'Lieutenant General', 'พล.ท.', 'LTG');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-03', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลตรี', 'Major General', 'พล.ต.', 'MG');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-04', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พันเอก', 'Colonel', 'พ.อ.', 'COL');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-05', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พันโท', 'Lieutenant Colonel', 'พ.ท.', 'LTC');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-06', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พันตรี', 'Major', 'พ.ต.', 'MAJ');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-07', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ร้อยเอก', 'Captain', 'ร.อ.', 'CPT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-08', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ร้อยโท', 'Lieutenant', 'ร.ท.', 'LT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-09', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ร้อยตรี', 'Second Lieutenant', 'ร.ต.', '2LT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-01', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าสิบเอก', 'Sergeant Major 1st Class', 'จ.ส.อ.', 'SM1');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-02', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าสิบโท', 'Sergeant Major 2nd Class', 'จ.ส.ท.', 'SM2');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-03', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าสิบตรี', 'Sergeant Major 3rd Class', 'จ.ส.ต.', 'SM3');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-04', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'สิบเอก', 'Sergeant', 'ส.อ.', 'SGT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-05', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'สิบโท', 'Corporal', 'ส.ท.', 'CPL');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-06', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'สิบตรี', 'Lance Corporal', 'ส.ต.', 'LCPL');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-07', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พลทหาร', 'Private', 'พลฯ', 'PVT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-01', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลเรือเอก', 'Admiral', 'พล.ร.อ.', 'ADM');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-02', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลเรือโท', 'Vice Admiral', 'พล.ร.ท.', 'VADM');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-03', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลเรือตรี', 'Rear Admiral', 'พล.ร.ต.', 'RADM');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-04', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาเอก', 'Captain', 'น.อ.', 'CAPT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-05', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาโท', 'Commander', 'น.ท.', 'CDR');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-06', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาตรี', 'Lieutenant Commander', 'น.ต.', 'LCDR');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-07', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรือเอก', 'Lieutenant', 'ร.อ.', 'LT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-08', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรือโท', 'Lieutenant Junior Grade', 'ร.ท.', 'LTJG');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-09', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรือตรี', 'Sub Lieutenant', 'ร.ต.', 'SUB LT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-01', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าเอก', 'Chief Petty Officer 1st Class', 'พ.จ.อ.', 'CPO1');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-02', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าโท', 'Chief Petty Officer 2nd Class', 'พ.จ.ท.', 'CPO2');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-03', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าตรี', 'Chief Petty Officer 3rd Class', 'พ.จ.ต.', 'CPO3');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-04', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าเอก', 'Petty Officer 1st Class', 'จ.อ.', 'PO1');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-05', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าโท', 'Petty Officer 2nd Class', 'จ.ท.', 'PO2');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-06', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าตรี', 'Petty Officer 3rd Class', 'จ.ต.', 'PO3');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-07', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พลทหาร', 'Seaman', 'พลฯ', 'SEA');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-01', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลอากาศเอก', 'Air Chief Marshal', 'พล.อ.อ.', 'ACM');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-02', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลอากาศโท', 'Air Marshal', 'พล.อ.ท.', 'AM');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-03', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลอากาศตรี', 'Air Vice Marshal', 'พล.อ.ต.', 'AVM');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-04', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาอากาศเอก', 'Group Captain', 'น.อ.', 'GP CAPT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-05', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาอากาศโท', 'Wing Commander', 'น.ท.', 'WG CDR');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-06', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาอากาศตรี', 'Squadron Leader', 'น.ต.', 'SQN LDR');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-07', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรืออากาศเอก', 'Flight Lieutenant', 'ร.อ.', 'FLT LT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-08', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรืออากาศโท', 'Flying Officer', 'ร.ท.', 'FLG OFF');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-09', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรืออากาศตรี', 'Pilot Officer', 'ร.ต.', 'PLT OFF');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-01', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าอากาศเอก', 'Flight Sergeant 1st Class', 'พ.จ.อ.', 'FS1');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-02', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าอากาศโท', 'Flight Sergeant 2nd Class', 'พ.จ.ท.', 'FS2');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-03', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าอากาศตรี', 'Flight Sergeant 3rd Class', 'พ.จ.ต.', 'FS3');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-04', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าอากาศเอก', 'Sergeant', 'จ.อ.', 'SGT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-05', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าอากาศโท', 'Corporal', 'จ.ท.', 'CPL');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-06', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าอากาศตรี', 'Leading Aircraftman', 'จ.ต.', 'LAC');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-07', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พลทหาร', 'Airman', 'พลฯ', 'AIR');
INSERT INTO "thai_military_ranks" VALUES ('RTA-AO-04', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่พันเอก', 'Acting Colonel', 'ว่าที่ พ.อ.', 'ACT COL');
INSERT INTO "thai_military_ranks" VALUES ('RTA-AO-05', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่พันโท', 'Acting Lieutenant Colonel', 'ว่าที่ พ.ท.', 'ACT LTC');
INSERT INTO "thai_military_ranks" VALUES ('RTA-AO-06', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่พันตรี', 'Acting Major', 'ว่าที่ พ.ต.', 'ACT MAJ');
INSERT INTO "thai_military_ranks" VALUES ('RTA-AO-07', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่ร้อยเอก', 'Acting Captain', 'ว่าที่ ร.อ.', 'ACT CPT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-AO-08', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่ร้อยโท', 'Acting Lieutenant', 'ว่าที่ ร.ท.', 'ACT LT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-AO-09', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่ร้อยตรี', 'Acting Second Lieutenant', 'ว่าที่ ร.ต.', 'ACT 2LT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-AO-04', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาเอก', 'Acting Captain', 'ว่าที่ น.อ.', 'ACT CAPT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-AO-05', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาโท', 'Acting Commander', 'ว่าที่ น.ท.', 'ACT CDR');
INSERT INTO "thai_military_ranks" VALUES ('RTN-AO-06', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาตรี', 'Acting Lieutenant Commander', 'ว่าที่ น.ต.', 'ACT LCDR');
INSERT INTO "thai_military_ranks" VALUES ('RTN-AO-07', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรือเอก', 'Acting Lieutenant', 'ว่าที่ ร.อ.', 'ACT LT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-AO-08', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรือโท', 'Acting Lieutenant Junior Grade', 'ว่าที่ ร.ท.', 'ACT LTJG');
INSERT INTO "thai_military_ranks" VALUES ('RTN-AO-09', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรือตรี', 'Acting Sub Lieutenant', 'ว่าที่ ร.ต.', 'ACT SUB LT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-AO-04', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาอากาศเอก', 'Acting Group Captain', 'ว่าที่ น.อ.', 'ACT GP CAPT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-AO-05', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาอากาศโท', 'Acting Wing Commander', 'ว่าที่ น.ท.', 'ACT WG CDR');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-AO-06', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาอากาศตรี', 'Acting Squadron Leader', 'ว่าที่ น.ต.', 'ACT SQN LDR');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-AO-07', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรืออากาศเอก', 'Acting Flight Lieutenant', 'ว่าที่ ร.อ.', 'ACT FLT LT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-AO-08', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรืออากาศโท', 'Acting Flying Officer', 'ว่าที่ ร.ท.', 'ACT FLG OFF');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-AO-09', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรืออากาศตรี', 'Acting Pilot Officer', 'ว่าที่ ร.ต.', 'ACT PLT OFF');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-04-S', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พันเอก (พิเศษ)', 'Senior Colonel', 'พ.อ. (พิเศษ)', 'SR COL');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-04-S', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาเอก (พิเศษ)', 'Senior Captain', 'น.อ. (พิเศษ)', 'SR CAPT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-04-S', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาอากาศเอก (พิเศษ)', 'Senior Group Captain', 'น.อ. (พิเศษ)', 'SR GP CAPT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-01-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลเอกหญิง', 'General', 'พล.อ.หญิง', 'GEN');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-02-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลโทหญิง', 'Lieutenant General', 'พล.ท.หญิง', 'LTG');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-03-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลตรีหญิง', 'Major General', 'พล.ต.หญิง', 'MG');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-04-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พันเอกหญิง', 'Colonel', 'พ.อ.หญิง', 'COL');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-05-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พันโทหญิง', 'Lieutenant Colonel', 'พ.ท.หญิง', 'LTC');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-06-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พันตรีหญิง', 'Major', 'พ.ต.หญิง', 'MAJ');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-08-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ร้อยโทหญิง', 'Lieutenant', 'ร.ท.หญิง', 'LT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-09-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ร้อยตรีหญิง', 'Second Lieutenant', 'ร.ต.หญิง', '2LT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-01-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าสิบเอกหญิง', 'Sergeant Major 1st Class', 'จ.ส.อ.หญิง', 'SM1');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-02-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าสิบโทหญิง', 'Sergeant Major 2nd Class', 'จ.ส.ท.หญิง', 'SM2');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-03-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าสิบตรีหญิง', 'Sergeant Major 3rd Class', 'จ.ส.ต.หญิง', 'SM3');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-04-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'สิบเอกหญิง', 'Sergeant', 'ส.อ.หญิง', 'SGT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-05-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'สิบโทหญิง', 'Corporal', 'ส.ท.หญิง', 'CPL');
INSERT INTO "thai_military_ranks" VALUES ('RTA-N-06-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'สิบตรีหญิง', 'Lance Corporal', 'ส.ต.หญิง', 'LCPL');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-01-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลเรือเอกหญิง', 'Admiral', 'พล.ร.อ.หญิง', 'ADM');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-02-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลเรือโทหญิง', 'Vice Admiral', 'พล.ร.ท.หญิง', 'VADM');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-03-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลเรือตรีหญิง', 'Rear Admiral', 'พล.ร.ต.หญิง', 'RADM');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-04-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาเอกหญิง', 'Captain', 'น.อ.หญิง', 'CAPT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-05-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาโทหญิง', 'Commander', 'น.ท.หญิง', 'CDR');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-06-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาตรีหญิง', 'Lieutenant Commander', 'น.ต.หญิง', 'LCDR');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-08-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรือโทหญิง', 'Lieutenant Junior Grade', 'ร.ท.หญิง', 'LTJG');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-09-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรือตรีหญิง', 'Sub Lieutenant', 'ร.ต.หญิง', 'SUB LT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-01-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าเอกหญิง', 'Chief Petty Officer 1st Class', 'พ.จ.อ.หญิง', 'CPO1');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-02-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าโทหญิง', 'Chief Petty Officer 2nd Class', 'พ.จ.ท.หญิง', 'CPO2');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-03-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าตรีหญิง', 'Chief Petty Officer 3rd Class', 'พ.จ.ต.หญิง', 'CPO3');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-04-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าเอกหญิง', 'Petty Officer 1st Class', 'จ.อ.หญิง', 'PO1');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-05-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าโทหญิง', 'Petty Officer 2nd Class', 'จ.ท.หญิง', 'PO2');
INSERT INTO "thai_military_ranks" VALUES ('RTN-N-06-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าตรีหญิง', 'Petty Officer 3rd Class', 'จ.ต.หญิง', 'PO3');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-01-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลอากาศเอกหญิง', 'Air Chief Marshal', 'พล.อ.อ.หญิง', 'ACM');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-02-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลอากาศโทหญิง', 'Air Marshal', 'พล.อ.ท.หญิง', 'AM');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-03-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลอากาศตรีหญิง', 'Air Vice Marshal', 'พล.อ.ต.หญิง', 'AVM');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-04-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาอากาศเอกหญิง', 'Group Captain', 'น.อ.หญิง', 'GP CAPT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-05-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาอากาศโทหญิง', 'Wing Commander', 'น.ท.หญิง', 'WG CDR');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-06-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาอากาศตรีหญิง', 'Squadron Leader', 'น.ต.หญิง', 'SQN LDR');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-08-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรืออากาศโทหญิง', 'Flying Officer', 'ร.ท.หญิง', 'FLG OFF');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-09-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรืออากาศตรีหญิง', 'Pilot Officer', 'ร.ต.หญิง', 'PLT OFF');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-01-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าอากาศเอกหญิง', 'Flight Sergeant 1st Class', 'พ.จ.อ.หญิง', 'FS1');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-02-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าอากาศโทหญิง', 'Flight Sergeant 2nd Class', 'พ.จ.ท.หญิง', 'FS2');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-03-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าอากาศตรีหญิง', 'Flight Sergeant 3rd Class', 'พ.จ.ต.หญิง', 'FS3');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-04-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าอากาศเอกหญิง', 'Sergeant', 'จ.อ.หญิง', 'SGT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-05-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าอากาศโทหญิง', 'Corporal', 'จ.ท.หญิง', 'CPL');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-N-06-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าอากาศตรีหญิง', 'Leading Aircraftman', 'จ.ต.หญิง', 'LAC');
INSERT INTO "thai_military_ranks" VALUES ('RTA-AO-04-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่พันเอกหญิง', 'Acting Colonel', 'ว่าที่ พ.อ.หญิง', 'ACT COL');
INSERT INTO "thai_military_ranks" VALUES ('RTA-AO-05-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่พันโทหญิง', 'Acting Lieutenant Colonel', 'ว่าที่ พ.ท.หญิง', 'ACT LTC');
INSERT INTO "thai_military_ranks" VALUES ('RTA-AO-06-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่พันตรีหญิง', 'Acting Major', 'ว่าที่ พ.ต.หญิง', 'ACT MAJ');
INSERT INTO "thai_military_ranks" VALUES ('RTA-AO-08-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่ร้อยโทหญิง', 'Acting Lieutenant', 'ว่าที่ ร.ท.หญิง', 'ACT LT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-AO-09-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่ร้อยตรีหญิง', 'Acting Second Lieutenant', 'ว่าที่ ร.ต.หญิง', 'ACT 2LT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-AO-04-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาเอกหญิง', 'Acting Captain', 'ว่าที่ น.อ.หญิง', 'ACT CAPT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-AO-05-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาโทหญิง', 'Acting Commander', 'ว่าที่ น.ท.หญิง', 'ACT CDR');
INSERT INTO "thai_military_ranks" VALUES ('RTN-AO-06-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาตรีหญิง', 'Acting Lieutenant Commander', 'ว่าที่ น.ต.หญิง', 'ACT LCDR');
INSERT INTO "thai_military_ranks" VALUES ('RTN-AO-08-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรือโทหญิง', 'Acting Lieutenant Junior Grade', 'ว่าที่ ร.ท.หญิง', 'ACT LTJG');
INSERT INTO "thai_military_ranks" VALUES ('RTN-AO-09-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรือตรีหญิง', 'Acting Sub Lieutenant', 'ว่าที่ ร.ต.หญิง', 'ACT SUB LT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-AO-04-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาอากาศเอกหญิง', 'Acting Group Captain', 'ว่าที่ น.อ.หญิง', 'ACT GP CAPT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-AO-05-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาอากาศโทหญิง', 'Acting Wing Commander', 'ว่าที่ น.ท.หญิง', 'ACT WG CDR');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-AO-06-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาอากาศตรีหญิง', 'Acting Squadron Leader', 'ว่าที่ น.ต.หญิง', 'ACT SQN LDR');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-AO-08-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรืออากาศโทหญิง', 'Acting Flying Officer', 'ว่าที่ ร.ท.หญิง', 'ACT FLG OFF');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-AO-09-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรืออากาศตรีหญิง', 'Acting Pilot Officer', 'ว่าที่ ร.ต.หญิง', 'ACT PLT OFF');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-04-S-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พันเอก (พิเศษ)หญิง', 'Senior Colonel', 'พ.อ. (พิเศษ)หญิง', 'SR COL');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-04-S-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาเอก (พิเศษ)หญิง', 'Senior Captain', 'น.อ. (พิเศษ)หญิง', 'SR CAPT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-04-S-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาอากาศเอก (พิเศษ)หญิง', 'Senior Group Captain', 'น.อ. (พิเศษ)หญิง', 'SR GP CAPT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-O-07-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ร้อยเอกหญิง', 'Captain', 'ร.อ.หญิง', 'CPT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-O-07-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรือเอกหญิง', 'Lieutenant', 'ร.อ.หญิง', 'LT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-O-07-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรืออากาศเอกหญิง', 'Flight Lieutenant', 'ร.อ.หญิง', 'FLT LT');
INSERT INTO "thai_military_ranks" VALUES ('RTA-AO-07-W', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่ร้อยเอกหญิง', 'Acting Captain', 'ว่าที่ ร.อ.หญิง', 'ACT CPT');
INSERT INTO "thai_military_ranks" VALUES ('RTN-AO-07-W', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรือเอกหญิง', 'Acting Lieutenant', 'ว่าที่ ร.อ.หญิง', 'ACT LT');
INSERT INTO "thai_military_ranks" VALUES ('RTAF-AO-07-W', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรืออากาศเอกหญิง', 'Acting Flight Lieutenant', 'ว่าที่ ร.อ.หญิง', 'ACT FLT LT');

-- Thai Military Corps (postgres)
CREATE TABLE IF NOT EXISTS "thai_military_corps" (
  "id" VARCHAR(20) PRIMARY KEY,
  "branch_th" VARCHAR(100) NOT NULL,
  "branch_en" VARCHAR(100) NOT NULL,
  "type_th" VARCHAR(50) NOT NULL,
  "type_en" VARCHAR(50) NOT NULL,
  "corps_th" VARCHAR(100) NOT NULL,
  "corps_en" VARCHAR(100) NOT NULL
);

INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-01', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารราบ', 'Infantry');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-02', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารม้า', 'Cavalry');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-03', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารปืนใหญ่', 'Artillery');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-04', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารช่าง', 'Engineers');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-05', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารสื่อสาร', 'Signals');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-06', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารการข่าว', 'Military Intelligence');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-07', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารพลาธิการ', 'Quartermaster');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-08', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารสรรพาวุธ', 'Ordnance');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-09', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารขนส่ง', 'Transport');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-10', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารแพทย์', 'Medical');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-11', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารการเงิน', 'Finance');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-12', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารสารบรรณ', 'Adjutant General');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-13', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารสารวัตร', 'Military Police');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-14', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารพระธรรมนูญ', 'Judge Advocate General');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-15', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารการสัตว์', 'Animal Transport');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-16', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารดุริยางค์', 'Band');
INSERT INTO "thai_military_corps" VALUES ('RTA-CORPS-17', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารไปรษณีย์', 'Post');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-01', 'กองทัพเรือ', 'Royal Thai Navy', 'พรรค', 'Group', 'พรรคนาวิน', 'Line Group');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-02', 'กองทัพเรือ', 'Royal Thai Navy', 'พรรค', 'Group', 'พรรคกลิน', 'Engineering Group');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-03', 'กองทัพเรือ', 'Royal Thai Navy', 'พรรค', 'Group', 'พรรคนาวิกโยธิน', 'Marine Corps Group');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-04', 'กองทัพเรือ', 'Royal Thai Navy', 'พรรค', 'Group', 'พรรคพิเศษ', 'Special Group');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-05', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารพลาธิการ', 'Quartermaster Corps');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-06', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารแพทย์', 'Medical Corps');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-07', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารการเงิน', 'Finance Corps');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-08', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารพระธรรมนูญ', 'Judge Advocate General Corps');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-09', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารสารบรรณ', 'Adjutant General Corps');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-10', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารช่าง', 'Engineers Corps');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-11', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารสรรพาวุธ', 'Ordnance Corps');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-12', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารดุริยางค์', 'Band Corps');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-13', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารสารวัตร', 'Military Police Corps');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-14', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารขนส่ง', 'Transport Corps');
INSERT INTO "thai_military_corps" VALUES ('RTN-CORPS-15', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารอุทกศาสตร์', 'Hydrographic Corps');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-01', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารนักบิน', 'Pilots');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-02', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารอากาศโยธิน', 'Air Security');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-03', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารต่อสู้อากาศยาน', 'Anti-Aircraft Artillery');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-04', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารช่างอากาศ', 'Aeronautical Engineering');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-05', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารสื่อสารอิเล็กทรอนิกส์', 'Communications and Electronics');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-06', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารสรรพาวุธ', 'Ordnance');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-07', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารพลาธิการ', 'Quartermaster');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-08', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารขนส่ง', 'Transport');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-09', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารแพทย์', 'Medical');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-10', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารการเงิน', 'Finance');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-11', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารสารบรรณ', 'Adjutant General');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-12', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารสารวัตร', 'Military Police');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-13', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารพระธรรมนูญ', 'Judge Advocate General');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-14', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารดุริยางค์', 'Band');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-15', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารพัสดุ', 'Supply');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-16', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารช่างโยธา', 'Civil Engineering');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-17', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารแผนที่', 'Mapping/Survey');
INSERT INTO "thai_military_corps" VALUES ('RTAF-CORPS-18', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารอุตุ', 'Meteorology');
