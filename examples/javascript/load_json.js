const fs = require('fs');
const path = require('path');

const RANKS_PATH = path.join(__dirname, '../../data/json/thai_military_ranks.json');

try {
  const data = fs.readFileSync(RANKS_PATH, 'utf8');
  const ranks = JSON.parse(data);

  console.log('--- JavaScript JSON Load Example ---');
  console.log(`Loaded ${ranks.length} ranks.`);
  
  const gen = ranks.find(r => r.id === 'RTA-O-01');
  if (gen) {
    console.log(`Found Rank: ${gen.rank_th} (${gen.rank_en})`);
  }
} catch (err) {
  console.error('Error loading JSON:', err);
}
