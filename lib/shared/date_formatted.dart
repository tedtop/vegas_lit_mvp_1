import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vegas_lit/models/game.dart';
import 'package:vegas_lit/style.dart';

class FormattedDate extends StatelessWidget {
  final Game _game;

  FormattedDate(this._game);

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('EEEE, MMMM, c, y @ hh:mm a')
          .format(_game.schedule.date.toLocal()),
      style: MyStyles.h4,
    );
  }
}
