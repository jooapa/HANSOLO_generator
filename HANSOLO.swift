import Foundation

let hansolo = "HANSOLO\n"
let filename = "HANSOLO.hs"

guard let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
    fatalError("Could not access document directory")
}

let fileURL = dir.appendingPathComponent(filename)

do {
    try hansolo.write(to: fileURL, atomically: false, encoding: .utf8)
    let fileHandle = try FileHandle(forWritingTo: fileURL)
    defer {
        fileHandle.closeFile()
    }
    for _ in 1...1_000_000 {
        fileHandle.write(hansolo.data(using: .utf8)!)
    }
} catch {
    print("Error writing to file: \(error)")
}
