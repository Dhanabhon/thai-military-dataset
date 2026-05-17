import csv
import sys
import os

def validate_csv(file_path):
    print(f"Validating {file_path}...")
    ids = set()
    errors = []
    
    if not os.path.exists(file_path):
        print(f"ERROR: File {file_path} not found.")
        return False

    with open(file_path, mode='r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        required_fields = ['id', 'branch_th', 'branch_en', 'type_th', 'type_en', 'rank_th', 'rank_en', 'abbr_th', 'abbr_en']
        
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
    
    print(f"Success! {len(ids)} ranks validated.")
    return True

if __name__ == "__main__":
    target = "data/csv/thai_military_ranks.csv"
    if validate_csv(target):
        sys.exit(0)
    else:
        sys.exit(1)
