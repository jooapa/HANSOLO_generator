SET fileName = "HANSOLO.hs"
SET record = "HANSOLO"

OPEN fileName:(fileName:"W")

FOR i=1:1:100000 DO
  USE fileName
  WRITE record,!
  USE $P
  IF $TEST QUIT
  IF $SYSTEM.ProcessTime(1) WRITE "Error writing to file",!
  USE $P
END FOR

CLOSE fileName
