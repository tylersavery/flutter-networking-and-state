import 'package:fl_network/src/components/game_list.dart';
import 'package:fl_network/src/screens/game_form_screen.dart';
import 'package:flutter/material.dart';

class GameListScreen extends StatelessWidget {
  const GameListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Games")),
      body: GameList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => GameFormScreen(),
              fullscreenDialog: true,
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
