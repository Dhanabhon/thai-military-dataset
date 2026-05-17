import csv
import json
import sys
import os

def validate_csv(file_path, required_fields):
    print(f"Validating {file_path}...")
    ids = set()
    errors = []
    
    if not os.path.exists(file_path):
        print(f"ERROR: File {file_path} not found.")
        return False

    with open(file_path, mode='r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        
        if reader.fieldnames != required_fields:
            errors.append(f"Header mismatch. Expected {required_fields}, got {reader.fieldnames}")
            
        for i, row in enumerate(reader, start=2):
            # Check for missing values
            for field in required_fields:
                if not row.get(field):
                    errors.append(f"Line {i}: Missing value for field '{field}'")
            
            # Check for unique IDs
            if row['id'] in ids:
                errors.append(f"Line {i}: Duplicate ID '{row['id']}'")
            ids.add(row['id'])
            
    if errors:
        for error in errors:
            print(f"ERROR: {error}")
        return False
    
    print(f"Success! {len(ids)} items validated in {file_path}.")
    return True

def validate_json(file_path, required_fields, expected_count, is_grouped=False):
    print(f"Validating {file_path}...")
    
    if not os.path.exists(file_path):
        print(f"ERROR: File {file_path} not found.")
        return False

    try:
        with open(file_path, mode='r', encoding='utf-8') as f:
            data = json.load(f)
            
        items = []
        if is_grouped:
            if not isinstance(data, dict):
                print(f"ERROR: {file_path} is grouped but root is not an object.")
                return False
            for branch in data.values():
                if not isinstance(branch, list):
                    print(f"ERROR: {file_path} branch data is not a list.")
                    return False
                items.extend(branch)
        else:
            if not isinstance(data, list):
                print(f"ERROR: {file_path} is flat but root is not a list.")
                return False
            items = data
            
        if len(items) != expected_count:
            print(f"ERROR: {file_path} count mismatch. Expected {expected_count}, got {len(items)}")
            return False
            
        ids = set()
        for i, item in enumerate(items):
            # Check for missing fields
            for field in required_fields:
                if field not in item or not item[field]:
                    print(f"ERROR: Item {i} in {file_path} missing or empty field '{field}'")
                    return False
            
            # Check for unique IDs
            if item['id'] in ids:
                print(f"ERROR: Item {i} in {file_path} has duplicate ID '{item['id']}'")
                return False
            ids.add(item['id'])
            
        print(f"Success! {len(ids)} items validated in {file_path}.")
        return True
        
    except json.JSONDecodeError as e:
        print(f"ERROR: Failed to decode {file_path}: {e}")
        return False
    except Exception as e:
        print(f"ERROR: An unexpected error occurred while validating {file_path}: {e}")
        return False

def validate_sql_file(file_path):
    print(f"Validating {file_path}...")
    if not os.path.exists(file_path):
        print(f"ERROR: File {file_path} not found.")
        return False
    
    # Basic check for CREATE and INSERT keywords
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
        if "CREATE TABLE" not in content or "INSERT INTO" not in content:
            print(f"ERROR: {file_path} is missing basic SQL commands.")
            return False
            
    print(f"Success! {file_path} validated.")
    return True

if __name__ == "__main__":
    csv_datasets = [
        {
            "path": "data/csv/thai_military_ranks.csv",
            "fields": ['id', 'branch_th', 'branch_en', 'type_th', 'type_en', 'rank_th', 'rank_en', 'abbr_th', 'abbr_en']
        },
        {
            "path": "data/csv/thai_military_corps.csv",
            "fields": ['id', 'branch_th', 'branch_en', 'type_th', 'type_en', 'corps_th', 'corps_en']
        }
    ]
    
    json_datasets = [
        {
            "path": "data/json/thai_military_ranks.json",
            "fields": ['id', 'branch_th', 'branch_en', 'type_th', 'type_en', 'rank_th', 'rank_en', 'abbr_th', 'abbr_en'],
            "count": 72,
            "grouped": False
        },
        {
            "path": "data/json/thai_military_ranks_grouped.json",
            "fields": ['id', 'branch_th', 'branch_en', 'type_th', 'type_en', 'rank_th', 'rank_en', 'abbr_th', 'abbr_en'],
            "count": 72,
            "grouped": True
        },
        {
            "path": "data/json/thai_military_corps.json",
            "fields": ['id', 'branch_th', 'branch_en', 'type_th', 'type_en', 'corps_th', 'corps_en'],
            "count": 50,
            "grouped": False
        },
        {
            "path": "data/json/thai_military_corps_grouped.json",
            "fields": ['id', 'branch_th', 'branch_en', 'type_th', 'type_en', 'corps_th', 'corps_en'],
            "count": 50,
            "grouped": True
        }
    ]
    
    all_valid = True
    for ds in csv_datasets:
        if not validate_csv(ds["path"], ds["fields"]):
            all_valid = False
            
    for ds in json_datasets:
        if not validate_json(ds["path"], ds["fields"], ds["count"], ds["grouped"]):
            all_valid = False

    sql_engines = ["mysql", "postgres", "sqlite"]
    for engine in sql_engines:
        if not validate_sql_file(f"data/sql/{engine}.sql"):
            all_valid = False
            
    if all_valid:
        print("\nAll datasets validated successfully.")
        sys.exit(0)
    else:
        print("\nDataset validation failed.")
        sys.exit(1)
