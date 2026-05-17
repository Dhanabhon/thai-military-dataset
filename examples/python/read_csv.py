import csv
import os

CSV_PATH = '../../data/csv/thai_military_ranks.csv'

def read_example():
    base_dir = os.path.dirname(__file__)
    csv_file = os.path.join(base_dir, CSV_PATH)

    print("--- Reading CSV ---")
    with open(csv_file, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        army_ranks = [row for row in reader if row['branch_en'] == 'Royal Thai Army']
        print(f"Found {len(army_ranks)} Army ranks.")
        for r in army_ranks[:5]:
            print(f"- {r['rank_th']} ({r['rank_en']})")

if __name__ == "__main__":
    read_example()
