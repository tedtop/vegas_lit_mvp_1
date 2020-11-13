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
      child: Container(
        // Padding around BetButton(s)
        padding: EdgeInsets.all(5.0),
        // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        child: RaisedButton(
          // Padding inside BetButton(s)
          padding: EdgeInsets.all(10.0),
          elevation: MyStyles.elevation,
          color: _selected ? MyColors.green : MyColors.lightGrey,
          child: Text(
            widget.text,
            style:
                _selected ? MyStyles.betBtnTextSelected : MyStyles.betBtnText,
          ),
          onPressed: () => setState(() => _selected = !_selected),
        ),
      ),
    );
  }
}
