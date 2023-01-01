// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_popular.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataPopular _$DataPopularFromJson(Map<String, dynamic> json) {
  return _DataPopular.fromJson(json);
}

/// @nodoc
class _$DataPopularTearOff {
  const _$DataPopularTearOff();

  _DataPopular call(
      {String? id, String? desc, String? image, int? price, bool? available}) {
    return _DataPopular(
      id: id,
      desc: desc,
      image: image,
      price: price,
      available: available,
    );
  }

  DataPopular fromJson(Map<String, Object> json) {
    return DataPopular.fromJson(json);
  }
}

/// @nodoc
const $DataPopular = _$DataPopularTearOff();

/// @nodoc
mixin _$DataPopular {
  String? get id => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPopularCopyWith<DataPopular> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPopularCopyWith<$Res> {
  factory $DataPopularCopyWith(
          DataPopular value, $Res Function(DataPopular) then) =
      _$DataPopularCopyWithImpl<$Res>;
  $Res call(
      {String? id, String? desc, String? image, int? price, bool? available});
}

/// @nodoc
class _$DataPopularCopyWithImpl<$Res> implements $DataPopularCopyWith<$Res> {
  _$DataPopularCopyWithImpl(this._value, this._then);

  final DataPopular _value;
  // ignore: unused_field
  final $Res Function(DataPopular) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? desc = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? available = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$DataPopularCopyWith<$Res>
    implements $DataPopularCopyWith<$Res> {
  factory _$DataPopularCopyWith(
          _DataPopular value, $Res Function(_DataPopular) then) =
      __$DataPopularCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id, String? desc, String? image, int? price, bool? available});
}

/// @nodoc
class __$DataPopularCopyWithImpl<$Res> extends _$DataPopularCopyWithImpl<$Res>
    implements _$DataPopularCopyWith<$Res> {
  __$DataPopularCopyWithImpl(
      _DataPopular _value, $Res Function(_DataPopular) _then)
      : super(_value, (v) => _then(v as _DataPopular));

  @override
  _DataPopular get _value => super._value as _DataPopular;

  @override
  $Res call({
    Object? id = freezed,
    Object? desc = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? available = freezed,
  }) {
    return _then(_DataPopular(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      available: available == freezed
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataPopular implements _DataPopular {
  _$_DataPopular({this.id, this.desc, this.image, this.price, this.available});

  factory _$_DataPopular.fromJson(Map<String, dynamic> json) =>
      _$$_DataPopularFromJson(json);

  @override
  final String? id;
  @override
  final String? desc;
  @override
  final String? image;
  @override
  final int? price;
  @override
  final bool? available;

  @override
  String toString() {
    return 'DataPopular(id: $id, desc: $desc, image: $image, price: $price, available: $available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataPopular &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.available, available) ||
                const DeepCollectionEquality()
                    .equals(other.available, available)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(desc) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(available);

  @JsonKey(ignore: true)
  @override
  _$DataPopularCopyWith<_DataPopular> get copyWith =>
      __$DataPopularCopyWithImpl<_DataPopular>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataPopularToJson(this);
  }
}

abstract class _DataPopular implements DataPopular {
  factory _DataPopular(
      {String? id,
      String? desc,
      String? image,
      int? price,
      bool? available}) = _$_DataPopular;

  factory _DataPopular.fromJson(Map<String, dynamic> json) =
      _$_DataPopular.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get desc => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  int? get price => throw _privateConstructorUsedError;
  @override
  bool? get available => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataPopularCopyWith<_DataPopular> get copyWith =>
      throw _privateConstructorUsedError;
}
