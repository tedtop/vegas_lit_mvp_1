import 'package:flutter/material.dart';
import 'package:vegas_lit/shared/app_bar.dart';
import 'package:vegas_lit/shared/bottom_navigation_bar.dart';
import 'package:vegas_lit/style.dart';

class BetSlip extends StatelessWidget {
  static const route = '/bet_slip';

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
                title:
                    Text('BET SLIP', style: TextStyle(color: MyColors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
