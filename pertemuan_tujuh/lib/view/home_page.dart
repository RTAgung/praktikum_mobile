import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pertemuan_tujuh/data/shared_pref.dart';
import 'package:pertemuan_tujuh/view/login_page.dart';
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
      body: Container(),
    );
  }
}
