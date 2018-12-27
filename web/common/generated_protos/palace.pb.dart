///
//  Generated code. Do not modify.
//  source: palace.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'palace.pbenum.dart';

export 'palace.pbenum.dart';

class Card extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Card', package: const $pb.PackageName('palace'))
    ..e<Card_Type>(1, 'type', $pb.PbFieldType.OE, Card_Type.BASIC, Card_Type.valueOf, Card_Type.values)
    ..aOS(2, 'id')
    ..a<int>(3, 'value', $pb.PbFieldType.O3)
    ..aOB(4, 'hidden')
    ..a<int>(5, 'playerIndex', $pb.PbFieldType.O3)
    ..aOB(6, 'activated')
    ..hasRequiredFields = false
  ;

  Card() : super();
  Card.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Card.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Card clone() => new Card()..mergeFromMessage(this);
  Card copyWith(void Function(Card) updates) => super.copyWith((message) => updates(message as Card));
  $pb.BuilderInfo get info_ => _i;
  static Card create() => new Card();
  static $pb.PbList<Card> createRepeated() => new $pb.PbList<Card>();
  static Card getDefault() => _defaultInstance ??= create()..freeze();
  static Card _defaultInstance;
  static void $checkItem(Card v) {
    if (v is! Card) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Card_Type get type => $_getN(0);
  set type(Card_Type v) { setField(1, v); }
  bool hasType() => $_has(0);
  void clearType() => clearField(1);

  String get id => $_getS(1, '');
  set id(String v) { $_setString(1, v); }
  bool hasId() => $_has(1);
  void clearId() => clearField(2);

  int get value => $_get(2, 0);
  set value(int v) { $_setSignedInt32(2, v); }
  bool hasValue() => $_has(2);
  void clearValue() => clearField(3);

  bool get hidden => $_get(3, false);
  set hidden(bool v) { $_setBool(3, v); }
  bool hasHidden() => $_has(3);
  void clearHidden() => clearField(4);

  int get playerIndex => $_get(4, 0);
  set playerIndex(int v) { $_setSignedInt32(4, v); }
  bool hasPlayerIndex() => $_has(4);
  void clearPlayerIndex() => clearField(5);

  bool get activated => $_get(5, false);
  set activated(bool v) { $_setBool(5, v); }
  bool hasActivated() => $_has(5);
  void clearActivated() => clearField(6);
}

class Tower extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Tower', package: const $pb.PackageName('palace'))
    ..pp<Card>(1, 'cards', $pb.PbFieldType.PM, Card.$checkItem, Card.create)
    ..hasRequiredFields = false
  ;

  Tower() : super();
  Tower.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Tower.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Tower clone() => new Tower()..mergeFromMessage(this);
  Tower copyWith(void Function(Tower) updates) => super.copyWith((message) => updates(message as Tower));
  $pb.BuilderInfo get info_ => _i;
  static Tower create() => new Tower();
  static $pb.PbList<Tower> createRepeated() => new $pb.PbList<Tower>();
  static Tower getDefault() => _defaultInstance ??= create()..freeze();
  static Tower _defaultInstance;
  static void $checkItem(Tower v) {
    if (v is! Tower) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Card> get cards => $_getList(0);
}

class CardIDs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CardIDs', package: const $pb.PackageName('palace'))
    ..pPS(1, 'ids')
    ..hasRequiredFields = false
  ;

  CardIDs() : super();
  CardIDs.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CardIDs.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CardIDs clone() => new CardIDs()..mergeFromMessage(this);
  CardIDs copyWith(void Function(CardIDs) updates) => super.copyWith((message) => updates(message as CardIDs));
  $pb.BuilderInfo get info_ => _i;
  static CardIDs create() => new CardIDs();
  static $pb.PbList<CardIDs> createRepeated() => new $pb.PbList<CardIDs>();
  static CardIDs getDefault() => _defaultInstance ??= create()..freeze();
  static CardIDs _defaultInstance;
  static void $checkItem(CardIDs v) {
    if (v is! CardIDs) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<String> get ids => $_getList(0);
}

