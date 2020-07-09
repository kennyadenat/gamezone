import "package:flutter/material.dart";

import '../image_asset.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Image.asset(
              welcome,
              height: 400,
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
