import 'package:fl_network/src/components/game_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameFormScreen extends ConsumerWidget {
  const GameFormScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("New Game")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GameForm(),
      ),
    );
  }
}
