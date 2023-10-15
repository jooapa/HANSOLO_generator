Imports System.IO

Module HANSOLO
    Sub Main()
        Dim filePath As String = "C:\Users\user\Documents\GitHub\HANSOLO_generator\HANSOLO.hs"
        Dim text As String = "HANSOLO"
        Dim count As Integer = 1000000

        Using writer As StreamWriter = New StreamWriter(filePath)
            For i As Integer = 1 To count
                writer.WriteLine(text)
            Next
        End Using
    End Sub
End Module
