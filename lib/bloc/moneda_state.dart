part of 'moneda_bloc.dart';

@freezed
abstract class MonedaState with _$MonedaState {
  const factory MonedaState.monedaLoadingState() = MonedaLoadingState;
  const factory MonedaState.monedaLoadedState(List<Moneda> monedas) = MonedaLoadedState;
  const factory MonedaState.monedaErrorState(String error) = MonedaErrorState;
}
