import 'package:fl_network/src/models/game.dart';
import 'package:fl_network/src/services/base_service.dart';
import 'package:fpdart/fpdart.dart';

class GameService extends BaseService {
  static const basePath = "/game";

  Future<Either<String, List<Game>>> list() async {
    final response = await get(basePath);

    return response.fold(
      (error) => left(error),
      (result) => right(result['data'].map<Game>((json) => Game.fromJson(json)).toList()),
    );
  }

  Future<Either<String, Game>> retrieve(String id) async {
    final response = await get("$basePath/$id");

    return response.fold(
      (error) => left(error),
      (result) => right(Game.fromJson(result['data'])),
    );
  }

  Future<Either<String, Game>> save(Game game) async {
    return game.id.isEmpty ? _create(game) : _update(game.id, game);
  }

  Future<Either<String, Game>> _create(Game game) async {
    final response = await post(basePath, data: game.toJson());

    return response.fold(
      (error) => left(error),
      (result) => right(Game.fromJson(result['data'])),
    );
  }

  Future<Either<String, Game>> _update(String id, Game game) async {
    final response = await patch("$basePath/$id", data: game.toJson());

    return response.fold(
      (error) => left(error),
      (result) => right(Game.fromJson(result['data'])),
    );
  }

  Future<Either<String, bool>> remove(String id) async {
    final response = await delete("$basePath/$id");

    return response.fold(
      (error) => left(error),
      (result) => right(true),
    );
  }
}
