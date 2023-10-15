# Open file for writing
file = open("HANSOLO.hs", "w")

# Write HANSOLO 1,000,000 times to the file
for i in 1:1_000_000
    write(file, "HANSOLO\n")
end

# Close the file
close(file)
