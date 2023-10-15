-- Open file for writing
local file = io.open("HANSOLO.hs", "w")

-- Write HANSOLO 1,000,000 times to file
for i = 1, 1000000 do
    file:write("HANSOLO\n")
end

-- Close file
file:close()
