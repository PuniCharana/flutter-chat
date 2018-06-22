import 'package:flutter/material.dart';
import '../data/chat.dart';
import '../layouts/chats.dart';
class ChatWidget extends StatelessWidget {
  final Chat _chat;

  ChatWidget(this._chat);

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () => Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new Chats(_chat),
        ),
      ),
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: new CircleAvatar(
                    child: new Text(_chat.chatName[0]),
                  ),
                ),
                new Expanded(
                    child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      _chat.chatName,
                      style: Theme.of(context).textTheme.subhead,
                    ),
                    new Container(
                      margin: const EdgeInsets.only(top: 6.0),
                      child: new Text(_chat.lastMessage, style:TextStyle(
                        fontSize: 13.0,
                      ),),
                    )
                  ],
                )),
                new Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      new Text(
                        "2:50 PM",
                        style: TextStyle(color: Colors.grey),
                      ),
//                      new Container(
//                        margin: const EdgeInsets.only(top: 6.0),
//                        child: new Text(
//                          _chat.totalUnseenMessage.toString(),
//                          textAlign: TextAlign.right,
//                          style: TextStyle(color: Colors.grey),
//                        ),
//                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          new Divider(height: 1.0,)
        ],
      ),
    );
  }
}
