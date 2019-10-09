import 'package:flutter/material.dart';
import 'package:posegal/styleguide/colors.dart';
import 'package:posegal/styleguide/text_styles.dart';

class PopularWithFriends extends StatelessWidget {
  final String imagePath;
  const PopularWithFriends({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Image.asset(imagePath),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 20,
            right: 20,
            child: InkWell(
              onTap: null,
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.all(Radius.circular(4)),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Text(
                    'Play',
                    textAlign: TextAlign.center,
                    style: newGameTextStyle,
                  ),
                  decoration: BoxDecoration(
                    gradient: appGradient,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
