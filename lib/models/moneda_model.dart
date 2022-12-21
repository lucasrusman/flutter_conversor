import 'package:freezed_annotation/freezed_annotation.dart';

part 'moneda_model.freezed.dart';
part 'moneda_model.g.dart';

@freezed
class Moneda with _$Moneda {
  const Moneda._();
  const factory Moneda({
    required String symbol,
    required String name,
    required String symbolNative,
    required double decimalDigits,
    required double rounding,
    required String code,
    required String namePlural,
  }) = _Moneda;
  factory Moneda.fromJson(Map<String, dynamic> json) => _$MonedaFromJson(json);
}
