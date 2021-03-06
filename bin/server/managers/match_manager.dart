part of server;

class Lobby {
  static const maxPlayers = 4;

  CommonWebSocket host;
  final _invitedPlayersReadyStatus = <CommonWebSocket, bool>{};

  Iterable<CommonWebSocket> get players => _invitedPlayersReadyStatus.keys;

  bool playerReady(CommonWebSocket socket) =>
      _invitedPlayersReadyStatus.containsKey(socket)
          ? _invitedPlayersReadyStatus[socket]
          : false;

  List<CommonWebSocket> getReadyPlayers() {
    final readyPlayers = <CommonWebSocket>[];
    for (var player in _invitedPlayersReadyStatus.keys) {
      if (!_invitedPlayersReadyStatus[player]) continue;

      readyPlayers.add(player);
    }

    return readyPlayers;
  }

  void addPlayer(CommonWebSocket socket) {
    final lobbyInfo = LobbyInfo()
      ..host = LoginManager.shared.userIDFromSocket(host)
      ..canJoin = true
      ..canStart = false;

    // add player entries
    for (var socket in _invitedPlayersReadyStatus.keys) {
      final playerID = LoginManager.shared.userIDFromSocket(socket);

      final playerEntry = PlayerEntry()
        ..userID = playerID
        ..ready = _invitedPlayersReadyStatus[socket];
      lobbyInfo.players.add(playerEntry);
    }

    socket.send(SocketMessage_Type.MATCH_INVITE, lobbyInfo);

    _invitedPlayersReadyStatus[socket] = false;

    _sendInfoToPlayers();
  }

  void acceptInvite(CommonWebSocket socket) {
    _invitedPlayersReadyStatus[socket] = true;

    _sendInfoToPlayers();
  }

  void declineInvite(CommonWebSocket socket) {
    _invitedPlayersReadyStatus.remove(socket);

    if (_invitedPlayersReadyStatus.isNotEmpty && socket == host) {
      host = _invitedPlayersReadyStatus.keys.first;
      _invitedPlayersReadyStatus.remove(host);
    }

    _sendInfoToPlayers();
  }

  void _sendInfoToPlayers() {
    final lobbyInfo = LobbyInfo()
      ..host = LoginManager.shared.userIDFromSocket(host)
      ..canStart = false;

    // add player entries
    for (var socket in _invitedPlayersReadyStatus.keys) {
      final playerID = LoginManager.shared.userIDFromSocket(socket);

      final playerEntry = PlayerEntry()
        ..userID = playerID
        ..ready = _invitedPlayersReadyStatus[socket];
      lobbyInfo.players.add(playerEntry);
    }

    // send to players
    for (var socket in _invitedPlayersReadyStatus.keys) {
      socket.send(SocketMessage_Type.LOBBY_INFO, lobbyInfo);
    }

    // host has more options
    lobbyInfo.canStart = true;
    host.send(SocketMessage_Type.LOBBY_INFO, lobbyInfo);
  }

  Lobby(this.host);
}

class MatchManager {
  static final shared = MatchManager._internal();

  MatchManager._internal();

  final _lobbyBySocket = <CommonWebSocket, Lobby>{};
  final _matchBySocket = <CommonWebSocket, Match>{};

  bool socketInLobby(CommonWebSocket socket) =>
      _lobbyBySocket.containsKey(socket);

  bool socketInMatch(CommonWebSocket socket) =>
      _matchBySocket.containsKey(socket);

  bool userIDInvitable(String username) {
    if (!LoginManager.shared.userIDLoggedIn(username)) return false;

    final socket = LoginManager.shared.socketFromUserID(username);

    if (socketInMatch(socket) || socketInLobby(socket)) return false;

    return true;
  }

  Lobby lobbyFromSocket(CommonWebSocket socket) => _lobbyBySocket[socket];

  Match matchFromSocket(CommonWebSocket socket) => _matchBySocket[socket];

  Future<void> sendMatchInvite(CommonWebSocket socket, String friendID) async {
    if (socketInMatch(socket)) return;

    // check for existing lobby
    Lobby lobby;
    if (socketInLobby(socket)) {
      lobby = _lobbyBySocket[socket];

      // can't add user until accepts or declines match invite
      if (!lobby.playerReady(socket) && socket != lobby.host) return;

      // can't add more if lobby full
      if (lobby.players.length == Lobby.maxPlayers) return;
    } else {
      lobby = Lobby(socket);
    }

    _lobbyBySocket[socket] = lobby;

    var friendSocket;
    if (friendID == 'bot') {
      final botSocket = BotSocket();
      friendSocket = botSocket;

      SocketReceiver.handle(botSocket);
    } else {
      if (!LoginManager.shared.userIDLoggedIn(friendID)) {
        // TODO send error
        return;
      }
      final userID = LoginManager.shared.userIDFromSocket(socket);

      print('invite $userID -> $friendID');

      friendSocket = LoginManager.shared.socketFromUserID(friendID);

      if (socketInLobby(friendSocket)) return;

      _lobbyBySocket[friendSocket] = lobby;
    }

    lobby.addPlayer(friendSocket);

    FriendManager.shared.sendFriendStatuses(socket);
    FriendManager.shared.sendFriendStatuses(friendSocket);
  }

