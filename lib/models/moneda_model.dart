import 'dart:convert';

class Moneda {
  final String symbol;
  final String name;
  final String symbolNative;
  final double decimalDigits;
  final double rounding;
  final String code;
  final String namePlural;
  Moneda({
    required this.symbol,
    required this.name,
    required this.symbolNative,
    required this.decimalDigits,
    required this.rounding,
    required this.code,
    required this.namePlural,
  });
  factory Moneda.fromJson(String str) => Moneda.fromMap(json.decode(str));
  factory Moneda.fromMap(Map<dynamic, dynamic> json) {
    return Moneda(
        symbol: json['symbol'],
        name: json['name'],
        symbolNative: json['symbol_native'],
        decimalDigits: json['decimal_digits'].toDouble(),
        rounding: json['rounding'].toDouble(),
        code: json['code'],
        namePlural: json['name_plural']);
  }
}
