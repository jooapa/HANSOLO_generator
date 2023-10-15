const fs = require('fs');

const text = 'HANSOLO\n'.repeat(1000000);

fs.writeFile('HANSOLO.hs', text, (err) => {
    if (err) throw err;
    console.log('HANSOLO.hs file has been saved!');
});
