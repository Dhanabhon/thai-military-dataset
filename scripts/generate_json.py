import csv
import json
import os

def csv_to_json(csv_path, flat_json_path, grouped_json_path, group_key):
    print(f"Converting {csv_path}...")
    items = []
    grouped_items = {}
    
    if not os.path.exists(csv_path):
        print(f"Error: {csv_path} not found.")
        return

    with open(csv_path, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            items.append(row)
            
            group_val = row[group_key]
            if group_val not in grouped_items:
                grouped_items[group_val] = []
            grouped_items[group_val].append(row)
            
    # Write Flat JSON
    with open(flat_json_path, 'w', encoding='utf-8') as f:
        json.dump(items, f, ensure_ascii=False, indent=2)
        
    # Write Grouped JSON
    with open(grouped_json_path, 'w', encoding='utf-8') as f:
        json.dump(grouped_items, f, ensure_ascii=False, indent=2)
        
    print(f"Successfully generated {flat_json_path} and {grouped_json_path}")

def main():
    # Ensure data/json directory exists
    os.makedirs('data/json', exist_ok=True)
    
    # Define datasets to convert
    datasets = [
        {
            "csv": 'data/csv/thai_military_ranks.csv',
            "flat": 'data/json/thai_military_ranks.json',
            "grouped": 'data/json/thai_military_ranks_grouped.json',
            "key": 'branch_en'
        },
        {
            "csv": 'data/csv/thai_military_corps.csv',
            "flat": 'data/json/thai_military_corps.json',
            "grouped": 'data/json/thai_military_corps_grouped.json',
            "key": 'branch_en'
        }
    ]
    
    for ds in datasets:
        csv_to_json(ds["csv"], ds["flat"], ds["grouped"], ds["key"])

if __name__ == "__main__":
    main()
