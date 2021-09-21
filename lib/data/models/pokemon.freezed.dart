// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
class _$PokemonTearOff {
  const _$PokemonTearOff();

  _Pokemon call(
      {required List<Map<String, dynamic>> abilities,
      @JsonKey(name: 'base_experience')
          required int baseExperience,
      required List<Map<String, dynamic>> forms,
      @JsonKey(name: 'game_indices')
          required List<Map<String, dynamic>> gameIndices,
      required int height,
      @JsonKey(name: 'held_items')
          required List<Map<String, dynamic>> heldItems,
      required int id,
      @JsonKey(name: 'is_default')
          required bool isDefault,
      @JsonKey(name: 'location_area_encounters')
          required String locationAreaEncounters,
      required List<Map<String, dynamic>> moves,
      required String name,
      required int order,
      @JsonKey(name: 'past_types')
          required List<Map<String, dynamic>> pastTypes,
      required Map<String, dynamic> species,
      required Map<String, dynamic> sprites,
      required List<Map<String, dynamic>> stats,
      required List<Map<String, dynamic>> types,
      required int weight}) {
    return _Pokemon(
      abilities: abilities,
      baseExperience: baseExperience,
      forms: forms,
      gameIndices: gameIndices,
      height: height,
      heldItems: heldItems,
      id: id,
      isDefault: isDefault,
      locationAreaEncounters: locationAreaEncounters,
      moves: moves,
      name: name,
      order: order,
      pastTypes: pastTypes,
      species: species,
      sprites: sprites,
      stats: stats,
      types: types,
      weight: weight,
    );
  }

  Pokemon fromJson(Map<String, Object> json) {
    return Pokemon.fromJson(json);
  }
}

/// @nodoc
const $Pokemon = _$PokemonTearOff();

/// @nodoc
mixin _$Pokemon {
  List<Map<String, dynamic>> get abilities =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'base_experience')
  int get baseExperience => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get forms => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_indices')
  List<Map<String, dynamic>> get gameIndices =>
      throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'held_items')
  List<Map<String, dynamic>> get heldItems =>
      throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_area_encounters')
  String get locationAreaEncounters => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get moves => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'past_types')
  List<Map<String, dynamic>> get pastTypes =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get species => throw _privateConstructorUsedError;
  Map<String, dynamic> get sprites => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get stats => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get types => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res>;
  $Res call(
      {List<Map<String, dynamic>> abilities,
      @JsonKey(name: 'base_experience') int baseExperience,
      List<Map<String, dynamic>> forms,
      @JsonKey(name: 'game_indices') List<Map<String, dynamic>> gameIndices,
      int height,
      @JsonKey(name: 'held_items') List<Map<String, dynamic>> heldItems,
      int id,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'location_area_encounters') String locationAreaEncounters,
      List<Map<String, dynamic>> moves,
      String name,
      int order,
      @JsonKey(name: 'past_types') List<Map<String, dynamic>> pastTypes,
      Map<String, dynamic> species,
      Map<String, dynamic> sprites,
      List<Map<String, dynamic>> stats,
      List<Map<String, dynamic>> types,
      int weight});
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res> implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  final Pokemon _value;
  // ignore: unused_field
  final $Res Function(Pokemon) _then;

  @override
  $Res call({
    Object? abilities = freezed,
    Object? baseExperience = freezed,
    Object? forms = freezed,
    Object? gameIndices = freezed,
    Object? height = freezed,
    Object? heldItems = freezed,
    Object? id = freezed,
    Object? isDefault = freezed,
    Object? locationAreaEncounters = freezed,
    Object? moves = freezed,
    Object? name = freezed,
    Object? order = freezed,
    Object? pastTypes = freezed,
    Object? species = freezed,
    Object? sprites = freezed,
    Object? stats = freezed,
    Object? types = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      baseExperience: baseExperience == freezed
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      forms: forms == freezed
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      gameIndices: gameIndices == freezed
          ? _value.gameIndices
          : gameIndices // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      heldItems: heldItems == freezed
          ? _value.heldItems
          : heldItems // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: isDefault == freezed
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      locationAreaEncounters: locationAreaEncounters == freezed
          ? _value.locationAreaEncounters
          : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
              as String,
      moves: moves == freezed
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      pastTypes: pastTypes == freezed
          ? _value.pastTypes
          : pastTypes // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      sprites: sprites == freezed
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$PokemonCopyWith(_Pokemon value, $Res Function(_Pokemon) then) =
      __$PokemonCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Map<String, dynamic>> abilities,
      @JsonKey(name: 'base_experience') int baseExperience,
      List<Map<String, dynamic>> forms,
      @JsonKey(name: 'game_indices') List<Map<String, dynamic>> gameIndices,
      int height,
      @JsonKey(name: 'held_items') List<Map<String, dynamic>> heldItems,
      int id,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'location_area_encounters') String locationAreaEncounters,
      List<Map<String, dynamic>> moves,
      String name,
      int order,
      @JsonKey(name: 'past_types') List<Map<String, dynamic>> pastTypes,
      Map<String, dynamic> species,
      Map<String, dynamic> sprites,
      List<Map<String, dynamic>> stats,
      List<Map<String, dynamic>> types,
      int weight});
}

