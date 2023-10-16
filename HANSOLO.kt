import java.io.File

fun main() {
    val text = "HANSOLO\n".repeat(1000000)
    File("HANSOLO.hs").writeText(text)
}
