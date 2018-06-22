import 'package:flutter/material.dart';

class Groups extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Groups"),
      ),
      floatingActionButton: new FloatingActionButton(
          elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
          child: new Icon(Icons.add),
          onPressed: () {}),
    );
  }
}