import '../image_asset.dart';

class Stocks {
  final String name;
  final int hoursPlayed;
  final String imagePath;
  final String amount;
  final double gameProgress;

  const Stocks(
      {this.name, this.hoursPlayed, this.imagePath, this.gameProgress, this.amount});
}

final stocks = [
  Stocks(
      name: "Microsoft",
      hoursPlayed: 102,
      gameProgress: 0.20,
      amount: "\$325.20",
      imagePath: mic),
  Stocks(
      name: "Twitter",
      hoursPlayed: 50,
      gameProgress: 0.80,
      amount: "\$125.00",
      imagePath: twitter),
  Stocks(
      name: "Tesla",
      hoursPlayed: 900,
      gameProgress: 0.95,
      amount: "\$505.20",
      imagePath: tsla),
  Stocks(
      name: "Nike",
      hoursPlayed: 32,
      gameProgress: 0.40,
      amount: "\$225.45",
      imagePath: nike),
  Stocks(
      name: "Amazon",
      hoursPlayed: 83,
      gameProgress: 0.40,
      amount: "\$725.10",
      imagePath: amazon),
  Stocks(
      name: "Facebook",
      hoursPlayed: 100,
      gameProgress: 0.40,
      amount: "\$500.87",
      imagePath: fb),
];
