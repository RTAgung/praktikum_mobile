import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pertemuan_tujuh/data/hive_database.dart';
import 'package:pertemuan_tujuh/data/shared_pref.dart';
import 'package:pertemuan_tujuh/model/Note.dart';
import 'package:pertemuan_tujuh/view/login_page.dart';
import 'package:pertemuan_tujuh/view/note_form_page.dart';
import 'package:pertemuan_tujuh/view/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NoteFormPage()));
        },
        child: Icon(Icons.add),
      ),
      body: Container(),
    );
  }
}
