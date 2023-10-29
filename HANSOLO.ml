#r "System.IO"

let file = "HANSOLO.hs"

let main = do
  // loop 1,000,000
  for i in 1..1000000 do
    File.WriteAllText(file, "HANSOLO ")