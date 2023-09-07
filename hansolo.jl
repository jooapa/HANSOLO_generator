using Pkg
Pkg.add("PackageCompiler")

file = open("hansolo.json", "w")

write(file, "{\n  \"data\": [ \n")
for i in 1:100000000
    write(file, "HANSOLO, \n")
end
write(file, "HANSOLO\n]\n}")

close(file)
