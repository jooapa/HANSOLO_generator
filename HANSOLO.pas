program HANSOLO_generator;

uses
    SysUtils;

var
    i: Integer;
    HANSOLO: string;
    HANSOLOFile: TextFile;

begin
    HANSOLO := 'HANSOLO';
    AssignFile(HANSOLOFile, 'HANSOLO.hs');
    Rewrite(HANSOLOFile);
    for i := 1 to 1000000 do
    begin
        WriteLn(HANSOLOFile, HANSOLO);
    end;
    CloseFile(HANSOLOFile);
end.
