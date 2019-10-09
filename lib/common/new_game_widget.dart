import 'package:flutter/material.dart';
import 'package:posegal/common/search_back_nav.dart';
import 'package:posegal/common/search_bar_widget.dart';
import 'package:posegal/models/new_games.dart';
import 'package:posegal/styleguide/colors.dart';
import 'package:posegal/styleguide/text_styles.dart';

import '../image_asset.dart';

class NewGameWidget extends StatelessWidget {
  final NewGamesList newGamesList;
  const NewGameWidget({Key key, this.newGamesList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset(
            newGamesList.imagePath,
            height: 400,
            fit: BoxFit.fitHeight,
          ),
          Container(
            color: Colors.grey.withOpacity(0.2),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              // This is for the SearchBarWidget
              // SearchBarWidget(),
              SearchBackWidget(),
              Spacer(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Column(
                    children: <Widget>[
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(text: "NEW GAME", style: newGameTextStyle),
                            TextSpan(text: "\n"),
                            TextSpan(
                                text: newGamesList.gameTitle,
                                style: newGameNameTextStyle),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: null,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 32),
                          child: Text(
                            'Play',
                            style: newGameTextStyle,
                          ),
                          decoration: BoxDecoration(
                            gradient: appGradient,
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
