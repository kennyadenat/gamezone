import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      index: 0,
      height: 50.0,
      items: <Widget>[
        Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.search,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.perm_identity,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.favorite,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.card_giftcard,
          size: 30,
          color: Colors.white,
        ),
      ],
      color: Colors.amber[500],
      buttonBackgroundColor: Colors.amber[500],
      backgroundColor: Colors.white,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 600),
      onTap: (index) {
        setState(() {
          _page = index;
        });
      },
    );
  }
}
