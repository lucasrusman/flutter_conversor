part of 'moneda_bloc.dart';

@freezed
abstract class MonedaEvent with _$MonedaEvent {
  const factory MonedaEvent.loadMonedaEvent() = LoadMonedaEvent;
}
