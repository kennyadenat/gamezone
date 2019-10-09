import '../image_asset.dart';

class NewGamesList {
  final String gameTitle;
  final String imagePath;

  NewGamesList({this.gameTitle, this.imagePath});
}

final newGamesList = [
  NewGamesList(gameTitle: 'SEKIRO: Shadows Dies Twice', imagePath: game_sekiro),
  NewGamesList(gameTitle: 'CALL OF DUTY: Modern Warfare', imagePath: call_duty),
  NewGamesList(gameTitle: 'UNCHARTED 4: A Thiefs End', imagePath: nathan_drake),
  NewGamesList(
      gameTitle: 'THE LAST OF US: No Where to Go', imagePath: last_of_us),
];

final popularFriend = [
  game_fortnite,
  game_apex,
  game_pubg,
  game_stardew,
  game_dead_cells
];
