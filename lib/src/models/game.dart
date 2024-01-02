import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  const Game._();

  factory Game({
    @JsonKey(includeToJson: false) required String id,
    required String name,
    required String console,
    @JsonKey(includeToJson: false) required String photo,
    @JsonKey(name: "release_year") required int releaseYear,
    @JsonKey(name: "created_at", includeToJson: false) required DateTime createdAt,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  factory Game.empty() {
    return Game(
      id: "",
      name: "",
      console: "",
      photo: "",
      releaseYear: 0,
      createdAt: DateTime.now(),
    );
  }
}
