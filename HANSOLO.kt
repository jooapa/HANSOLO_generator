import java.io.File

fun main() {
    val text = "HANSOLO\n".repeat(1_000_000)
    File("HANSOLO.hs").writeText(text)
}
