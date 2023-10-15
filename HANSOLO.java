import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class HANSOLO {
    public static void main(String[] args) {
        String fileName = "HANSOLO.hs";
        String content = "HANSOLO\n";
        int numLines = 1000000;

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(fileName))) {
            for (int i = 0; i < numLines; i++) {
                writer.write(content);
            }
            System.out.println("Successfully wrote " + numLines + " lines to file " + fileName);
        } catch (IOException e) {
            System.out.println("An error occurred while writing to file " + fileName);
            e.printStackTrace();
        }
    }
}
