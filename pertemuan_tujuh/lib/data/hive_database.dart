import 'package:hive_flutter/hive_flutter.dart';
import 'package:pertemuan_tujuh/model/Note.dart';

class HiveDatabase {
  Box<Note> localDBBox = Hive.box<Note>("notedb");

  void initDB() async {
    await Hive.initFlutter();
    Hive.registerAdapter(NoteAdapter());
    await Hive.openBox<Note>("notedb");
  }

  void addData(Note note) {
    localDBBox.add(note);
  }
  

}
