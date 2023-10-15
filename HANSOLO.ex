# Open a file called HANSOLO.hs in write mode
with open('HANSOLO.hs', 'w') as file:
    # Write HANSOLO 1,000,000 times to the file
    for i in range(1000000):
        file.write('HANSOLO\n')
