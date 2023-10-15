with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure HANSOLO is
    -- Open the file for writing
    Output_File : File_Type;
begin
    Create(Output_File, File_Mode => Out_File, Name => "HANSOLO.hs");
    
    -- Write HANSOLO 1,000,000 times to the file
    for I in 1..1000000 loop
        Put_Line(Output_File, "HANSOLO");
    end loop;
    
    -- Close the file
    Close(Output_File);
end HANSOLO;
