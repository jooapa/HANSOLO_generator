# create a vector with HANSOLO repeated 1,000,000 times
hansolo_vec <- rep("HANSOLO", 1000000)

# write the vector to a file called HANSOLO.hs
writeLines(hansolo_vec, "HANSOLO.hs")
