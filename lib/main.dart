import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Screens',
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _nameFieldController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('First Screen'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: TextField(
              controller: _nameFieldController,
              decoration: new InputDecoration(
                labelText: 'Enter Your Name'
              ),
            ),
          ),
          new ListTile(
            title:  RaisedButton(
              child: Text("Send to next screen"),
              onPressed: () =>debugPrint("Sending...")),
          )
        ],
      ),
    );
  }
}

class NextScreen extends StatefulWidget {
  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
