// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moneda_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Moneda _$MonedaFromJson(Map<String, dynamic> json) {
  return _Moneda.fromJson(json);
}

/// @nodoc
mixin _$Moneda {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbolNative => throw _privateConstructorUsedError;
  double get decimalDigits => throw _privateConstructorUsedError;
  double get rounding => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get namePlural => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonedaCopyWith<Moneda> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonedaCopyWith<$Res> {
  factory $MonedaCopyWith(Moneda value, $Res Function(Moneda) then) =
      _$MonedaCopyWithImpl<$Res, Moneda>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      String symbolNative,
      double decimalDigits,
      double rounding,
      String code,
      String namePlural});
}

/// @nodoc
class _$MonedaCopyWithImpl<$Res, $Val extends Moneda>
    implements $MonedaCopyWith<$Res> {
  _$MonedaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? symbolNative = null,
    Object? decimalDigits = null,
    Object? rounding = null,
    Object? code = null,
    Object? namePlural = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbolNative: null == symbolNative
          ? _value.symbolNative
          : symbolNative // ignore: cast_nullable_to_non_nullable
              as String,
      decimalDigits: null == decimalDigits
          ? _value.decimalDigits
          : decimalDigits // ignore: cast_nullable_to_non_nullable
              as double,
      rounding: null == rounding
          ? _value.rounding
          : rounding // ignore: cast_nullable_to_non_nullable
              as double,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural: null == namePlural
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MonedaCopyWith<$Res> implements $MonedaCopyWith<$Res> {
  factory _$$_MonedaCopyWith(_$_Moneda value, $Res Function(_$_Moneda) then) =
      __$$_MonedaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      String symbolNative,
      double decimalDigits,
      double rounding,
      String code,
      String namePlural});
}

/// @nodoc
class __$$_MonedaCopyWithImpl<$Res>
    extends _$MonedaCopyWithImpl<$Res, _$_Moneda>
    implements _$$_MonedaCopyWith<$Res> {
  __$$_MonedaCopyWithImpl(_$_Moneda _value, $Res Function(_$_Moneda) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? symbolNative = null,
    Object? decimalDigits = null,
    Object? rounding = null,
    Object? code = null,
    Object? namePlural = null,
  }) {
    return _then(_$_Moneda(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbolNative: null == symbolNative
          ? _value.symbolNative
          : symbolNative // ignore: cast_nullable_to_non_nullable
              as String,
      decimalDigits: null == decimalDigits
          ? _value.decimalDigits
          : decimalDigits // ignore: cast_nullable_to_non_nullable
              as double,
      rounding: null == rounding
          ? _value.rounding
          : rounding // ignore: cast_nullable_to_non_nullable
              as double,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural: null == namePlural
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Moneda extends _Moneda {
  const _$_Moneda(
      {required this.symbol,
      required this.name,
      required this.symbolNative,
      required this.decimalDigits,
      required this.rounding,
      required this.code,
      required this.namePlural})
      : super._();

  factory _$_Moneda.fromJson(Map<String, dynamic> json) =>
      _$$_MonedaFromJson(json);

  @override
  final String symbol;
  @override
  final String name;
  @override
  final String symbolNative;
  @override
  final double decimalDigits;
  @override
  final double rounding;
  @override
  final String code;
  @override
  final String namePlural;

  @override
  String toString() {
    return 'Moneda(symbol: $symbol, name: $name, symbolNative: $symbolNative, decimalDigits: $decimalDigits, rounding: $rounding, code: $code, namePlural: $namePlural)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Moneda &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbolNative, symbolNative) ||
                other.symbolNative == symbolNative) &&
            (identical(other.decimalDigits, decimalDigits) ||
                other.decimalDigits == decimalDigits) &&
            (identical(other.rounding, rounding) ||
                other.rounding == rounding) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.namePlural, namePlural) ||
                other.namePlural == namePlural));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, symbolNative,
      decimalDigits, rounding, code, namePlural);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonedaCopyWith<_$_Moneda> get copyWith =>
      __$$_MonedaCopyWithImpl<_$_Moneda>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MonedaToJson(
      this,
    );
  }
}

abstract class _Moneda extends Moneda {
  const factory _Moneda(
      {required final String symbol,
      required final String name,
      required final String symbolNative,
      required final double decimalDigits,
      required final double rounding,
      required final String code,
      required final String namePlural}) = _$_Moneda;
  const _Moneda._() : super._();

  factory _Moneda.fromJson(Map<String, dynamic> json) = _$_Moneda.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get symbolNative;
  @override
  double get decimalDigits;
  @override
  double get rounding;
  @override
  String get code;
  @override
  String get namePlural;
  @override
  @JsonKey(ignore: true)
  _$$_MonedaCopyWith<_$_Moneda> get copyWith =>
      throw _privateConstructorUsedError;
}