/// @nodoc
class __$PokemonCopyWithImpl<$Res> extends _$PokemonCopyWithImpl<$Res>
    implements _$PokemonCopyWith<$Res> {
  __$PokemonCopyWithImpl(_Pokemon _value, $Res Function(_Pokemon) _then)
      : super(_value, (v) => _then(v as _Pokemon));

  @override
  _Pokemon get _value => super._value as _Pokemon;

  @override
  $Res call({
    Object? abilities = freezed,
    Object? baseExperience = freezed,
    Object? forms = freezed,
    Object? gameIndices = freezed,
    Object? height = freezed,
    Object? heldItems = freezed,
    Object? id = freezed,
    Object? isDefault = freezed,
    Object? locationAreaEncounters = freezed,
    Object? moves = freezed,
    Object? name = freezed,
    Object? order = freezed,
    Object? pastTypes = freezed,
    Object? species = freezed,
    Object? sprites = freezed,
    Object? stats = freezed,
    Object? types = freezed,
    Object? weight = freezed,
  }) {
    return _then(_Pokemon(
      abilities: abilities == freezed
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      baseExperience: baseExperience == freezed
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      forms: forms == freezed
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      gameIndices: gameIndices == freezed
          ? _value.gameIndices
          : gameIndices // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      heldItems: heldItems == freezed
          ? _value.heldItems
          : heldItems // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: isDefault == freezed
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      locationAreaEncounters: locationAreaEncounters == freezed
          ? _value.locationAreaEncounters
          : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
              as String,
      moves: moves == freezed
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      pastTypes: pastTypes == freezed
          ? _value.pastTypes
          : pastTypes // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      sprites: sprites == freezed
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      stats: stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pokemon implements _Pokemon {
  _$_Pokemon(
      {required this.abilities,
      @JsonKey(name: 'base_experience')
          required this.baseExperience,
      required this.forms,
      @JsonKey(name: 'game_indices')
          required this.gameIndices,
      required this.height,
      @JsonKey(name: 'held_items')
          required this.heldItems,
      required this.id,
      @JsonKey(name: 'is_default')
          required this.isDefault,
      @JsonKey(name: 'location_area_encounters')
          required this.locationAreaEncounters,
      required this.moves,
      required this.name,
      required this.order,
      @JsonKey(name: 'past_types')
          required this.pastTypes,
      required this.species,
      required this.sprites,
      required this.stats,
      required this.types,
      required this.weight});

  factory _$_Pokemon.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonFromJson(json);

  @override
  final List<Map<String, dynamic>> abilities;
  @override
  @JsonKey(name: 'base_experience')
  final int baseExperience;
  @override
  final List<Map<String, dynamic>> forms;
  @override
  @JsonKey(name: 'game_indices')
  final List<Map<String, dynamic>> gameIndices;
  @override
  final int height;
  @override
  @JsonKey(name: 'held_items')
  final List<Map<String, dynamic>> heldItems;
  @override
  final int id;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  @JsonKey(name: 'location_area_encounters')
  final String locationAreaEncounters;
  @override
  final List<Map<String, dynamic>> moves;
  @override
  final String name;
  @override
  final int order;
  @override
  @JsonKey(name: 'past_types')
  final List<Map<String, dynamic>> pastTypes;
  @override
  final Map<String, dynamic> species;
  @override
  final Map<String, dynamic> sprites;
  @override
  final List<Map<String, dynamic>> stats;
  @override
  final List<Map<String, dynamic>> types;
  @override
  final int weight;

  @override
  String toString() {
    return 'Pokemon(abilities: $abilities, baseExperience: $baseExperience, forms: $forms, gameIndices: $gameIndices, height: $height, heldItems: $heldItems, id: $id, isDefault: $isDefault, locationAreaEncounters: $locationAreaEncounters, moves: $moves, name: $name, order: $order, pastTypes: $pastTypes, species: $species, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pokemon &&
            (identical(other.abilities, abilities) ||
                const DeepCollectionEquality()
                    .equals(other.abilities, abilities)) &&
            (identical(other.baseExperience, baseExperience) ||
                const DeepCollectionEquality()
                    .equals(other.baseExperience, baseExperience)) &&
            (identical(other.forms, forms) ||
                const DeepCollectionEquality().equals(other.forms, forms)) &&
            (identical(other.gameIndices, gameIndices) ||
                const DeepCollectionEquality()
                    .equals(other.gameIndices, gameIndices)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.heldItems, heldItems) ||
                const DeepCollectionEquality()
                    .equals(other.heldItems, heldItems)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isDefault, isDefault) ||
                const DeepCollectionEquality()
                    .equals(other.isDefault, isDefault)) &&
            (identical(other.locationAreaEncounters, locationAreaEncounters) ||
                const DeepCollectionEquality().equals(
                    other.locationAreaEncounters, locationAreaEncounters)) &&
            (identical(other.moves, moves) ||
                const DeepCollectionEquality().equals(other.moves, moves)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)) &&
            (identical(other.pastTypes, pastTypes) ||
                const DeepCollectionEquality()
                    .equals(other.pastTypes, pastTypes)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality()
                    .equals(other.species, species)) &&
            (identical(other.sprites, sprites) ||
                const DeepCollectionEquality()
                    .equals(other.sprites, sprites)) &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)) &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(abilities) ^
      const DeepCollectionEquality().hash(baseExperience) ^
      const DeepCollectionEquality().hash(forms) ^
      const DeepCollectionEquality().hash(gameIndices) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(heldItems) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isDefault) ^
      const DeepCollectionEquality().hash(locationAreaEncounters) ^
      const DeepCollectionEquality().hash(moves) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(order) ^
      const DeepCollectionEquality().hash(pastTypes) ^
      const DeepCollectionEquality().hash(species) ^
      const DeepCollectionEquality().hash(sprites) ^
      const DeepCollectionEquality().hash(stats) ^
      const DeepCollectionEquality().hash(types) ^
      const DeepCollectionEquality().hash(weight);

  @JsonKey(ignore: true)
  @override
  _$PokemonCopyWith<_Pokemon> get copyWith =>
      __$PokemonCopyWithImpl<_Pokemon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonToJson(this);
  }
}

