import 'package:flutter/material.dart';
import 'package:posegal/models/last_played_game.dart';
import 'package:posegal/styleguide/text_styles.dart';

import 'game_progess_widget.dart';

class LastPlayedGameTile extends StatelessWidget {
  final LastPlayedGame lastPlayedGame;
  final double screenWidth;
  final double gameProgress;
  const LastPlayedGameTile(
      {Key key, this.lastPlayedGame, this.screenWidth, this.gameProgress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          child: Image.asset(lastPlayedGame.imagePath,
                              height: 65, width: 50, fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        Positioned(
                          left: 8,
                          right: 8,
                          bottom: 0,
                          top: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: lastPlayedGame.name,
                                style: headingTwoTextStyle),
                            TextSpan(text: '\n'),
                            TextSpan(
                                text:
                                    '${lastPlayedGame.hoursPlayed} hours played',
                                style: bodyTextStyle)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GameProgressWidget(
                    gameProgress: gameProgress, screenWidth: screenWidth),
              )
            ]));
  }
}
