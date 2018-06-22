import 'package:flutter/material.dart';
import 'dart:math';

import '../widgets/chatWidget.dart';
import '../data/chat.dart';

class ChatLists extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ChatListsState();
}

class ChatListsState extends State<ChatLists> {
  final chats = new List<Chat>.generate(
    50,
    (i) => new Chat(i % 3 == 0 ? "Group Name $i" : "User Name $i",
        'Last message $i', Random().nextDouble(), 2.3, Random().nextInt(10)),
  );

  final List<ChatWidget> chatsWidgets = [];

  ChatListsState() {
    chats.forEach((chat) => chatsWidgets.add(ChatWidget(chat)));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(shrinkWrap: false, children: chatsWidgets),
      floatingActionButton: new FloatingActionButton(
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
          child: new Icon(Icons.chat),
          onPressed: () {}),
    );
  }
}
