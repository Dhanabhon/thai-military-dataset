-- Thai Military Ranks (mysql)
CREATE TABLE IF NOT EXISTS `thai_military_ranks` (
  `id` VARCHAR(20) PRIMARY KEY,
  `branch_th` VARCHAR(100) NOT NULL,
  `branch_en` VARCHAR(100) NOT NULL,
  `type_th` VARCHAR(50) NOT NULL,
  `type_en` VARCHAR(50) NOT NULL,
  `rank_th` VARCHAR(100) NOT NULL,
  `rank_en` VARCHAR(100) NOT NULL,
  `abbr_th` VARCHAR(50) NOT NULL,
  `abbr_en` VARCHAR(50) NOT NULL
);

INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-O-01', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลเอก', 'General', 'พล.อ.', 'GEN');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-O-02', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลโท', 'Lieutenant General', 'พล.ท.', 'LTG');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-O-03', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลตรี', 'Major General', 'พล.ต.', 'MG');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-O-04', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พันเอก', 'Colonel', 'พ.อ.', 'COL');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-O-05', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พันโท', 'Lieutenant Colonel', 'พ.ท.', 'LTC');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-O-06', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พันตรี', 'Major', 'พ.ต.', 'MAJ');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-O-07', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ร้อยเอก', 'Captain', 'ร.อ.', 'CPT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-O-08', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ร้อยโท', 'Lieutenant', 'ร.ท.', 'LT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-O-09', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ร้อยตรี', 'Second Lieutenant', 'ร.ต.', '2LT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-N-01', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าสิบเอก', 'Sergeant Major 1st Class', 'จ.ส.อ.', 'SM1');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-N-02', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าสิบโท', 'Sergeant Major 2nd Class', 'จ.ส.ท.', 'SM2');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-N-03', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าสิบตรี', 'Sergeant Major 3rd Class', 'จ.ส.ต.', 'SM3');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-N-04', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'สิบเอก', 'Sergeant', 'ส.อ.', 'SGT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-N-05', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'สิบโท', 'Corporal', 'ส.ท.', 'CPL');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-N-06', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'สิบตรี', 'Lance Corporal', 'ส.ต.', 'LCPL');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-N-07', 'กองทัพบก', 'Royal Thai Army', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พลทหาร', 'Private', 'พลฯ', 'PVT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-O-01', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลเรือเอก', 'Admiral', 'พล.ร.อ.', 'ADM');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-O-02', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลเรือโท', 'Vice Admiral', 'พล.ร.ท.', 'VADM');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-O-03', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลเรือตรี', 'Rear Admiral', 'พล.ร.ต.', 'RADM');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-O-04', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาเอก', 'Captain', 'น.อ.', 'CAPT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-O-05', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาโท', 'Commander', 'น.ท.', 'CDR');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-O-06', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาตรี', 'Lieutenant Commander', 'น.ต.', 'LCDR');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-O-07', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรือเอก', 'Lieutenant', 'ร.อ.', 'LT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-O-08', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรือโท', 'Lieutenant Junior Grade', 'ร.ท.', 'LTJG');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-O-09', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรือตรี', 'Sub Lieutenant', 'ร.ต.', 'SUB LT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-N-01', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าเอก', 'Chief Petty Officer 1st Class', 'พ.จ.อ.', 'CPO1');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-N-02', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าโท', 'Chief Petty Officer 2nd Class', 'พ.จ.ท.', 'CPO2');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-N-03', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าตรี', 'Chief Petty Officer 3rd Class', 'พ.จ.ต.', 'CPO3');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-N-04', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าเอก', 'Petty Officer 1st Class', 'จ.อ.', 'PO1');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-N-05', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าโท', 'Petty Officer 2nd Class', 'จ.ท.', 'PO2');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-N-06', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าตรี', 'Petty Officer 3rd Class', 'จ.ต.', 'PO3');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-N-07', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พลทหาร', 'Seaman', 'พลฯ', 'SEA');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-O-01', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลอากาศเอก', 'Air Chief Marshal', 'พล.อ.อ.', 'ACM');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-O-02', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลอากาศโท', 'Air Marshal', 'พล.อ.ท.', 'AM');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-O-03', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พลอากาศตรี', 'Air Vice Marshal', 'พล.อ.ต.', 'AVM');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-O-04', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาอากาศเอก', 'Group Captain', 'น.อ.', 'GP CAPT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-O-05', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาอากาศโท', 'Wing Commander', 'น.ท.', 'WG CDR');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-O-06', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาอากาศตรี', 'Squadron Leader', 'น.ต.', 'SQN LDR');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-O-07', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรืออากาศเอก', 'Flight Lieutenant', 'ร.อ.', 'FLT LT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-O-08', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรืออากาศโท', 'Flying Officer', 'ร.ท.', 'FLG OFF');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-O-09', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'เรืออากาศตรี', 'Pilot Officer', 'ร.ต.', 'PLT OFF');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-N-01', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าอากาศเอก', 'Flight Sergeant 1st Class', 'พ.จ.อ.', 'FS1');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-N-02', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าอากาศโท', 'Flight Sergeant 2nd Class', 'พ.จ.ท.', 'FS2');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-N-03', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พันจ่าอากาศตรี', 'Flight Sergeant 3rd Class', 'พ.จ.ต.', 'FS3');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-N-04', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าอากาศเอก', 'Sergeant', 'จ.อ.', 'SGT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-N-05', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าอากาศโท', 'Corporal', 'จ.ท.', 'CPL');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-N-06', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'จ่าอากาศตรี', 'Leading Aircraftman', 'จ.ต.', 'LAC');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-N-07', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นประทวน', 'Non-Commissioned Officer', 'พลทหาร', 'Airman', 'พลฯ', 'AIR');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-AO-04', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่พันเอก', 'Acting Colonel', 'ว่าที่ พ.อ.', 'ACT COL');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-AO-05', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่พันโท', 'Acting Lieutenant Colonel', 'ว่าที่ พ.ท.', 'ACT LTC');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-AO-06', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่พันตรี', 'Acting Major', 'ว่าที่ พ.ต.', 'ACT MAJ');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-AO-07', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่ร้อยเอก', 'Acting Captain', 'ว่าที่ ร.อ.', 'ACT CPT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-AO-08', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่ร้อยโท', 'Acting Lieutenant', 'ว่าที่ ร.ท.', 'ACT LT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-AO-09', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่ร้อยตรี', 'Acting Second Lieutenant', 'ว่าที่ ร.ต.', 'ACT 2LT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-AO-04', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาเอก', 'Acting Captain', 'ว่าที่ น.อ.', 'ACT CAPT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-AO-05', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาโท', 'Acting Commander', 'ว่าที่ น.ท.', 'ACT CDR');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-AO-06', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาตรี', 'Acting Lieutenant Commander', 'ว่าที่ น.ต.', 'ACT LCDR');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-AO-07', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรือเอก', 'Acting Lieutenant', 'ว่าที่ ร.อ.', 'ACT LT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-AO-08', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรือโท', 'Acting Lieutenant Junior Grade', 'ว่าที่ ร.ท.', 'ACT LTJG');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-AO-09', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรือตรี', 'Acting Sub Lieutenant', 'ว่าที่ ร.ต.', 'ACT SUB LT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-AO-04', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาอากาศเอก', 'Acting Group Captain', 'ว่าที่ น.อ.', 'ACT GP CAPT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-AO-05', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาอากาศโท', 'Acting Wing Commander', 'ว่าที่ น.ท.', 'ACT WG CDR');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-AO-06', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาอากาศตรี', 'Acting Squadron Leader', 'ว่าที่ น.ต.', 'ACT SQN LDR');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-AO-07', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรืออากาศเอก', 'Acting Flight Lieutenant', 'ว่าที่ ร.อ.', 'ACT FLT LT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-AO-08', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรืออากาศโท', 'Acting Flying Officer', 'ว่าที่ ร.ท.', 'ACT FLG OFF');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-AO-09', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่เรืออากาศตรี', 'Acting Pilot Officer', 'ว่าที่ ร.ต.', 'ACT PLT OFF');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-O-04-S', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'พันเอก (พิเศษ)', 'Senior Colonel', 'พ.อ. (พิเศษ)', 'SR COL');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTA-AO-04-S', 'กองทัพบก', 'Royal Thai Army', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่พันเอก (พิเศษ)', 'Acting Senior Colonel', 'ว่าที่ พ.อ. (พิเศษ)', 'ACT SR COL');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-O-04-S', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาเอก (พิเศษ)', 'Senior Captain', 'น.อ. (พิเศษ)', 'SR CAPT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTN-AO-04-S', 'กองทัพเรือ', 'Royal Thai Navy', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาเอก (พิเศษ)', 'Acting Senior Captain', 'ว่าที่ น.อ. (พิเศษ)', 'ACT SR CAPT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-O-04-S', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'นาวาอากาศเอก (พิเศษ)', 'Senior Group Captain', 'น.อ. (พิเศษ)', 'SR GP CAPT');
INSERT IGNORE INTO `thai_military_ranks` VALUES ('RTAF-AO-04-S', 'กองทัพอากาศ', 'Royal Thai Air Force', 'ชั้นสัญญาบัตร', 'Commissioned Officer', 'ว่าที่นาวาอากาศเอก (พิเศษ)', 'Acting Senior Group Captain', 'ว่าที่ น.อ. (พิเศษ)', 'ACT SR GP CAPT');

