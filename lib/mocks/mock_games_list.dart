import '../models/game.dart';

class MockGamesList extends Game {
  static final List<Game> items = [
    Game(
      gameId: 247083,
      summary: 'Miami (FL) @ NC State',
      status: 'scheduled',
    ),
    Game(
      gameId: 249610,
      summary: 'San Jose State @ San Diego State',
      status: 'scheduled',
    ),
    Game(
      gameId: 249611,
      summary: 'BYU @ Boise State',
      status: 'scheduled',
    ),
  ];

  static Game fetchAny() {
    return MockGamesList.items[0];
  }

  static List<Game> fetchAll() {
    return MockGamesList.items;
  }
}
