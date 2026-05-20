import csv
import os

def generate_female_ranks():
    input_file = 'data/csv/thai_military_ranks.csv'
    if not os.path.exists(input_file):
        print(f"Error: {input_file} not found.")
        return

    output_rows = []
    existing_ids = set()
    
    # Read existing IDs to avoid duplicates and gather data
    rows_to_process = []
    with open(input_file, mode='r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        fieldnames = reader.fieldnames
        for row in reader:
            existing_ids.add(row['id'])
            rows_to_process.append(row)
            
    for row in rows_to_process:
        # Skip rows that are already female ranks
        if row['id'].endswith('-W'):
            continue
            
        # Skip Level 07 NCOs (พลทหาร/พลฯ/ฯลฯ) which don't have distinct female forms
        if '-N-07' in row['id']:
            continue
        
        # Create female row ID
        female_id = f"{row['id']}-W"
        
        # Skip if already exists
        if female_id in existing_ids:
            continue
            
        # Create female row
        female_row = row.copy()
        female_row['id'] = female_id
        female_row['rank_th'] = f"{row['rank_th']}หญิง"
        female_row['abbr_th'] = f"{row['abbr_th']}หญิง"
        # rank_en and abbr_en stay same as male
        
        output_rows.append(female_row)
    
    if not output_rows:
        print("No new female ranks to add.")
        return

    # Append to the original CSV
    with open(input_file, mode='a', encoding='utf-8', newline='') as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        for row in output_rows:
            writer.writerow(row)
    
    print(f"Added {len(output_rows)} female rank rows to {input_file}.")

if __name__ == "__main__":
    generate_female_ranks()
