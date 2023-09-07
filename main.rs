use std::fs::File;
use std::io::{Write, Result};

struct Data {
    name: &'static str, // Use a static string for better performance
    amount: u32,
}

fn main() -> Result<()> {
    let data = Data {
        name: "HANSOLO,",
        amount: 1000000,
    };

    let mut file = File::create("hansolo.json")?;

    file.write_all(b"{\n  \"data\": { ")?;

    // Use the write_fmt method to write the repeated name
    for _ in 0..data.amount {
        write!(file, "{}", data.name)?;
    }

    file.write_all(b"\n}  \n}")?;

    println!("file created");
    Ok(())
}
