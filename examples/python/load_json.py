import json
import os

# Path to the data relative to the project root
RANKS_PATH = '../../data/json/thai_military_ranks.json'
GROUPED_RANKS_PATH = '../../data/json/thai_military_ranks_grouped.json'

def load_example():
    # Adjust path if running from examples/python
    base_dir = os.path.dirname(__file__)
    ranks_file = os.path.join(base_dir, RANKS_PATH)
    grouped_file = os.path.join(base_dir, GROUPED_RANKS_PATH)

    print("--- Loading Flat JSON ---")
    with open(ranks_file, 'r', encoding='utf-8') as f:
        ranks = json.load(f)
        print(f"Loaded {len(ranks)} ranks.")
        print(f"First rank: {ranks[0]['rank_th']} ({ranks[0]['rank_en']})")

    print("\n--- Loading Grouped JSON ---")
    with open(grouped_file, 'r', encoding='utf-8') as f:
        grouped = json.load(f)
        for branch, items in grouped.items():
            print(f"{branch}: {len(items)} items")

if __name__ == "__main__":
    load_example()
