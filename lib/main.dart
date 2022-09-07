import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: database(),
  ));
}

class database extends StatefulWidget {
  const database({Key? key}) : super(key: key);

  @override
  State<database> createState() => _databaseState();
}
String t1="";
String t2="";

class _databaseState extends State<database> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" DATA ",
            style: TextStyle(
              fontSize: 60,
              backgroundColor: Colors.white70,
              color: Colors.black,
            )),
        centerTitle: true,
      ),
      body: Column(children: [
        TextField(controller: t1,),
        TextField(controller: t2,),
        ElevatedButton(onPressed: () {
          String str1=t1.text;
          String str2=t2.text;
        }, child: Text("Submit"))
      ]),
    );
  }
}
