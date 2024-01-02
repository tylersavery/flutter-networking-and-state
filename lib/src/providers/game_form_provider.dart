import 'package:fl_network/src/models/game.dart';
import 'package:fl_network/src/providers/game_detail_provider.dart';
import 'package:fl_network/src/providers/game_list_provider.dart';
import 'package:fl_network/src/services/game_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

class GameFormProvider extends StateNotifier<Game> {
  final Ref ref;
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController consoleController = TextEditingController();
  final TextEditingController releaseYearController = TextEditingController();

  GameFormProvider(this.ref, Game initialState) : super(initialState) {
    updateControllers();

    nameController.addListener(() {
      state = state.copyWith(name: nameController.text);
    });

    consoleController.addListener(() {
      state = state.copyWith(console: consoleController.text);
    });

    releaseYearController.addListener(() {
      state = state.copyWith(releaseYear: int.tryParse(releaseYearController.text) ?? 0);
    });
  }

  load(Game game) {
    state = game;
    updateControllers();
  }

  clear() {
    state = Game.empty();
    updateControllers();
  }

  updateControllers() {
    nameController.text = state.name;
    consoleController.text = state.console;
    releaseYearController.text = state.releaseYear == 0 ? '' : state.releaseYear.toString();
  }

  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Name is required";
    }

    return null;
  }

  String? consoleValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Console is required";
    }

    return null;
  }

  String? releaseYearValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Release year is required";
    }

    final intValue = int.tryParse(value);
    if (intValue == null || intValue < 1958) {
      return "Invalid Year";
    }

    return null;
  }

  Future<Either<String?, Game>> submit() async {
    if (!formKey.currentState!.validate()) {
      return left(null);
    }
    final result = await GameService().save(state);

    return result.fold((e) => left(e), (game) {
      clear();
      ref.invalidate(gameListProvider);
      ref.invalidate(gameDetailProvider(game.id));
      return right(game);
    });
  }
}

final gameFormProvider = StateNotifierProvider<GameFormProvider, Game>((ref) {
  return GameFormProvider(ref, Game.empty());
});
