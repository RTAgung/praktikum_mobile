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
  HiveDatabase _hd = HiveDatabase();

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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return _cardItemList();
          },
        ),
      ),
    );
  }

  Widget _cardItemList() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Card(
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text("Title"),
                        Text("Text"),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
