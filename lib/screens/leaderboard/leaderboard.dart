import 'package:flutter/material.dart';
import 'package:vegas_lit/shared/app_bar.dart';
import 'package:vegas_lit/style.dart';

class Leaderboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody for floating bar get better perfomance
      extendBody: true,
      appBar: header(),
      backgroundColor: MyColors.lightGrey,
      body: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          Card(
            color: MyColors.darkGrey,
            child: InkWell(
              onTap: () {},
              child: ListTile(
                // leading: Icon(icon),
                title: Text('LEADERBOARD',
                    style: TextStyle(color: MyColors.white)),
                // trailing: Icon(Icons.arrow_right),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
