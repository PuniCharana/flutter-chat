import 'package:flutter/material.dart';
import '../data/chat.dart';

class ChatDetails extends StatefulWidget {
  final Chat _chat;
  ChatDetails(this._chat);

  @override
  State<StatefulWidget> createState() => new ChatDetailsState();
}

class ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          new SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            centerTitle: false,
            flexibleSpace: new FlexibleSpaceBar(
              title: new Text(widget._chat.chatName),
              background: new Image.network(
                "https://cdn.pixabay.com/photo/2015/10/19/23/42/lamp-997041_960_720.jpg",
                fit: BoxFit.cover,
              ),
            ),
            actions: <Widget>[
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
          new SliverFixedExtentList(
            itemExtent: 200.0,
            delegate: SliverChildListDelegate([
              new Text("Todo"),
              new Text("Todo"),
              new Text("Todo"),
              new Text("Todo"),
              new Text("Todo"),
              new Text("Todo"),
              new Text("Todo"),
              new Text("Todo"),
              new Text("Todo"),
              new Text("Todo"),
              new Text("Todo"),
            ]),
          )
        ],
      ),
    );
  }
}
