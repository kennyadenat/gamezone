import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:posegal/common/shop_card.dart';
import 'package:posegal/models/shops.dart';
import 'content_heading_widget.dart';

class TapBottomWidget extends StatefulWidget {
  final double _expandedBottomSheetBottomPosition = 0;
  final double _collapsedBottomSheetBottomPosition = -320;
  final double _completeBottomSheetBottomPosition = -400;
  const TapBottomWidget({Key key}) : super(key: key);

  @override
  _TapBottomWidgetState createState() => _TapBottomWidgetState();
}

class _TapBottomWidgetState extends State<TapBottomWidget>
    with AfterLayoutMixin<TapBottomWidget> {
  double _bottomSheetBottomPosition = -400;
  bool isCollapsed = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.decelerate,
      bottom: _bottomSheetBottomPosition,
      left: 0,
      right: 0,
      child: Material(
        borderOnForeground: true,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        elevation: 6,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: _onTap,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  height: 80,
                  child: ContentHeadingWidget(heading: 'Clips'),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    for (var i = 0; i < shopList.length; i++)
                      ShopCard(shops: shopList[i]),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        isCollapsed = true;
        _bottomSheetBottomPosition = widget._collapsedBottomSheetBottomPosition;
      });
    });
  }

  _onTap() {
    setState(() {
      _bottomSheetBottomPosition = isCollapsed
          ? widget._expandedBottomSheetBottomPosition
          : widget._collapsedBottomSheetBottomPosition;
      isCollapsed = !isCollapsed;
    });
  }
}
