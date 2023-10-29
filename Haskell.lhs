import Prelude

import System.Directory (createDirectoryIfMissing)
import System.FilePath.Posix (takeDirectory)

main :: IO ()
main = createAndWriteFile "HANSOLO.hs" ""

createAndWriteFile :: FilePath -> String -> IO ()
createAndWriteFile path content = do
  createDirectoryIfMissing True $ takeDirectory path

  writeFile path content

printStringNTimes 0 = return ()
printStringNTimes n =
 do
  putStrLn "a string"
  printStringNTimes (n-1)

main = printStringNTimes 10