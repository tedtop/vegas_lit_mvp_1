import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vegas_lit/models/game.dart';
import 'package:vegas_lit/shared/app_bar.dart';
import 'package:vegas_lit/style.dart';

class Sportsbook extends StatefulWidget {
  @override
  createState() => _SportsbookState();
}

class _SportsbookState extends State<StatefulWidget> {
  List<Game> games = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      body: Container(
        color: MyColors.lightGrey,
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
          itemCount: this.games.length,
          itemBuilder: _listViewItemBuilder,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Chat button action
        },
        label: Text('Support'),
        icon: Icon(Icons.chat),
        foregroundColor: MyColors.white,
        backgroundColor: MyColors.red,
      ),
    );
  }

  loadData() async {
    // final List<Game> games = await Game.fetchAllFromApi();
    final List<Game> games = await Game.fetchAllFromMock();
    setState(() {
      this.games = games;
    });
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var game = this.games[index];

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
              children: [
                Text(
                  // '${game.teams.away.team} ${game.teams.away.mascot} vs ${game.teams.home.team} ${game.teams.home.mascot}',
                  '${game.teams.away.mascot} vs ${game.teams.home.mascot}',
                  style: MyStyles.h2,
                ),
                Text(
                  '${game.schedule.date}',
                  style: GoogleFonts.nunito(
                    color: MyColors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                _oddsBoard(game),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _betButton(Game game, String text, {active: false}) {
    Color color = MyColors.lightGrey;
    TextStyle style = MyStyles.betBtnText;

    if (active) {
      color = MyColors.green;
      style = MyStyles.betBtnTextSelected;
    }

    return Expanded(
      child: RaisedButton(
        elevation: MyStyles.elevation,
        color: color,
        child: Text(
          text,
          style: style,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _betButtonSeparator(String text, {TextStyle style}) {
    return SizedBox(
      width: 50,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: style ?? MyStyles.h3,
      ),
    );
  }

  Widget _oddsBoard(game) {
    return Container(
      // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('${game.teams.away.mascot}', style: MyStyles.awayTeam),
            _betButtonSeparator('@', style: MyStyles.h1),
            Text('${game.teams.home.mascot}', style: MyStyles.homeTeam),
          ],
        ),
        Row(
          children: [
            _betButton(
              game,
              '${game.odds[0].moneyline.current.awayOdds}',
              active: true,
            ),
            _betButtonSeparator('ML'),
            _betButton(game, '${game.odds[0].moneyline.current.homeOdds}'),
          ],
        ),
        Row(
          children: [
            _betButton(game,
                '${game.odds[0].spread.current.away}  ${game.odds[0].spread.current.awayOdds}'),
            _betButtonSeparator('PTS'),
            _betButton(game,
                '${game.odds[0].spread.current.home}  ${game.odds[0].spread.current.homeOdds}'),
          ],
        ),
        Row(
          children: [
            _betButton(game,
                'o${game.odds[0].total.current.total} ${game.odds[0].total.current.overOdds}'),
            _betButtonSeparator('TOT'),
            _betButton(game,
                'u${game.odds[0].total.current.total} ${game.odds[0].total.current.underOdds}'),
          ],
        ),
      ]),
    );
  }
}
