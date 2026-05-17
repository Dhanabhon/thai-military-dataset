# Thai Military Dataset

ฐานข้อมูลชั้นยศและเหล่าทหารไทย (กองทัพบก กองทัพเรือ และกองทัพอากาศ) ในรูปแบบข้อมูลพร้อมใช้งาน (Open-source Dataset) ที่ออกแบบมาเพื่อให้นักพัฒนาซอฟต์แวร์ (Developers) สามารถนำไปต่อยอดได้ทันที

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

## เกี่ยวกับโปรเจกต์ (About)
โปรเจกต์นี้จัดทำขึ้นเพื่อรวบรวมข้อมูลชั้นยศและเหล่าทหาร (Corps) ของประเทศไทยจากทั้ง 3 เหล่าทัพ ให้อยู่ในรูปแบบโครงสร้างข้อมูลมาตรฐาน (Structured Data) ซึ่งจะช่วยลดเวลาและภาระของนักพัฒนาที่ต้องการข้อมูลส่วนนี้ไปใช้ในระบบต่างๆ ไม่ว่าจะเป็น ระบบ HR, ระบบจัดการบุคลากร, แอปพลิเคชัน หรือแม้แต่งานวิเคราะห์ข้อมูล (Data Analytics)

ประกอบไปด้วยข้อมูลจาก:
- **กองทัพบก** (Royal Thai Army - RTA)
- **กองทัพเรือ** (Royal Thai Navy - RTN)
- **กองทัพอากาศ** (Royal Thai Air Force - RTAF)

