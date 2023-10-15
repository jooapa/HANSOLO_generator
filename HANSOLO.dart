import 'dart:io';

void main() {
  final hansolo = 'HANSOLO';
  final file = File('HANSOLO.hs');
  final sink = file.openWrite();

  for (var i = 0; i < 1000000; i++) {
    sink.write('$hansolo\n');
  }

  sink.close();
}
