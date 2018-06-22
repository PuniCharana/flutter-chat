import 'package:flutter/material.dart';

import './layouts/chatLists.dart';
import './layouts/groups.dart';
import './layouts/contacts.dart';
import './layouts/settings.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Chat';

  final appTheme = new ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.teal,
    accentColor: Colors.pinkAccent,
  );

  final routes = <String, WidgetBuilder>{
    "/Settings": (BuildContext context) => new Settings()
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: appTheme,
      routes: routes,
      home: new MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.white,
            ),
            tooltip: 'Search',
            onPressed: () => {},
          ),
          new IconButton(
            icon: new Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            tooltip: 'More Option',
            onPressed: () => Navigator.pushNamed(context, "/Settings"),
          )
        ],
        bottom: new TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            tabs: <Tab>[
              new Tab(
                text: "Chats",
              ),
              new Tab(
                text: "Groups",
              ),
              new Tab(
                text: "Contacts",
              )
            ]),
      ),
      body: new TabBarView(
          controller: tabController,
          children: <Widget>[new ChatLists(), new Groups(), new Contacts()]),
    );
  }
}
