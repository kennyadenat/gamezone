import 'package:flutter/material.dart';

class SearchBackWidget extends StatelessWidget {
  const SearchBackWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.white, width: 1),
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(4),
      //   ),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 8,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
