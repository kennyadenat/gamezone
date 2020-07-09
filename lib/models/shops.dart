import '../image_asset.dart';

class Shops {
  final String imagePath, storeName, monthYear, discount, oldPrice, newPrice;
  Shops(
      {this.imagePath,
      this.storeName,
      this.monthYear,
      this.discount,
      this.oldPrice,
      this.newPrice});
}

final shopList = [
  Shops(
      imagePath: apple,
      storeName: 'Apple',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice: '4599',
      newPrice: '3799'),
  Shops(
      imagePath: camping,
      storeName: 'Labondy',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice: '4599',
      newPrice: '3799'),
  Shops(
      imagePath: lebon,
      storeName: 'Wardrobes',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice: '4599',
      newPrice: '3799'),
  Shops(
      imagePath: london,
      storeName: 'Wardrobes',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice: '4599',
      newPrice: '3799'),
  Shops(
      imagePath: luis,
      storeName: 'Luois Vutton',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice: '4599',
      newPrice: '3799'),
  Shops(
      imagePath: macy,
      storeName: 'Macy',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice: '4599',
      newPrice: '3799'),
  Shops(
      imagePath: paris,
      storeName: 'Channel',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice: '4599',
      newPrice: '3799'),
  Shops(
      imagePath: tulors,
      storeName: 'Marriot',
      monthYear: 'Feb 2019',
      discount: '45',
      oldPrice: '4599',
      newPrice: '3799')
];
