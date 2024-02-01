import 'package:fl_network/src/components/game_list_tile.dart';
import 'package:fl_network/src/providers/game_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameList extends ConsumerWidget {
  const GameList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final games = ref.watch(gameListProvider);

    return ListView.builder(
      itemCount: games.length,
      itemBuilder: (context, index) {
        final game = games[index];

        return GameListTile(game: game);
      },
    );
  }
}
