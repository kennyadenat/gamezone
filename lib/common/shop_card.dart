import 'package:flutter/material.dart';
import 'package:posegal/models/shops.dart';
import 'package:posegal/styleguide/text_styles.dart';

class ShopCard extends StatelessWidget {
  final Shops shops;

  const ShopCard({Key key, this.shops}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Material(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          child: Stack(
            children: <Widget>[
              Container(
                height: 270,
                width: 200,
                child: Image.asset(
                  shops.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 10.0,
                bottom: 8.0,
                right: 10.0,
                child: Material(
                  elevation: 12,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              shops.storeName,
                              style: shopCardTitle,
                            ),
                            Text(
                              shops.monthYear,
                              style: shopCardInfo,
                            ),
                          ],
                        ),
                        Material(
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              shops.discount,
                              style: shopCardDiscount,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
