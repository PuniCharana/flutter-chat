class Chat {
  final String _chatName;
  final String _lastMessage;
  final double _lastUpdated;
  final double _created;
  final int _totalUnseenMessage;

  Chat(this._chatName, this._lastMessage, this._lastUpdated, this._created,
      this._totalUnseenMessage);

  String get chatName => _chatName;
  String get lastMessage => _lastMessage;
  double get lastUpdated => _lastUpdated;
  double get created => _created;
  int get totalUnseenMessage => _totalUnseenMessage;
}
