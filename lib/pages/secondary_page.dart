import 'package:flutter/material.dart';
import 'package:posegal/common/content_heading_widget.dart';
import 'package:posegal/common/new_game_widget.dart';
import 'package:posegal/models/last_played_game.dart';
import 'package:posegal/models/new_games.dart';
import 'package:posegal/models/popular_with_friends.dart';
import 'package:posegal/styleguide/colors.dart';
import 'package:posegal/styleguide/text_styles.dart';

class SecondaryPage extends StatelessWidget {
  const SecondaryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child:
                        ContentHeadingWidget(heading: 'Popular With Friends'),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          for (var i = 0; i < popularFriend.length; i++)
                            PopularWithFriends(imagePath: popularFriend[i])
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ContentHeadingWidget(heading: 'Continue Playing'),
                  ),
                  Expanded(
                      child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: screenHeight * 0.25,
                      decoration: BoxDecoration(
                        gradient: appGradient,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              ClipRRect(
                                child: Image.asset(
                                  lastPlayedGames[0].imagePath,
                                  height: screenHeight * 0.13,
                                  width: 80,
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              Positioned(
                                left: 25,
                                right: 25,
                                bottom: 0,
                                top: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
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
                                    text: lastPlayedGames[0].name,
                                    style: headingTwoTextStyle.copyWith(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  TextSpan(text: '\n'),
                                  TextSpan(
                                    text:
                                        '${lastPlayedGames[0].hoursPlayed} hours played',
                                    style: bodyTextStyle.copyWith(
                                      color: Colors.white,
                                      fontSize: 14,
                                      height: 1.5,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
