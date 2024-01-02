import 'package:fl_network/src/models/game.dart';
import 'package:fl_network/src/services/game_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

class GameListProvider extends StateNotifier<List<Game>> {
  final Ref ref;
  GameListProvider(this.ref) : super([]) {
    load();
  }

  Future<void> load() async {
    final response = await GameService().list();

    response.fold((error) => print(error), (games) {
      state = games;
    });
  }

  Future<Either<String, bool>> delete(Game game) async {
    final result = await GameService().remove(game.id);

    return result.fold((e) => left(e), (success) {
      ref.invalidateSelf();
      return right(success);
    });
  }
}

final gameListProvider = StateNotifierProvider<GameListProvider, List<Game>>((ref) {
  return GameListProvider(ref);
});
