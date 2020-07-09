import 'package:flutter/material.dart';
import 'package:posegal/styleguide/ticket_styles.dart';

class ToggleWidget extends StatelessWidget {
  final String firstOption, secondOption, thirdOption;
  const ToggleWidget(
      {Key key,
      @required this.firstOption,
      this.secondOption,
      this.thirdOption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: firstOption,
      builder: (context, snapshot) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CustomRadioButton(
                text: firstOption,
                isCurrentActive: isEqual(snapshot.data, firstOption)),
            CustomRadioButton(
                text: secondOption,
                isCurrentActive: isEqual(snapshot.data, secondOption)),
            CustomRadioButton(
                text: secondOption,
                isCurrentActive: isEqual(snapshot.data, thirdOption))
          ],
        );
      },
    );
  }

  bool isEqual(String snapShotValue, String radioButtonText) {
    return snapShotValue == radioButtonText;
  }
}

class CustomRadioButton extends StatelessWidget {
  final String text;
  final bool isCurrentActive;
  const CustomRadioButton({Key key, this.text, this.isCurrentActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: isCurrentActive ? 4.0 : 0.0,
      borderRadius:
          isCurrentActive ? BorderRadius.all(Radius.circular(40.0)) : null,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12.0),
        child: Text(
          text.toUpperCase(),
          style: isCurrentActive
              ? radioSelectedTextStyle
              : radioUnSelectedTextStyle,
        ),
      ),
      color: isCurrentActive ? Colors.amber[500] : Colors.white,
    );
  }
}
