import 'package:flutter/material.dart';
import 'package:vegas_lit/style.dart';

class BetButton extends StatefulWidget {
  BetButton({Key key, this.text}) : super(key: key);

  final String text;

  @override
  _BetButtonState createState() => _BetButtonState();
}

class _BetButtonState extends State<BetButton> {
  bool _selected = false;

  Widget build(
    BuildContext context, {
    @required String text,
  }) {
    return Expanded(
      child: RaisedButton(
        elevation: MyStyles.elevation,
        color: _selected ? MyColors.green : MyColors.lightGrey,
        child: Text(
          widget.text,
          style: _selected ? MyStyles.betBtnTextSelected : MyStyles.betBtnText,
        ),
        onPressed: () => setState(() => _selected = !_selected),
      ),
    );
  }
}
