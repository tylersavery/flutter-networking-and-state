import 'package:fl_network/src/models/game.dart';
import 'package:fl_network/src/services/game_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final gameDetailProvider = FutureProvider.family<Game?, String>((ref, id) async {
  final result = await GameService().retrieve(id);

  return result.fold((error) {
    print(error);
    return null;
  }, (game) => game);
});
