import 'package:flutter/material.dart';
import 'package:vegas_lit/screens/bet_slip/bet_slip.dart';
import 'package:vegas_lit/shared/app_bar.dart';
import 'package:vegas_lit/style.dart';

class Sportsbook extends StatelessWidget {
  static const route = '/sportsbook';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody for floating bar get better perfomance
      extendBody: true,
      appBar: header(),
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
          RaisedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: false)
                  .pushNamed(BetSlip.route);
            },
            child: Text('Push route with bottom bar'),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
                  .pushNamed(BetSlip.route);
            },
            child: Text('Push route without bottom bar'),
          ),
        ],
      ),
    );
  }
}
