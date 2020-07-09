import 'package:flutter/material.dart';
import 'package:posegal/common/shop_card.dart';
import 'package:posegal/models/shops.dart';

class ShopWidget extends StatelessWidget {
  const ShopWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          for (var i = 0; i < shopList.length; i++)
            ShopCard(shops: shopList[i]),
        ],
      ),
    );
  }
}
