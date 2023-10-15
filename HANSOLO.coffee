fs = require 'fs'

text = 'HANSOLO\n'
filename = 'HANSOLO.hs'

for i in [1..1000000]
    fs.appendFileSync filename, text
