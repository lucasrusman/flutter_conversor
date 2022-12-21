// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moneda_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Moneda _$$_MonedaFromJson(Map<String, dynamic> json) => _$_Moneda(
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      symbolNative: json['symbolNative'] as String,
      decimalDigits: (json['decimalDigits'] as num).toDouble(),
      rounding: (json['rounding'] as num).toDouble(),
      code: json['code'] as String,
      namePlural: json['namePlural'] as String,
    );

Map<String, dynamic> _$$_MonedaToJson(_$_Moneda instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'symbolNative': instance.symbolNative,
      'decimalDigits': instance.decimalDigits,
      'rounding': instance.rounding,
      'code': instance.code,
      'namePlural': instance.namePlural,
    };
