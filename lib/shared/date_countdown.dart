import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vegas_lit/models/game.dart';
import 'package:vegas_lit/style.dart';

class DateCountdown extends StatelessWidget {
  final Game _game;

  DateCountdown(this._game);

  @override
  Widget build(BuildContext context) {
    // return Text(
    //   DateFormat('EEEE, MMMM, c, y @ hh:mm a')
    //       .format(_game.schedule.date.toLocal()),
    //   style: MyStyles.h4,
    // );
    return Text(
      'Starts in 20h 20m 20s',
      style: TextStyle(color: MyColors.red),
    );
  }
}
