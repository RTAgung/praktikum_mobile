import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // hot reload
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Pertama'),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.access_alarm),
                  Text("Pertama"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.access_alarm),
                  Text("Kedua"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.access_alarm),
                  Text("Ketiga"),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}