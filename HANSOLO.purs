import Prelude
import Effect (Effect)
import File (writeTextFile)

main :: Effect Unit
main = do
    let text = replicate 1000000 "HANSOLO\n"
    writeTextFile "HANSOLO.hs" (fold text)