## เดโม (Live Demo)
คุณสามารถดูตัวอย่างการแสดงผลข้อมูลและค้นหายศ/เหล่าทหารได้ที่:
👉 **[https://Dhanabhon.github.io/thai-military-dataset/](https://Dhanabhon.github.io/thai-military-dataset/)**

## โครงสร้างโปรเจกต์ (Project Structure)
```text
.
├── data/
│   ├── csv/          # ไฟล์ข้อมูลรูปแบบ CSV (Source of Truth)
│   ├── json/         # ไฟล์ข้อมูลรูปแบบ JSON (Flat & Grouped)
│   └── sql/          # ไฟล์ Script สำหรับ SQL (MySQL, Postgres, SQLite)
├── scripts/          # สคริปต์สำหรับจัดการข้อมูล
│   ├── generate_json.py
│   ├── generate_sql.py
│   └── validate_dataset.py
├── docs/             # เอกสารการออกแบบและแผนการพัฒนา
├── examples/         # ตัวอย่างการใช้งาน (Planned)
└── README.md
```

## พัฒนาโดยใช้ (Built With)
โปรเจกต์นี้ได้รับการพัฒนาและจัดเตรียมข้อมูลโดยใช้ **Gemini AI** (Gemini CLI) ในทุกขั้นตอน ตั้งแต่การจัดโครงสร้างข้อมูล (Data Structuring), การแปลงรูปแบบไฟล์ (JSON/SQL Generation), ไปจนถึงการเขียนสคริปต์ตรวจสอบความถูกต้อง (Validation Scripts) เพื่อให้มั่นใจว่าข้อมูลมีมาตรฐานและพร้อมใช้งานสูงสุด

## รูปแบบข้อมูล (Data Formats)
ข้อมูลถูกจัดเตรียมไว้หลายรูปแบบเพื่อให้ครอบคลุมทุกการใช้งาน:
- **`JSON`** - มีทั้งแบบรายการแบน (Flat List) และแบบจัดกลุ่มตามเหล่าทัพ (Grouped by Branch) เหมาะสำหรับ Web Applications, APIs และ Mobile Apps
- **`CSV`** - เหมาะสำหรับงาน Data Analysis, Machine Learning หรือนำเข้า Spreadsheet
- **`SQL`** - Script สำหรับสร้างตารางและนำเข้าข้อมูลเข้าสู่ Relational Database (เช่น MySQL, PostgreSQL, SQLite)

## ข้อมูลสรุป (Dataset Summary)
จำนวนข้อมูลทั้งหมดในโปรเจกต์ (อัปเดตล่าสุด: พฤษภาคม 2026):

| เหล่าทัพ (Branch) | ชั้นยศ (Ranks) | เหล่า/พรรค (Corps) |
| :--- | :---: | :---: |
| **กองทัพบก** (Royal Thai Army) | 24 | 17 |
| **กองทัพเรือ** (Royal Thai Navy) | 24 | 15 |
| **กองทัพอากาศ** (Royal Thai Air Force) | 24 | 18 |
| **รวม (Total)** | **72** | **50** |

*หมายเหตุ: ข้อมูลชั้นยศรวมทั้งยศปกติ, ว่าที่ (Acting), และยศพิเศษ*

## โครงสร้างข้อมูล (Data Schema)

### 1. ข้อมูลชั้นยศ (Ranks)
ตัวอย่างโครงสร้างข้อมูล (JSON format):
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

### 2. ข้อมูลเหล่าทหาร (Corps/Groups)
ตัวอย่างโครงสร้างข้อมูล (JSON format):
```json
{
  "id": "RTA-CORPS-01",
  "branch_th": "กองทัพบก",
  "branch_en": "Royal Thai Army",
  "type_th": "เหล่า",
  "type_en": "Corps",
  "corps_th": "เหล่าทหารราบ",
  "corps_en": "Infantry"
}
```

## การนำไปใช้งาน (Getting Started)
1. Clone repository นี้ไปยังเครื่องของคุณ
```bash
git clone https://github.com/Dhanabhon/thai-military-dataset.git
```
2. เลือกไฟล์ในโฟลเดอร์ตามรูปแบบที่คุณต้องการใช้งาน
3. นำข้อมูลไปใช้ร่วมกับโปรเจกต์ของคุณได้ทันที!

## การมีส่วนร่วม (Contributing)
โปรเจกต์นี้เป็น Open-source ที่เปิดรับการมีส่วนร่วมจากทุกคน หากคุณพบข้อมูลที่ไม่ถูกต้อง พิมพ์ผิด หรือต้องการเพิ่มรูปแบบข้อมูลใหม่ๆ:
1. Fork โปรเจกต์นี้
2. สร้าง Branch ใหม่ (`git checkout -b update/AddNewFeature`)
3. Commit การแก้ไข (`git commit -m 'Add new feature'`)
4. Push ไปยัง Branch (`git push origin update/AddNewFeature`)
5. เปิด Pull Request

## แหล่งข้อมูลอ้างอิง (References)

ข้อมูลทั้งหมดในคลังนี้ ได้รับการตรวจสอบและอ้างอิงตามกฎหมาย ระเบียบ และข้อบังคับอย่างเป็นทางการของทางราชการไทย เพื่อให้มั่นใจในความถูกต้องเชิงวิชาการและการนำไปใช้งาน:

1. **โครงสร้างและลำดับชั้นยศ:** พระราชบัญญัติยศทหาร พุทธศักราช 2479 และที่แก้ไขเพิ่มเติม (สืบค้นจาก [สำนักงานคณะกรรมการกฤษฎีกา](https://www.krisdika.go.th))
2. **การจัดกลุ่มยศและอัตราเงินเดือน:** พระราชบัญญัติระเบียบข้าราชการทหาร (ฉบับที่ 10) พ.ศ. 2558, ราชกิจจานุเบกษา เล่ม 132 ตอนที่ 43 ก.
3. **คำย่อภาษาไทยอย่างเป็นทางการ:** ระเบียบกระทรวงกลาโหม ว่าด้วยคำย่อ พ.ศ. 2548
4. **คำแปลและคำย่อภาษาอังกฤษ:** พจนานุกรมศัพท์ทหาร อังกฤษ-ไทย ฉบับสถาบันวิชาการป้องกันประเทศ (สปท.) กองบัญชาการกองทัพไทย

## ลิขสิทธิ์ (License)
ชุดข้อมูลและซอร์สโค้ดในโปรเจกต์นี้เผยแพร่ภายใต้ [MIT License](LICENSE) คุณสามารถนำไปใช้งาน ดัดแปลง หรือแจกจ่ายได้ฟรีทั้งในเชิงพาณิชย์และส่วนบุคคล
