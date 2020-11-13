import 'package:flutter/material.dart';
import 'package:vegas_lit/style.dart';

class BetButton extends StatelessWidget {
  final String text;
  // bool active = false;

  BetButton({this.text});

  Widget build(
    BuildContext context, {
    @required String text,
  }) {
    Color color = MyColors.lightGrey;
    TextStyle style = MyStyles.betBtnText;

    // if (this.active) {
    //   color = MyColors.green;
    //   style = MyStyles.betBtnTextSelected;
    // }

    return Expanded(
      child: RaisedButton(
        elevation: MyStyles.elevation,
        color: color,
        child: Text(
          this.text,
          style: style,
        ),
        onPressed: () {},
      ),
    );
  }
}
