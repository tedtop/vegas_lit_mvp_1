import 'package:flutter/material.dart';
import 'package:vegas_lit/style.dart';

class AbstractCard extends StatelessWidget {
  final List<Widget> _content;

  AbstractCard(this._content);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
      child: Card(
        elevation: MyStyles.elevation,
        color: MyColors.darkGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: this._content,
            ),
          ),
        ),
      ),
    );
  }
}
