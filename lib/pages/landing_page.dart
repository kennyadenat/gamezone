import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:posegal/common/content_heading_widget.dart';
import 'package:posegal/common/last_played_game_tile_widget.dart';
import 'package:posegal/common/rounded_image_widget.dart';
import 'package:posegal/common/tap_bottom_widget.dart';
import 'package:posegal/models/friends.dart';
import 'package:posegal/models/last_played_game.dart';
import 'package:posegal/pages/secondary_page.dart';
import 'package:posegal/styleguide/colors.dart';
import 'package:posegal/styleguide/text_styles.dart';

import '../image_asset.dart';

class Landingpage extends StatefulWidget {
  @override
  _LandingpageState createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  double _bottomSheetBottomPosition = -400;
  bool isCollapsed = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenHeight * 0.4;

    var logo2 = logo;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(screenWidth * 0.5, 10.0),
            child: Transform.rotate(
              angle: -0.1,
              child: SvgPicture.asset(
                logo2,
                height: logoHeight,
                color: logoTintColor,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondaryPage(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.menu,
                          color: primaryTextColor,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: primaryTextColor,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                  child: Column(
                    // This shows where the items in a column ought to start
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 18.0, horizontal: 8.0),
                        child: Row(
                          children: <Widget>[
                            RoundedImageWidget(
                                imagePath: player1,
                                isOnline: true,
                                showRanking: true,
                                ranking: 42),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'Hello',
                                        style: userNameTextStyle),
                                    TextSpan(text: '\n'),
                                    TextSpan(
                                        text: 'Jon Snow',
                                        style: userNameTextStyle)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 8.0, bottom: 16.0, top: 16.0),
                          child: Material(
                            elevation: 4,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0,
                                    right: 16.0,
                                    top: 16.0,
                                    bottom: 32.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'HOURS PLAYED',
                                          style: hoursPlayedLabelTextStyle,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 7),
                                    Text("297 Hours",
                                        style: hoursPlayedTextStyle)
                                  ],
                                )),
                          )),
                      ContentHeadingWidget(heading: 'Last Played Game'),
                      for (var i = 0; i < lastPlayedGames.length; i++)
                        LastPlayedGameTile(
                          lastPlayedGame: lastPlayedGames[i],
                          screenWidth: screenWidth,
                          gameProgress: lastPlayedGames[i].gameProgress,
                        ),
                      ContentHeadingWidget(heading: 'Friend List'),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        for (var i = 0; i < friends.length; i++)
                          RoundedImageWidget(
                              imagePath: friends[i].imagePath,
                              isOnline: friends[i].isOnline,
                              showRanking: true,
                              name: friends[i].name,
                              ranking: friends[i].rank),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          TapBottomWidget()
        ],
      ),
    );
  }
}
