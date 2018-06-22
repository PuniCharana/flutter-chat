import 'package:flutter/material.dart';
import '../data/chat.dart';
import './chatDetails.dart';

class Chats extends StatefulWidget {
  final Chat _chat;
  Chats(this._chat);

  @override
  State<StatefulWidget> createState() => new ChatsState();
}

class ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new InkWell(
            onTap: () => Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new ChatDetails(widget._chat),
                  ),
                ),
            child: new Row(
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: new CircleAvatar(
                    child: new Text(widget._chat.chatName[0]),
                  ),
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(widget._chat.chatName, overflow: TextOverflow.clip, maxLines: 1,),
                    new Text(
                      "tap here for group info",
                      style: TextStyle(fontSize: 12.0),
                    )
                  ],
                ),
              ],
            )),
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
      ),
      body: new Center(
        child: new Text(widget._chat.lastMessage),
      ),
    );
  }
}
