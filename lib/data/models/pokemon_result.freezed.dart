// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pokemon_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonResult _$PokemonResultFromJson(Map<String, dynamic> json) {
  return _PokemonResult.fromJson(json);
}

/// @nodoc
class _$PokemonResultTearOff {
  const _$PokemonResultTearOff();

  _PokemonResult call({required String name, required String url}) {
    return _PokemonResult(
      name: name,
      url: url,
    );
  }

  PokemonResult fromJson(Map<String, Object> json) {
    return PokemonResult.fromJson(json);
  }
}

/// @nodoc
const $PokemonResult = _$PokemonResultTearOff();

/// @nodoc
mixin _$PokemonResult {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonResultCopyWith<PokemonResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResultCopyWith<$Res> {
  factory $PokemonResultCopyWith(
          PokemonResult value, $Res Function(PokemonResult) then) =
      _$PokemonResultCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonResultCopyWithImpl<$Res>
    implements $PokemonResultCopyWith<$Res> {
  _$PokemonResultCopyWithImpl(this._value, this._then);

  final PokemonResult _value;
  // ignore: unused_field
  final $Res Function(PokemonResult) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PokemonResultCopyWith<$Res>
    implements $PokemonResultCopyWith<$Res> {
  factory _$PokemonResultCopyWith(
          _PokemonResult value, $Res Function(_PokemonResult) then) =
      __$PokemonResultCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

/// @nodoc
class __$PokemonResultCopyWithImpl<$Res>
    extends _$PokemonResultCopyWithImpl<$Res>
    implements _$PokemonResultCopyWith<$Res> {
  __$PokemonResultCopyWithImpl(
      _PokemonResult _value, $Res Function(_PokemonResult) _then)
      : super(_value, (v) => _then(v as _PokemonResult));

  @override
  _PokemonResult get _value => super._value as _PokemonResult;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_PokemonResult(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonResult implements _PokemonResult {
  _$_PokemonResult({required this.name, required this.url});

  factory _$_PokemonResult.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonResultFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonResult(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonResult &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$PokemonResultCopyWith<_PokemonResult> get copyWith =>
      __$PokemonResultCopyWithImpl<_PokemonResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonResultToJson(this);
  }
}

abstract class _PokemonResult implements PokemonResult {
  factory _PokemonResult({required String name, required String url}) =
      _$_PokemonResult;

  factory _PokemonResult.fromJson(Map<String, dynamic> json) =
      _$_PokemonResult.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonResultCopyWith<_PokemonResult> get copyWith =>
      throw _privateConstructorUsedError;
}
