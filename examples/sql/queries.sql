-- 1. Get all ranks for the Royal Thai Navy
SELECT * FROM thai_military_ranks 
WHERE branch_en = 'Royal Thai Navy';

-- 2. Count number of corps per branch
SELECT branch_en, COUNT(*) as corps_count 
FROM thai_military_corps 
GROUP BY branch_en;

-- 3. Search for a specific rank by abbreviation
SELECT * FROM thai_military_ranks 
WHERE abbr_en = 'GEN';
