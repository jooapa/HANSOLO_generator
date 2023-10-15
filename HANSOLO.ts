import * as fs from 'fs';

const text = 'HANSOLO\n';
const filename = 'HANSOLO.hs';

for (let i = 0; i < 1000000; i++) {
    fs.appendFileSync(filename, text);
}
