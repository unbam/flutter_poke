// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pokemon_i18n.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonI18n _$PokemonI18nFromJson(Map<String, dynamic> json) {
  return _PokemonI18n.fromJson(json);
}

/// @nodoc
class _$PokemonI18nTearOff {
  const _$PokemonI18nTearOff();

  _PokemonI18n call({required String ja, required String en}) {
    return _PokemonI18n(
      ja: ja,
      en: en,
    );
  }

  PokemonI18n fromJson(Map<String, Object> json) {
    return PokemonI18n.fromJson(json);
  }
}

/// @nodoc
const $PokemonI18n = _$PokemonI18nTearOff();

/// @nodoc
mixin _$PokemonI18n {
  /// 日本語名
  String get ja => throw _privateConstructorUsedError;

  /// 英語名
  String get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonI18nCopyWith<PokemonI18n> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonI18nCopyWith<$Res> {
  factory $PokemonI18nCopyWith(
          PokemonI18n value, $Res Function(PokemonI18n) then) =
      _$PokemonI18nCopyWithImpl<$Res>;
  $Res call({String ja, String en});
}

/// @nodoc
class _$PokemonI18nCopyWithImpl<$Res> implements $PokemonI18nCopyWith<$Res> {
  _$PokemonI18nCopyWithImpl(this._value, this._then);

  final PokemonI18n _value;
  // ignore: unused_field
  final $Res Function(PokemonI18n) _then;

  @override
  $Res call({
    Object? ja = freezed,
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      ja: ja == freezed
          ? _value.ja
          : ja // ignore: cast_nullable_to_non_nullable
              as String,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PokemonI18nCopyWith<$Res>
    implements $PokemonI18nCopyWith<$Res> {
  factory _$PokemonI18nCopyWith(
          _PokemonI18n value, $Res Function(_PokemonI18n) then) =
      __$PokemonI18nCopyWithImpl<$Res>;
  @override
  $Res call({String ja, String en});
}

/// @nodoc
class __$PokemonI18nCopyWithImpl<$Res> extends _$PokemonI18nCopyWithImpl<$Res>
    implements _$PokemonI18nCopyWith<$Res> {
  __$PokemonI18nCopyWithImpl(
      _PokemonI18n _value, $Res Function(_PokemonI18n) _then)
      : super(_value, (v) => _then(v as _PokemonI18n));

  @override
  _PokemonI18n get _value => super._value as _PokemonI18n;

  @override
  $Res call({
    Object? ja = freezed,
    Object? en = freezed,
  }) {
    return _then(_PokemonI18n(
      ja: ja == freezed
          ? _value.ja
          : ja // ignore: cast_nullable_to_non_nullable
              as String,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonI18n implements _PokemonI18n {
  _$_PokemonI18n({required this.ja, required this.en});

  factory _$_PokemonI18n.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonI18nFromJson(json);

  @override

  /// 日本語名
  final String ja;
  @override

  /// 英語名
  final String en;

  @override
  String toString() {
    return 'PokemonI18n(ja: $ja, en: $en)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonI18n &&
            (identical(other.ja, ja) ||
                const DeepCollectionEquality().equals(other.ja, ja)) &&
            (identical(other.en, en) ||
                const DeepCollectionEquality().equals(other.en, en)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ja) ^
      const DeepCollectionEquality().hash(en);

  @JsonKey(ignore: true)
  @override
  _$PokemonI18nCopyWith<_PokemonI18n> get copyWith =>
      __$PokemonI18nCopyWithImpl<_PokemonI18n>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonI18nToJson(this);
  }
}

abstract class _PokemonI18n implements PokemonI18n {
  factory _PokemonI18n({required String ja, required String en}) =
      _$_PokemonI18n;

  factory _PokemonI18n.fromJson(Map<String, dynamic> json) =
      _$_PokemonI18n.fromJson;

  @override

  /// 日本語名
  String get ja => throw _privateConstructorUsedError;
  @override

  /// 英語名
  String get en => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonI18nCopyWith<_PokemonI18n> get copyWith =>
      throw _privateConstructorUsedError;
}
