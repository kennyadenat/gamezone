import 'package:flutter/material.dart';
import 'package:posegal/common/bottom_nav_bar.dart';
import 'package:posegal/common/content_heading_widget.dart';
import 'package:posegal/common/hotel_screen_top.dart';
import 'package:posegal/common/shop_view_widget.dart';
import 'package:posegal/models/last_played_game.dart';
import 'package:posegal/styleguide/text_styles.dart';

class HotelLanding extends StatelessWidget {
  const HotelLanding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HotelScreenTop(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  ContentHeadingWidget(
                    heading: 'Popular Stores',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ShopWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  ContentHeadingWidget(
                    heading: 'Favorite Stores',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.amber[500],
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
                            height: 150,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        Positioned(
                          left: 25,
                          right: 25,
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
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  ContentHeadingWidget(
                    heading: 'People Recommended',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ShopWidget(),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