class HigherLowerChoice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('HigherLowerChoice', package: const $pb.PackageName('palace'))
    ..e<HigherLowerChoice_Type>(1, 'choice', $pb.PbFieldType.OE, HigherLowerChoice_Type.HIGHER, HigherLowerChoice_Type.valueOf, HigherLowerChoice_Type.values)
    ..a<int>(2, 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  HigherLowerChoice() : super();
  HigherLowerChoice.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  HigherLowerChoice.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  HigherLowerChoice clone() => new HigherLowerChoice()..mergeFromMessage(this);
  HigherLowerChoice copyWith(void Function(HigherLowerChoice) updates) => super.copyWith((message) => updates(message as HigherLowerChoice));
  $pb.BuilderInfo get info_ => _i;
  static HigherLowerChoice create() => new HigherLowerChoice();
  static $pb.PbList<HigherLowerChoice> createRepeated() => new $pb.PbList<HigherLowerChoice>();
  static HigherLowerChoice getDefault() => _defaultInstance ??= create()..freeze();
  static HigherLowerChoice _defaultInstance;
  static void $checkItem(HigherLowerChoice v) {
    if (v is! HigherLowerChoice) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  HigherLowerChoice_Type get choice => $_getN(0);
  set choice(HigherLowerChoice_Type v) { setField(1, v); }
  bool hasChoice() => $_has(0);
  void clearChoice() => clearField(1);

  int get value => $_get(1, 0);
  set value(int v) { $_setSignedInt32(1, v); }
  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);
}

class DealTowerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DealTowerInfo', package: const $pb.PackageName('palace'))
    ..pp<Tower>(1, 'topTowers', $pb.PbFieldType.PM, Tower.$checkItem, Tower.create)
    ..pp<Tower>(2, 'bottomTowers', $pb.PbFieldType.PM, Tower.$checkItem, Tower.create)
    ..hasRequiredFields = false
  ;

  DealTowerInfo() : super();
  DealTowerInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DealTowerInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DealTowerInfo clone() => new DealTowerInfo()..mergeFromMessage(this);
  DealTowerInfo copyWith(void Function(DealTowerInfo) updates) => super.copyWith((message) => updates(message as DealTowerInfo));
  $pb.BuilderInfo get info_ => _i;
  static DealTowerInfo create() => new DealTowerInfo();
  static $pb.PbList<DealTowerInfo> createRepeated() => new $pb.PbList<DealTowerInfo>();
  static DealTowerInfo getDefault() => _defaultInstance ??= create()..freeze();
  static DealTowerInfo _defaultInstance;
  static void $checkItem(DealTowerInfo v) {
    if (v is! DealTowerInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Tower> get topTowers => $_getList(0);

  List<Tower> get bottomTowers => $_getList(1);
}

class SecondDealTowerInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('SecondDealTowerInfo', package: const $pb.PackageName('palace'))
    ..pp<Tower>(1, 'topTowers', $pb.PbFieldType.PM, Tower.$checkItem, Tower.create)
    ..hasRequiredFields = false
  ;

  SecondDealTowerInfo() : super();
  SecondDealTowerInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SecondDealTowerInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SecondDealTowerInfo clone() => new SecondDealTowerInfo()..mergeFromMessage(this);
  SecondDealTowerInfo copyWith(void Function(SecondDealTowerInfo) updates) => super.copyWith((message) => updates(message as SecondDealTowerInfo));
  $pb.BuilderInfo get info_ => _i;
  static SecondDealTowerInfo create() => new SecondDealTowerInfo();
  static $pb.PbList<SecondDealTowerInfo> createRepeated() => new $pb.PbList<SecondDealTowerInfo>();
  static SecondDealTowerInfo getDefault() => _defaultInstance ??= create()..freeze();
  static SecondDealTowerInfo _defaultInstance;
  static void $checkItem(SecondDealTowerInfo v) {
    if (v is! SecondDealTowerInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Tower> get topTowers => $_getList(0);
}

class PlayFromHandInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PlayFromHandInfo', package: const $pb.PackageName('palace'))
    ..a<int>(1, 'userIndex', $pb.PbFieldType.O3)
    ..pp<Card>(2, 'cards', $pb.PbFieldType.PM, Card.$checkItem, Card.create)
    ..hasRequiredFields = false
  ;

  PlayFromHandInfo() : super();
  PlayFromHandInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PlayFromHandInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PlayFromHandInfo clone() => new PlayFromHandInfo()..mergeFromMessage(this);
  PlayFromHandInfo copyWith(void Function(PlayFromHandInfo) updates) => super.copyWith((message) => updates(message as PlayFromHandInfo));
  $pb.BuilderInfo get info_ => _i;
  static PlayFromHandInfo create() => new PlayFromHandInfo();
  static $pb.PbList<PlayFromHandInfo> createRepeated() => new $pb.PbList<PlayFromHandInfo>();
  static PlayFromHandInfo getDefault() => _defaultInstance ??= create()..freeze();
  static PlayFromHandInfo _defaultInstance;
  static void $checkItem(PlayFromHandInfo v) {
    if (v is! PlayFromHandInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get userIndex => $_get(0, 0);
  set userIndex(int v) { $_setSignedInt32(0, v); }
  bool hasUserIndex() => $_has(0);
  void clearUserIndex() => clearField(1);

  List<Card> get cards => $_getList(1);
}

class DiscardInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DiscardInfo', package: const $pb.PackageName('palace'))
    ..pp<Card>(1, 'cards', $pb.PbFieldType.PM, Card.$checkItem, Card.create)
    ..hasRequiredFields = false
  ;

  DiscardInfo() : super();
  DiscardInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DiscardInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DiscardInfo clone() => new DiscardInfo()..mergeFromMessage(this);
  DiscardInfo copyWith(void Function(DiscardInfo) updates) => super.copyWith((message) => updates(message as DiscardInfo));
  $pb.BuilderInfo get info_ => _i;
  static DiscardInfo create() => new DiscardInfo();
  static $pb.PbList<DiscardInfo> createRepeated() => new $pb.PbList<DiscardInfo>();
  static DiscardInfo getDefault() => _defaultInstance ??= create()..freeze();
  static DiscardInfo _defaultInstance;
  static void $checkItem(DiscardInfo v) {
    if (v is! DiscardInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Card> get cards => $_getList(0);
}

class DrawInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DrawInfo', package: const $pb.PackageName('palace'))
    ..a<int>(1, 'userIndex', $pb.PbFieldType.O3)
    ..pp<Card>(2, 'cards', $pb.PbFieldType.PM, Card.$checkItem, Card.create)
    ..hasRequiredFields = false
  ;

  DrawInfo() : super();
  DrawInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DrawInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DrawInfo clone() => new DrawInfo()..mergeFromMessage(this);
  DrawInfo copyWith(void Function(DrawInfo) updates) => super.copyWith((message) => updates(message as DrawInfo));
  $pb.BuilderInfo get info_ => _i;
  static DrawInfo create() => new DrawInfo();
  static $pb.PbList<DrawInfo> createRepeated() => new $pb.PbList<DrawInfo>();
  static DrawInfo getDefault() => _defaultInstance ??= create()..freeze();
  static DrawInfo _defaultInstance;
  static void $checkItem(DrawInfo v) {
    if (v is! DrawInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get userIndex => $_get(0, 0);
  set userIndex(int v) { $_setSignedInt32(0, v); }
  bool hasUserIndex() => $_has(0);
  void clearUserIndex() => clearField(1);

  List<Card> get cards => $_getList(1);
}

class PickUpPileInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PickUpPileInfo', package: const $pb.PackageName('palace'))
    ..a<int>(1, 'userIndex', $pb.PbFieldType.O3)
    ..pp<Card>(2, 'cards', $pb.PbFieldType.PM, Card.$checkItem, Card.create)
    ..hasRequiredFields = false
  ;

  PickUpPileInfo() : super();
  PickUpPileInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PickUpPileInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PickUpPileInfo clone() => new PickUpPileInfo()..mergeFromMessage(this);
  PickUpPileInfo copyWith(void Function(PickUpPileInfo) updates) => super.copyWith((message) => updates(message as PickUpPileInfo));
  $pb.BuilderInfo get info_ => _i;
  static PickUpPileInfo create() => new PickUpPileInfo();
  static $pb.PbList<PickUpPileInfo> createRepeated() => new $pb.PbList<PickUpPileInfo>();
  static PickUpPileInfo getDefault() => _defaultInstance ??= create()..freeze();
  static PickUpPileInfo _defaultInstance;
  static void $checkItem(PickUpPileInfo v) {
    if (v is! PickUpPileInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get userIndex => $_get(0, 0);
  set userIndex(int v) { $_setSignedInt32(0, v); }
  bool hasUserIndex() => $_has(0);
  void clearUserIndex() => clearField(1);

  List<Card> get cards => $_getList(1);
}

class Hand extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Hand', package: const $pb.PackageName('palace'))
    ..pp<Card>(1, 'cards', $pb.PbFieldType.PM, Card.$checkItem, Card.create)
    ..hasRequiredFields = false
  ;

  Hand() : super();
  Hand.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Hand.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Hand clone() => new Hand()..mergeFromMessage(this);
  Hand copyWith(void Function(Hand) updates) => super.copyWith((message) => updates(message as Hand));
  $pb.BuilderInfo get info_ => _i;
  static Hand create() => new Hand();
  static $pb.PbList<Hand> createRepeated() => new $pb.PbList<Hand>();
  static Hand getDefault() => _defaultInstance ??= create()..freeze();
  static Hand _defaultInstance;
  static void $checkItem(Hand v) {
    if (v is! Hand) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Card> get cards => $_getList(0);
}

class TowerCardsToHandInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TowerCardsToHandInfo', package: const $pb.PackageName('palace'))
    ..a<int>(1, 'userIndex', $pb.PbFieldType.O3)
    ..pPS(2, 'cardIDs')
    ..hasRequiredFields = false
  ;

  TowerCardsToHandInfo() : super();
  TowerCardsToHandInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TowerCardsToHandInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TowerCardsToHandInfo clone() => new TowerCardsToHandInfo()..mergeFromMessage(this);
  TowerCardsToHandInfo copyWith(void Function(TowerCardsToHandInfo) updates) => super.copyWith((message) => updates(message as TowerCardsToHandInfo));
  $pb.BuilderInfo get info_ => _i;
  static TowerCardsToHandInfo create() => new TowerCardsToHandInfo();
  static $pb.PbList<TowerCardsToHandInfo> createRepeated() => new $pb.PbList<TowerCardsToHandInfo>();
  static TowerCardsToHandInfo getDefault() => _defaultInstance ??= create()..freeze();
  static TowerCardsToHandInfo _defaultInstance;
  static void $checkItem(TowerCardsToHandInfo v) {
    if (v is! TowerCardsToHandInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get userIndex => $_get(0, 0);
  set userIndex(int v) { $_setSignedInt32(0, v); }
  bool hasUserIndex() => $_has(0);
  void clearUserIndex() => clearField(1);

  List<String> get cardIDs => $_getList(1);
}

class FinalDealInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('FinalDealInfo', package: const $pb.PackageName('palace'))
    ..pp<Hand>(1, 'hands', $pb.PbFieldType.PM, Hand.$checkItem, Hand.create)
    ..hasRequiredFields = false
  ;

  FinalDealInfo() : super();
  FinalDealInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  FinalDealInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  FinalDealInfo clone() => new FinalDealInfo()..mergeFromMessage(this);
  FinalDealInfo copyWith(void Function(FinalDealInfo) updates) => super.copyWith((message) => updates(message as FinalDealInfo));
  $pb.BuilderInfo get info_ => _i;
  static FinalDealInfo create() => new FinalDealInfo();
  static $pb.PbList<FinalDealInfo> createRepeated() => new $pb.PbList<FinalDealInfo>();
  static FinalDealInfo getDefault() => _defaultInstance ??= create()..freeze();
  static FinalDealInfo _defaultInstance;
  static void $checkItem(FinalDealInfo v) {
    if (v is! FinalDealInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Hand> get hands => $_getList(0);
}

class TopSwapInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('TopSwapInfo', package: const $pb.PackageName('palace'))
    ..a<Card>(1, 'card1', $pb.PbFieldType.OM, Card.getDefault, Card.create)
    ..a<Card>(2, 'card2', $pb.PbFieldType.OM, Card.getDefault, Card.create)
    ..hasRequiredFields = false
  ;

  TopSwapInfo() : super();
  TopSwapInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  TopSwapInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  TopSwapInfo clone() => new TopSwapInfo()..mergeFromMessage(this);
  TopSwapInfo copyWith(void Function(TopSwapInfo) updates) => super.copyWith((message) => updates(message as TopSwapInfo));
  $pb.BuilderInfo get info_ => _i;
  static TopSwapInfo create() => new TopSwapInfo();
  static $pb.PbList<TopSwapInfo> createRepeated() => new $pb.PbList<TopSwapInfo>();
  static TopSwapInfo getDefault() => _defaultInstance ??= create()..freeze();
  static TopSwapInfo _defaultInstance;
  static void $checkItem(TopSwapInfo v) {
    if (v is! TopSwapInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Card get card1 => $_getN(0);
  set card1(Card v) { setField(1, v); }
  bool hasCard1() => $_has(0);
  void clearCard1() => clearField(1);

  Card get card2 => $_getN(1);
  set card2(Card v) { setField(2, v); }
  bool hasCard2() => $_has(1);
  void clearCard2() => clearField(2);
}

class HandSwapInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('HandSwapInfo', package: const $pb.PackageName('palace'))
    ..a<int>(1, 'userIndex1', $pb.PbFieldType.O3)
    ..a<int>(2, 'userIndex2', $pb.PbFieldType.O3)
    ..pp<Card>(3, 'cards1', $pb.PbFieldType.PM, Card.$checkItem, Card.create)
    ..pp<Card>(4, 'cards2', $pb.PbFieldType.PM, Card.$checkItem, Card.create)
    ..hasRequiredFields = false
  ;

  HandSwapInfo() : super();
  HandSwapInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  HandSwapInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  HandSwapInfo clone() => new HandSwapInfo()..mergeFromMessage(this);
  HandSwapInfo copyWith(void Function(HandSwapInfo) updates) => super.copyWith((message) => updates(message as HandSwapInfo));
  $pb.BuilderInfo get info_ => _i;
  static HandSwapInfo create() => new HandSwapInfo();
  static $pb.PbList<HandSwapInfo> createRepeated() => new $pb.PbList<HandSwapInfo>();
  static HandSwapInfo getDefault() => _defaultInstance ??= create()..freeze();
  static HandSwapInfo _defaultInstance;
  static void $checkItem(HandSwapInfo v) {
    if (v is! HandSwapInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get userIndex1 => $_get(0, 0);
  set userIndex1(int v) { $_setSignedInt32(0, v); }
  bool hasUserIndex1() => $_has(0);
  void clearUserIndex1() => clearField(1);

  int get userIndex2 => $_get(1, 0);
  set userIndex2(int v) { $_setSignedInt32(1, v); }
  bool hasUserIndex2() => $_has(1);
  void clearUserIndex2() => clearField(2);

  List<Card> get cards1 => $_getList(2);

  List<Card> get cards2 => $_getList(3);
}

class LoginCredentials extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('LoginCredentials', package: const $pb.PackageName('palace'))
    ..aOS(1, 'userID')
    ..aOS(2, 'passCode')
    ..hasRequiredFields = false
  ;

  LoginCredentials() : super();
  LoginCredentials.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LoginCredentials.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LoginCredentials clone() => new LoginCredentials()..mergeFromMessage(this);
  LoginCredentials copyWith(void Function(LoginCredentials) updates) => super.copyWith((message) => updates(message as LoginCredentials));
  $pb.BuilderInfo get info_ => _i;
  static LoginCredentials create() => new LoginCredentials();
  static $pb.PbList<LoginCredentials> createRepeated() => new $pb.PbList<LoginCredentials>();
  static LoginCredentials getDefault() => _defaultInstance ??= create()..freeze();
  static LoginCredentials _defaultInstance;
  static void $checkItem(LoginCredentials v) {
    if (v is! LoginCredentials) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);

  String get passCode => $_getS(1, '');
  set passCode(String v) { $_setString(1, v); }
  bool hasPassCode() => $_has(1);
  void clearPassCode() => clearField(2);
}

class LobbyInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('LobbyInfo', package: const $pb.PackageName('palace'))
    ..aOS(1, 'host')
    ..pp<PlayerEntry>(2, 'players', $pb.PbFieldType.PM, PlayerEntry.$checkItem, PlayerEntry.create)
    ..aOB(3, 'canStart')
    ..aOB(4, 'canJoin')
    ..hasRequiredFields = false
  ;

  LobbyInfo() : super();
  LobbyInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LobbyInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LobbyInfo clone() => new LobbyInfo()..mergeFromMessage(this);
  LobbyInfo copyWith(void Function(LobbyInfo) updates) => super.copyWith((message) => updates(message as LobbyInfo));
  $pb.BuilderInfo get info_ => _i;
  static LobbyInfo create() => new LobbyInfo();
  static $pb.PbList<LobbyInfo> createRepeated() => new $pb.PbList<LobbyInfo>();
  static LobbyInfo getDefault() => _defaultInstance ??= create()..freeze();
  static LobbyInfo _defaultInstance;
  static void $checkItem(LobbyInfo v) {
    if (v is! LobbyInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get host => $_getS(0, '');
  set host(String v) { $_setString(0, v); }
  bool hasHost() => $_has(0);
  void clearHost() => clearField(1);

  List<PlayerEntry> get players => $_getList(1);

  bool get canStart => $_get(2, false);
  set canStart(bool v) { $_setBool(2, v); }
  bool hasCanStart() => $_has(2);
  void clearCanStart() => clearField(3);

  bool get canJoin => $_get(3, false);
  set canJoin(bool v) { $_setBool(3, v); }
  bool hasCanJoin() => $_has(3);
  void clearCanJoin() => clearField(4);
}

class PlayerEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PlayerEntry', package: const $pb.PackageName('palace'))
    ..aOS(1, 'userID')
    ..aOB(2, 'ready')
    ..hasRequiredFields = false
  ;

  PlayerEntry() : super();
  PlayerEntry.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PlayerEntry.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PlayerEntry clone() => new PlayerEntry()..mergeFromMessage(this);
  PlayerEntry copyWith(void Function(PlayerEntry) updates) => super.copyWith((message) => updates(message as PlayerEntry));
  $pb.BuilderInfo get info_ => _i;
  static PlayerEntry create() => new PlayerEntry();
  static $pb.PbList<PlayerEntry> createRepeated() => new $pb.PbList<PlayerEntry>();
  static PlayerEntry getDefault() => _defaultInstance ??= create()..freeze();
  static PlayerEntry _defaultInstance;
  static void $checkItem(PlayerEntry v) {
    if (v is! PlayerEntry) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);

  bool get ready => $_get(1, false);
  set ready(bool v) { $_setBool(1, v); }
  bool hasReady() => $_has(1);
  void clearReady() => clearField(2);
}

class UserIDs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UserIDs', package: const $pb.PackageName('palace'))
    ..pPS(1, 'ids')
    ..hasRequiredFields = false
  ;

  UserIDs() : super();
  UserIDs.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UserIDs.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UserIDs clone() => new UserIDs()..mergeFromMessage(this);
  UserIDs copyWith(void Function(UserIDs) updates) => super.copyWith((message) => updates(message as UserIDs));
  $pb.BuilderInfo get info_ => _i;
  static UserIDs create() => new UserIDs();
  static $pb.PbList<UserIDs> createRepeated() => new $pb.PbList<UserIDs>();
  static UserIDs getDefault() => _defaultInstance ??= create()..freeze();
  static UserIDs _defaultInstance;
  static void $checkItem(UserIDs v) {
    if (v is! UserIDs) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<String> get ids => $_getList(0);
}

class SimpleInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('SimpleInfo', package: const $pb.PackageName('palace'))
    ..aOS(1, 'info')
    ..hasRequiredFields = false
  ;

  SimpleInfo() : super();
  SimpleInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SimpleInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SimpleInfo clone() => new SimpleInfo()..mergeFromMessage(this);
  SimpleInfo copyWith(void Function(SimpleInfo) updates) => super.copyWith((message) => updates(message as SimpleInfo));
  $pb.BuilderInfo get info_ => _i;
  static SimpleInfo create() => new SimpleInfo();
  static $pb.PbList<SimpleInfo> createRepeated() => new $pb.PbList<SimpleInfo>();
  static SimpleInfo getDefault() => _defaultInstance ??= create()..freeze();
  static SimpleInfo _defaultInstance;
  static void $checkItem(SimpleInfo v) {
    if (v is! SimpleInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get info => $_getS(0, '');
  set info(String v) { $_setString(0, v); }
  bool hasInfo() => $_has(0);
  void clearInfo() => clearField(1);
}

class SocketMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('SocketMessage', package: const $pb.PackageName('palace'))
    ..e<SocketMessage_Type>(1, 'type', $pb.PbFieldType.OE, SocketMessage_Type.ERROR, SocketMessage_Type.valueOf, SocketMessage_Type.values)
    ..aOS(2, 'json')
    ..hasRequiredFields = false
  ;

  SocketMessage() : super();
  SocketMessage.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SocketMessage.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SocketMessage clone() => new SocketMessage()..mergeFromMessage(this);
  SocketMessage copyWith(void Function(SocketMessage) updates) => super.copyWith((message) => updates(message as SocketMessage));
  $pb.BuilderInfo get info_ => _i;
  static SocketMessage create() => new SocketMessage();
  static $pb.PbList<SocketMessage> createRepeated() => new $pb.PbList<SocketMessage>();
  static SocketMessage getDefault() => _defaultInstance ??= create()..freeze();
  static SocketMessage _defaultInstance;
  static void $checkItem(SocketMessage v) {
    if (v is! SocketMessage) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  SocketMessage_Type get type => $_getN(0);
  set type(SocketMessage_Type v) { setField(1, v); }
  bool hasType() => $_has(0);
  void clearType() => clearField(1);

  String get json => $_getS(1, '');
  set json(String v) { $_setString(1, v); }
  bool hasJson() => $_has(1);
  void clearJson() => clearField(2);
}

class ActivePlayerIndex extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ActivePlayerIndex', package: const $pb.PackageName('palace'))
    ..a<int>(1, 'index', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ActivePlayerIndex() : super();
  ActivePlayerIndex.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ActivePlayerIndex.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ActivePlayerIndex clone() => new ActivePlayerIndex()..mergeFromMessage(this);
  ActivePlayerIndex copyWith(void Function(ActivePlayerIndex) updates) => super.copyWith((message) => updates(message as ActivePlayerIndex));
  $pb.BuilderInfo get info_ => _i;
  static ActivePlayerIndex create() => new ActivePlayerIndex();
  static $pb.PbList<ActivePlayerIndex> createRepeated() => new $pb.PbList<ActivePlayerIndex>();
  static ActivePlayerIndex getDefault() => _defaultInstance ??= create()..freeze();
  static ActivePlayerIndex _defaultInstance;
  static void $checkItem(ActivePlayerIndex v) {
    if (v is! ActivePlayerIndex) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get index => $_get(0, 0);
  set index(int v) { $_setSignedInt32(0, v); }
  bool hasIndex() => $_has(0);
  void clearIndex() => clearField(1);
}

class FriendItemInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('FriendItemInfo', package: const $pb.PackageName('palace'))
    ..aOS(1, 'userID')
    ..aOB(2, 'online')
    ..aOB(3, 'invitable')
    ..aOS(4, 'statusText')
    ..aOS(5, 'color')
    ..hasRequiredFields = false
  ;

  FriendItemInfo() : super();
  FriendItemInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  FriendItemInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  FriendItemInfo clone() => new FriendItemInfo()..mergeFromMessage(this);
  FriendItemInfo copyWith(void Function(FriendItemInfo) updates) => super.copyWith((message) => updates(message as FriendItemInfo));
  $pb.BuilderInfo get info_ => _i;
  static FriendItemInfo create() => new FriendItemInfo();
  static $pb.PbList<FriendItemInfo> createRepeated() => new $pb.PbList<FriendItemInfo>();
  static FriendItemInfo getDefault() => _defaultInstance ??= create()..freeze();
  static FriendItemInfo _defaultInstance;
  static void $checkItem(FriendItemInfo v) {
    if (v is! FriendItemInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);

  bool get online => $_get(1, false);
  set online(bool v) { $_setBool(1, v); }
  bool hasOnline() => $_has(1);
  void clearOnline() => clearField(2);

  bool get invitable => $_get(2, false);
  set invitable(bool v) { $_setBool(2, v); }
  bool hasInvitable() => $_has(2);
  void clearInvitable() => clearField(3);

  String get statusText => $_getS(3, '');
  set statusText(String v) { $_setString(3, v); }
  bool hasStatusText() => $_has(3);
  void clearStatusText() => clearField(4);

  String get color => $_getS(4, '');
  set color(String v) { $_setString(4, v); }
  bool hasColor() => $_has(4);
  void clearColor() => clearField(5);
}

class RequestHigherLowerChoiceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('RequestHigherLowerChoiceInfo', package: const $pb.PackageName('palace'))
    ..a<int>(1, 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RequestHigherLowerChoiceInfo() : super();
  RequestHigherLowerChoiceInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  RequestHigherLowerChoiceInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  RequestHigherLowerChoiceInfo clone() => new RequestHigherLowerChoiceInfo()..mergeFromMessage(this);
  RequestHigherLowerChoiceInfo copyWith(void Function(RequestHigherLowerChoiceInfo) updates) => super.copyWith((message) => updates(message as RequestHigherLowerChoiceInfo));
  $pb.BuilderInfo get info_ => _i;
  static RequestHigherLowerChoiceInfo create() => new RequestHigherLowerChoiceInfo();
  static $pb.PbList<RequestHigherLowerChoiceInfo> createRepeated() => new $pb.PbList<RequestHigherLowerChoiceInfo>();
  static RequestHigherLowerChoiceInfo getDefault() => _defaultInstance ??= create()..freeze();
  static RequestHigherLowerChoiceInfo _defaultInstance;
  static void $checkItem(RequestHigherLowerChoiceInfo v) {
    if (v is! RequestHigherLowerChoiceInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get value => $_get(0, 0);
  set value(int v) { $_setSignedInt32(0, v); }
  bool hasValue() => $_has(0);
  void clearValue() => clearField(1);
}
