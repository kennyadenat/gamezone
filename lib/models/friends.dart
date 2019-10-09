import '../image_asset.dart';

class Friend {
  final String name;
  final String imagePath;
  final bool isOnline;
  final int rank;
  const Friend({this.name, this.imagePath, this.isOnline, this.rank});
}

final friends = [
  Friend(name: "Jennie", imagePath: friend_jeenie, isOnline: true, rank: 20),
  Friend(name: "Gena", imagePath: friend_gena, isOnline: false, rank: 45),
  Friend(
      name: "Michelle", imagePath: friend_michelle, isOnline: false, rank: 32),
  Friend(name: "Trish", imagePath: friend_trish, isOnline: false, rank: 61),
  Friend(name: "Kenny", imagePath: friend_kenny, isOnline: true, rank: 5),
  Friend(name: "Gena", imagePath: friend_gena, isOnline: false, rank: 45),
  Friend(
      name: "Michelle", imagePath: friend_michelle, isOnline: false, rank: 32),
];
