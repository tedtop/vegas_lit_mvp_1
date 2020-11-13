import 'package:flutter/material.dart';
import 'package:vegas_lit/shared/app_bar.dart';
import 'package:vegas_lit/style.dart';

class Sportsbook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody for floating bar get better perfomance
      extendBody: true,
      appBar: header(),
      // backgroundColor: MyColors.lightGrey,
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
                    Text('SPORTSBOOK', style: TextStyle(color: MyColors.white)),
                // trailing: Icon(Icons.arrow_right),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Card(
            color: MyColors.darkGrey,
            child: InkWell(
              onTap: () {},
              child: ListTile(
                // leading: Icon(icon),
                title: Text('BEARS vs TITANS',
                    style: TextStyle(color: MyColors.white)),
                // trailing: Icon(Icons.arrow_right),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Card(
            color: MyColors.darkGrey,
            child: InkWell(
              onTap: () {},
              child: ListTile(
                // leading: Icon(icon),
                title: Text('BEARS vs TITANS',
                    style: TextStyle(color: MyColors.white)),
                // trailing: Icon(Icons.arrow_right),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Card(
            color: MyColors.darkGrey,
            child: InkWell(
              onTap: () {},
              child: ListTile(
                // leading: Icon(icon),
                title: Text('BEARS vs TITANS',
                    style: TextStyle(color: MyColors.white)),
                // trailing: Icon(Icons.arrow_right),
              ),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     ExtendedNavigator.of(context).push(Routes.openBets);
          //   },
          //   child: const Text('Push screen with bottom bar'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     ExtendedNavigator.of(
          //       context,
          //       rootRouter: true,
          //     ).push(Routes.betHistory);
          //   },
          //   child: const Text('Push screen without bottom bar'),
          // ),
        ],
      ),
    );
  }
}
