import csv
import os

def generate_sql(engine):
    sql_path = f'data/sql/{engine}.sql'
    print(f"Generating {sql_path}...")
    
    # Dialect-specific settings
    quote = "`" if engine == "mysql" else '"'
    on_conflict = ""
    if engine == "mysql":
        on_conflict = "IGNORE"
    
    with open(sql_path, 'w', encoding='utf-8') as out:
        # Schema for ranks
        out.write(f"-- Thai Military Ranks ({engine})\n")
        out.write(f"CREATE TABLE IF NOT EXISTS {quote}thai_military_ranks{quote} (\n")
        out.write(f"  {quote}id{quote} VARCHAR(20) PRIMARY KEY,\n")
        out.write(f"  {quote}branch_th{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}branch_en{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}type_th{quote} VARCHAR(50) NOT NULL,\n")
        out.write(f"  {quote}type_en{quote} VARCHAR(50) NOT NULL,\n")
        out.write(f"  {quote}rank_th{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}rank_en{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}abbr_th{quote} VARCHAR(50) NOT NULL,\n")
        out.write(f"  {quote}abbr_en{quote} VARCHAR(50) NOT NULL\n")
        out.write(");\n\n")
        
        # Insert ranks
        with open('data/csv/thai_military_ranks.csv', 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)
            for row in reader:
                vals = [row[k].replace("'", "''") for k in reader.fieldnames]
                vals_str = ", ".join(f"'{v}'" for v in vals)
                prefix = f"INSERT {on_conflict}".strip()
                insert_stmt = f"{prefix} INTO {quote}thai_military_ranks{quote} VALUES ({vals_str});\n"
                out.write(insert_stmt)
        
        out.write("\n")
        
        # Schema for corps
        out.write(f"-- Thai Military Corps ({engine})\n")
        out.write(f"CREATE TABLE IF NOT EXISTS {quote}thai_military_corps{quote} (\n")
        out.write(f"  {quote}id{quote} VARCHAR(20) PRIMARY KEY,\n")
        out.write(f"  {quote}branch_th{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}branch_en{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}type_th{quote} VARCHAR(50) NOT NULL,\n")
        out.write(f"  {quote}type_en{quote} VARCHAR(50) NOT NULL,\n")
        out.write(f"  {quote}corps_th{quote} VARCHAR(100) NOT NULL,\n")
        out.write(f"  {quote}corps_en{quote} VARCHAR(100) NOT NULL\n")
        out.write(");\n\n")
        
        # Insert corps
        with open('data/csv/thai_military_corps.csv', 'r', encoding='utf-8') as f:
            reader = csv.DictReader(f)
            for row in reader:
                vals = [row[k].replace("'", "''") for k in reader.fieldnames]
                vals_str = ", ".join(f"'{v}'" for v in vals)
                prefix = f"INSERT {on_conflict}".strip()
                insert_stmt = f"{prefix} INTO {quote}thai_military_corps{quote} VALUES ({vals_str});\n"
                out.write(insert_stmt)

def main():
    os.makedirs('data/sql', exist_ok=True)
    for engine in ["mysql", "postgres", "sqlite"]:
        generate_sql(engine)

if __name__ == "__main__":
    main()
