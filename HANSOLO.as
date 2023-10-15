import flash.filesystem.*;

var file:File = File.desktopDirectory.resolvePath("HANSOLO.hs");
var stream:FileStream = new FileStream();
stream.open(file, FileMode.WRITE);

for (var i:int = 0; i < 1000000; i++) {
    stream.writeUTFBytes("HANSOLO");
}

stream.close();