-- Thai Military Corps (mysql)
CREATE TABLE IF NOT EXISTS `thai_military_corps` (
  `id` VARCHAR(20) PRIMARY KEY,
  `branch_th` VARCHAR(100) NOT NULL,
  `branch_en` VARCHAR(100) NOT NULL,
  `type_th` VARCHAR(50) NOT NULL,
  `type_en` VARCHAR(50) NOT NULL,
  `corps_th` VARCHAR(100) NOT NULL,
  `corps_en` VARCHAR(100) NOT NULL
);

INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-01', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารราบ', 'Infantry');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-02', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารม้า', 'Cavalry');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-03', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารปืนใหญ่', 'Artillery');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-04', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารช่าง', 'Engineers');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-05', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารสื่อสาร', 'Signals');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-06', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารการข่าว', 'Military Intelligence');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-07', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารพลาธิการ', 'Quartermaster');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-08', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารสรรพาวุธ', 'Ordnance');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-09', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารขนส่ง', 'Transport');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-10', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารแพทย์', 'Medical');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-11', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารการเงิน', 'Finance');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-12', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารสารบรรณ', 'Adjutant General');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-13', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารสารวัตร', 'Military Police');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-14', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารพระธรรมนูญ', 'Judge Advocate General');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-15', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารการสัตว์', 'Animal Transport');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-16', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารดุริยางค์', 'Band');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTA-CORPS-17', 'กองทัพบก', 'Royal Thai Army', 'เหล่า', 'Corps', 'เหล่าทหารไปรษณีย์', 'Post');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-01', 'กองทัพเรือ', 'Royal Thai Navy', 'พรรค', 'Group', 'พรรคนาวิน', 'Line Group');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-02', 'กองทัพเรือ', 'Royal Thai Navy', 'พรรค', 'Group', 'พรรคกลิน', 'Engineering Group');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-03', 'กองทัพเรือ', 'Royal Thai Navy', 'พรรค', 'Group', 'พรรคนาวิกโยธิน', 'Marine Corps Group');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-04', 'กองทัพเรือ', 'Royal Thai Navy', 'พรรค', 'Group', 'พรรคพิเศษ', 'Special Group');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-05', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารพลาธิการ', 'Quartermaster Corps');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-06', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารแพทย์', 'Medical Corps');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-07', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารการเงิน', 'Finance Corps');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-08', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารพระธรรมนูญ', 'Judge Advocate General Corps');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-09', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารสารบรรณ', 'Adjutant General Corps');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-10', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารช่าง', 'Engineers Corps');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-11', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารสรรพาวุธ', 'Ordnance Corps');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-12', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารดุริยางค์', 'Band Corps');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-13', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารสารวัตร', 'Military Police Corps');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-14', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารขนส่ง', 'Transport Corps');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTN-CORPS-15', 'กองทัพเรือ', 'Royal Thai Navy', 'เหล่า', 'Corps', 'เหล่าทหารอุทกศาสตร์', 'Hydrographic Corps');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-01', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารนักบิน', 'Pilots');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-02', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารอากาศโยธิน', 'Air Security');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-03', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารต่อสู้อากาศยาน', 'Anti-Aircraft Artillery');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-04', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารช่างอากาศ', 'Aeronautical Engineering');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-05', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารสื่อสารอิเล็กทรอนิกส์', 'Communications and Electronics');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-06', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารสรรพาวุธ', 'Ordnance');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-07', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารพลาธิการ', 'Quartermaster');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-08', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารขนส่ง', 'Transport');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-09', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารแพทย์', 'Medical');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-10', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารการเงิน', 'Finance');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-11', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารสารบรรณ', 'Adjutant General');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-12', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารสารวัตร', 'Military Police');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-13', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารพระธรรมนูญ', 'Judge Advocate General');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-14', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารดุริยางค์', 'Band');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-15', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารพัสดุ', 'Supply');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-16', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารช่างโยธา', 'Civil Engineering');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-17', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารแผนที่', 'Mapping/Survey');
INSERT IGNORE INTO `thai_military_corps` VALUES ('RTAF-CORPS-18', 'กองทัพอากาศ', 'Royal Thai Air Force', 'เหล่า', 'Corps', 'เหล่าทหารอุตุ', 'Meteorology');
