import 'package:fl_network/src/providers/game_form_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameForm extends ConsumerWidget {
  const GameForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(gameFormProvider.notifier);

    return Form(
      key: provider.formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: provider.nameController,
            validator: provider.nameValidator,
            decoration: InputDecoration(
              label: Text("Name"),
            ),
          ),
          TextFormField(
            controller: provider.consoleController,
            validator: provider.consoleValidator,
            decoration: InputDecoration(
              label: Text("Console"),
            ),
          ),
          TextFormField(
            controller: provider.releaseYearController,
            validator: provider.releaseYearValidator,
            decoration: InputDecoration(
              label: Text("Release Year"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel"),
                ),
                TextButton(
                  onPressed: () async {
                    final result = await provider.submit();
                    result.fold(
                      (e) => print(e),
                      (game) {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  child: Text("Save"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
