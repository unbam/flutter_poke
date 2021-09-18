// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pokemons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pokemons _$PokemonsFromJson(Map<String, dynamic> json) {
  return _Pokemons.fromJson(json);
}

/// @nodoc
class _$PokemonsTearOff {
  const _$PokemonsTearOff();

  _Pokemons call(
      {required int count,
      String? next,
      String? previous,
      required List<PokemonResult> results}) {
    return _Pokemons(
      count: count,
      next: next,
      previous: previous,
      results: results,
    );
  }

  Pokemons fromJson(Map<String, Object> json) {
    return Pokemons.fromJson(json);
  }
}

/// @nodoc
const $Pokemons = _$PokemonsTearOff();

/// @nodoc
mixin _$Pokemons {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonResult> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonsCopyWith<Pokemons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonsCopyWith<$Res> {
  factory $PokemonsCopyWith(Pokemons value, $Res Function(Pokemons) then) =
      _$PokemonsCopyWithImpl<$Res>;
  $Res call(
      {int count, String? next, String? previous, List<PokemonResult> results});
}

/// @nodoc
class _$PokemonsCopyWithImpl<$Res> implements $PokemonsCopyWith<$Res> {
  _$PokemonsCopyWithImpl(this._value, this._then);

  final Pokemons _value;
  // ignore: unused_field
  final $Res Function(Pokemons) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonResult>,
    ));
  }
}

/// @nodoc
abstract class _$PokemonsCopyWith<$Res> implements $PokemonsCopyWith<$Res> {
  factory _$PokemonsCopyWith(_Pokemons value, $Res Function(_Pokemons) then) =
      __$PokemonsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count, String? next, String? previous, List<PokemonResult> results});
}

/// @nodoc
class __$PokemonsCopyWithImpl<$Res> extends _$PokemonsCopyWithImpl<$Res>
    implements _$PokemonsCopyWith<$Res> {
  __$PokemonsCopyWithImpl(_Pokemons _value, $Res Function(_Pokemons) _then)
      : super(_value, (v) => _then(v as _Pokemons));

  @override
  _Pokemons get _value => super._value as _Pokemons;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_Pokemons(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pokemons implements _Pokemons {
  _$_Pokemons(
      {required this.count, this.next, this.previous, required this.results});

  factory _$_Pokemons.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonsFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final List<PokemonResult> results;

  @override
  String toString() {
    return 'Pokemons(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pokemons &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$PokemonsCopyWith<_Pokemons> get copyWith =>
      __$PokemonsCopyWithImpl<_Pokemons>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonsToJson(this);
  }
}

abstract class _Pokemons implements Pokemons {
  factory _Pokemons(
      {required int count,
      String? next,
      String? previous,
      required List<PokemonResult> results}) = _$_Pokemons;

  factory _Pokemons.fromJson(Map<String, dynamic> json) = _$_Pokemons.fromJson;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  String? get next => throw _privateConstructorUsedError;
  @override
  String? get previous => throw _privateConstructorUsedError;
  @override
  List<PokemonResult> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonsCopyWith<_Pokemons> get copyWith =>
      throw _privateConstructorUsedError;
}
