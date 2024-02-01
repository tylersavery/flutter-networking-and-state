import 'package:fl_network/src/components/game_detail.dart';
import 'package:fl_network/src/providers/game_detail_provider.dart';
import 'package:fl_network/src/providers/game_form_provider.dart';
import 'package:fl_network/src/providers/game_list_provider.dart';
import 'package:fl_network/src/screens/game_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameDetailScreen extends ConsumerWidget {
  final String gameId;
  const GameDetailScreen({super.key, required this.gameId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(gameDetailProvider(gameId));

    return Scaffold(
      appBar: data.when(
        data: (game) => AppBar(
          title: Text(game?.name ?? "Not Found"),
          actions: [
            if (game != null) ...[
              TextButton(
                onPressed: () {
                  ref.read(gameFormProvider.notifier).load(game);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => GameFormScreen(),
                      fullscreenDialog: true,
                    ),
                  );
                },
                child: Text("Edit"),
              ),
              TextButton(
                onPressed: () async {
                  final result = await ref.read(gameListProvider.notifier).delete(game);

                  result.fold((error) {
                    print(error);
                  }, (success) {
                    if (success) {
                      Navigator.of(context).pop();
                    }
                  });
                },
                child: Text("Delete"),
              ),
            ]
          ],
        ),
        error: (e, _) => AppBar(title: Text("Error")),
        loading: () => AppBar(),
      ),
      body: data.when(
        data: (game) {
          if (game == null) {
            return Center(child: Text("Game not found"));
          }

          return GameDetail(game: game);
        },
        error: (e, _) => Center(
          child: Text(e.toString()),
        ),
        loading: () => Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
