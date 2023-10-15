open System.IO

let writeHansoloToFile() =
    let hansolo = "HANSOLO"
    let path = "C:/Users/user/Documents/GitHub/HANSOLO_generator/HANSOLO.hs"
    use writer = new StreamWriter(path)
    for i in 1..1000000 do
        writer.WriteLine(hansolo)
    printfn "HANSOLO written to file successfully!"

writeHansoloToFile()
