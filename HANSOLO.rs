use std::fs::File;
use std::io::prelude::*;

fn main() -> std::io::Result<()> {
    let mut file = File::create("HANSOLO.hs")?;
    for _ in 0..1_000_000 {
        file.write_all(b"HANSOLO\n")?;
    }
    Ok(())
}
