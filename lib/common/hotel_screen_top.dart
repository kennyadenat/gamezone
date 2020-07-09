import 'package:flutter/material.dart';
import 'package:posegal/custom/custom_shape_clipper.dart';
import 'package:posegal/styleguide/text_styles.dart';

class HotelScreenTop extends StatefulWidget {
  HotelScreenTop({Key key}) : super(key: key);

  _HotelScreenTopState createState() => _HotelScreenTopState();
}

Color firstColor = Color(0xFFF47D15);
Color secondColor = Color(0xFFEF772C);
List<String> locations = ['Boston (BOS)', 'New York City(JFK)'];

class _HotelScreenTopState extends State<HotelScreenTop> {
  var selectedLocationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 400,
            color: Colors.amber[500],
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Text(
                        'Locations',
                        style: dropDownMenuLabel,
                      )
                      // SizedBox(
                      //   width: 20,
                      // ),
                      // PopupMenuButton(
                      //   onSelected: (index) {
                      //     setState(() {
                      //       selectedLocationIndex = index;
                      //     });
                      //   },
                      //   child: Row(
                      //     children: <Widget>[
                      //       Text(
                      //         locations[selectedLocationIndex],
                      //         style: dropDownMenuLabel,
                      //       ),
                      //       Icon(
                      //         Icons.arrow_drop_down,
                      //         color: Colors.white,
                      //       )
                      //     ],
                      //   ),
                      //   itemBuilder: (BuildContext context) =>
                      //       <PopupMenuItem<int>>[
                      //     PopupMenuItem(
                      //       child: Text(
                      //         locations[0],
                      //         style: dropDownMenuText,
                      //       ),
                      //       value: 0,
                      //     ),
                      //     PopupMenuItem(
                      //       child: Text(
                      //         locations[1],
                      //         style: dropDownMenuText,
                      //       ),
                      //       value: 1,
                      //     )
                      //   ],
                      // ),
                      // Spacer(),
                      // Icon(
                      //   Icons.settings,
                      //   color: Colors.white,
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Where would\n you like to Shop?',
                      style: headingSearchTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    child: TextField(
                      controller: TextEditingController(
                        text: locations[0],
                      ),
                      style: dropDownMenuText,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        suffix: Material(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          child: Icon(Icons.search),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 32, vertical: 14.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