  void matchAccept(CommonWebSocket socket) {
    if (!socketInLobby(socket) || socketInMatch(socket)) {
      // TODO send error
      return;
    }

    final lobby = lobbyFromSocket(socket);
    lobby.acceptInvite(socket);
  }

  void rankedMatch(CommonWebSocket socket) {
    if (socketInLobby(socket) || socketInMatch(socket)) {
      // TODO send error
      return;
    }

    final players = <CommonWebSocket>[socket];

    // add bots
    while (players.length < 4) {
      final botSocket = BotSocket();
      SocketReceiver.handle(botSocket);
      players.add(botSocket);
    }
    final match = Match(players, true);

    for (var player in players) {
      _matchBySocket[player] = match;
    }
    socket.send(SocketMessage_Type.MATCH_START);
  }

  void quickMatch(CommonWebSocket socket) {
    if (socketInLobby(socket) || socketInMatch(socket)) {
      // TODO send error
      return;
    }

//    final bot = _matchBySocket.keys.firstWhere((_socket) => _socket is BotSocket);
//
//    if (bot != null) {
//      //TODO replace bot
//    } else {
    final players = <CommonWebSocket>[socket];

    // add bots
    while (players.length < 4) {
      final botSocket = BotSocket();
      SocketReceiver.handle(botSocket);
      players.add(botSocket);
    }
    final match = Match(players, false);

    for (var player in players) {
      _matchBySocket[player] = match;
    }
    socket.send(SocketMessage_Type.MATCH_START);
//    }
  }

  void startMatch(CommonWebSocket socket) {
    if (!socketInLobby(socket) || socketInMatch(socket)) {
      // TODO send error
      return;
    }

    final lobby = lobbyFromSocket(socket);

    // only host can start
    if (socket != lobby.host) return;

    final players = <CommonWebSocket>[lobby.host];
    players.addAll(lobby.getReadyPlayers());

    // add bots
    while (players.length < 4) {
      final botSocket = BotSocket();
      SocketReceiver.handle(botSocket);
      players.add(botSocket);
    }

    final match = Match(players, false);

    for (var socket in lobby.players) {
      _lobbyBySocket.remove(socket);
    }
    _lobbyBySocket.remove(socket);

    for (var socket in players) {
      _matchBySocket[socket] = match;
      socket.send(SocketMessage_Type.MATCH_START);
    }
    _matchBySocket[socket] = match;

    lobby.host.send(SocketMessage_Type.MATCH_START);
    _lobbyBySocket.remove(lobby);
  }

  void matchDecline(CommonWebSocket socket) {
    // check if in lobby and in not in a match
    if (!socketInLobby(socket) || socketInMatch(socket)) {
      // TODO send error
      return;
    }

    final lobby = lobbyFromSocket(socket);
    lobby.declineInvite(socket);
    _lobbyBySocket.remove(socket);
  }

  void logout(CommonWebSocket socket) {
    // remove from lobby if exists
    if (socketInLobby(socket)) {
      final lobby = lobbyFromSocket(socket);
      lobby.declineInvite(socket);
      _lobbyBySocket.remove(socket);
    }

    // replace with bot
    if (socketInMatch(socket)) {
      final match = matchFromSocket(socket);
      _matchBySocket.remove(socket);

      // if there is currently 2 players, and replacing one with bot
      if (match.players.whereType<ServerWebSocket>().length <= 1) {
        // close game, no more players
        match.gameEnded = true;
        _matchBySocket.removeWhere((ws, _match) => _match == match);
        print('closed game');
        return;
      }

      final botSocket = BotSocket();
      SocketReceiver.handle(botSocket);
      _matchBySocket[botSocket] = match;

      final indexOfPlayer = match.players.indexOf(socket);

      if (indexOfPlayer == -1) return;

      match.players[indexOfPlayer] = botSocket;
      match.hands[botSocket] = match.hands[socket];
      match.hands.remove(socket);
      match.topTowers[botSocket] = match.topTowers[socket];
      match.topTowers.remove(socket);
      match.bottomTowers[botSocket] = match.bottomTowers[socket];
      match.bottomTowers.remove(socket);

      if (match.activePlayer != socket) return;

      match.startPlayerTurn(botSocket);
    }
  }
}
