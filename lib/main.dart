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
                labelText: 'Enter Your Name'),
            ),
          ),
          new ListTile(
            title:  RaisedButton(
              child: Text("Send to next screen"),
              onPressed: () {
                var router = MaterialPageRoute(
                  builder: (BuildContext context) =>new NextScreen(name: _nameFieldController.text));

                Navigator.of(context).push(router);
                }),
          )
        ],
      ),
    );
  }
}

class NextScreen extends StatefulWidget {
  final String name;

  NextScreen({Key key,this.name}) : super(key: key);

  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Second Screen'),
        centerTitle: true,
      ),
      body: new ListTile(
          title: new Text('${widget.name}'),
      ),
    );
  }
  //END
}
