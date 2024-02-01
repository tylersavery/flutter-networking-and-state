import 'package:fl_network/src/models/game.dart';
import 'package:fl_network/src/services/game_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_detail_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Game?> gameDetail(Ref ref, String arg) async {
  final result = await GameService().retrieve(arg);

  return result.fold((error) {
    print(error);
    return null;
  }, (game) => game);
}
