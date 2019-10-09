import 'package:flutter/material.dart';
import 'package:posegal/common/new_game_widget.dart';
import 'package:posegal/models/new_games.dart';
import 'package:posegal/styleguide/colors.dart';
import 'package:posegal/styleguide/text_styles.dart';

import '../image_asset.dart';

class SecondaryPage extends StatelessWidget {
  const SecondaryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 4,
              child: PageView(
                children: [
                  for (var i = 0; i < newGamesList.length; i++)
                    NewGameWidget(newGamesList: newGamesList[i]),
                ],
              )),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.orangeAccent,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.cyan,
            ),
          ),
        ],
      ),
    );
  }
}
