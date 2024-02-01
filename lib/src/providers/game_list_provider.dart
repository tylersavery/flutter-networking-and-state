import 'package:fl_network/src/models/game.dart';
import 'package:fl_network/src/services/game_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_list_provider.g.dart';

@Riverpod(keepAlive: true)
class GameList extends _$GameList {
  @override
  List<Game> build() {
    load();
    return [];
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