abstract class _Pokemon implements Pokemon {
  factory _Pokemon(
      {required List<Map<String, dynamic>> abilities,
      @JsonKey(name: 'base_experience')
          required int baseExperience,
      required List<Map<String, dynamic>> forms,
      @JsonKey(name: 'game_indices')
          required List<Map<String, dynamic>> gameIndices,
      required int height,
      @JsonKey(name: 'held_items')
          required List<Map<String, dynamic>> heldItems,
      required int id,
      @JsonKey(name: 'is_default')
          required bool isDefault,
      @JsonKey(name: 'location_area_encounters')
          required String locationAreaEncounters,
      required List<Map<String, dynamic>> moves,
      required String name,
      required int order,
      @JsonKey(name: 'past_types')
          required List<Map<String, dynamic>> pastTypes,
      required Map<String, dynamic> species,
      required Map<String, dynamic> sprites,
      required List<Map<String, dynamic>> stats,
      required List<Map<String, dynamic>> types,
      required int weight}) = _$_Pokemon;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$_Pokemon.fromJson;

  @override
  List<Map<String, dynamic>> get abilities =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'base_experience')
  int get baseExperience => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get forms => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'game_indices')
  List<Map<String, dynamic>> get gameIndices =>
      throw _privateConstructorUsedError;
  @override
  int get height => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'held_items')
  List<Map<String, dynamic>> get heldItems =>
      throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'location_area_encounters')
  String get locationAreaEncounters => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get moves => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get order => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'past_types')
  List<Map<String, dynamic>> get pastTypes =>
      throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get species => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get sprites => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get stats => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get types => throw _privateConstructorUsedError;
  @override
  int get weight => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonCopyWith<_Pokemon> get copyWith =>
      throw _privateConstructorUsedError;
}
