// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  @JsonKey(includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get console => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "release_year")
  int get releaseYear => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at", includeToJson: false)
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      String name,
      String console,
      @JsonKey(includeToJson: false) String photo,
      @JsonKey(name: "release_year") int releaseYear,
      @JsonKey(name: "created_at", includeToJson: false) DateTime createdAt});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? console = null,
    Object? photo = null,
    Object? releaseYear = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      console: null == console
          ? _value.console
          : console // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      releaseYear: null == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      String name,
      String console,
      @JsonKey(includeToJson: false) String photo,
      @JsonKey(name: "release_year") int releaseYear,
      @JsonKey(name: "created_at", includeToJson: false) DateTime createdAt});
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? console = null,
    Object? photo = null,
    Object? releaseYear = null,
    Object? createdAt = null,
  }) {
    return _then(_$GameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      console: null == console
          ? _value.console
          : console // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      releaseYear: null == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl extends _Game {
  _$GameImpl(
      {@JsonKey(includeToJson: false) required this.id,
      required this.name,
      required this.console,
      @JsonKey(includeToJson: false) required this.photo,
      @JsonKey(name: "release_year") required this.releaseYear,
      @JsonKey(name: "created_at", includeToJson: false)
      required this.createdAt})
      : super._();

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String id;
  @override
  final String name;
  @override
  final String console;
  @override
  @JsonKey(includeToJson: false)
  final String photo;
  @override
  @JsonKey(name: "release_year")
  final int releaseYear;
  @override
  @JsonKey(name: "created_at", includeToJson: false)
  final DateTime createdAt;

  @override
  String toString() {
    return 'Game(id: $id, name: $name, console: $console, photo: $photo, releaseYear: $releaseYear, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.console, console) || other.console == console) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.releaseYear, releaseYear) ||
                other.releaseYear == releaseYear) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, console, photo, releaseYear, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game extends Game {
  factory _Game(
      {@JsonKey(includeToJson: false) required final String id,
      required final String name,
      required final String console,
      @JsonKey(includeToJson: false) required final String photo,
      @JsonKey(name: "release_year") required final int releaseYear,
      @JsonKey(name: "created_at", includeToJson: false)
      required final DateTime createdAt}) = _$GameImpl;
  _Game._() : super._();

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String get id;
  @override
  String get name;
  @override
  String get console;
  @override
  @JsonKey(includeToJson: false)
  String get photo;
  @override
  @JsonKey(name: "release_year")
  int get releaseYear;
  @override
  @JsonKey(name: "created_at", includeToJson: false)
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
