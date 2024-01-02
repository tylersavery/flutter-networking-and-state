import 'package:fl_network/src/models/game.dart';
import 'package:fl_network/src/screens/game_detail_screen.dart';
import 'package:flutter/material.dart';

class GameListTile extends StatelessWidget {
  final Game game;

  const GameListTile({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(game.name),
        subtitle: Text(game.console),
        leading: Image.network(
          game.photo,
          width: 48,
          height: 48,
          fit: BoxFit.cover,
        ),
        trailing: Icon(Icons.chevron_right),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => GameDetailScreen(gameId: game.id),
            ),
          );
        },
      ),
    );
  }
}
