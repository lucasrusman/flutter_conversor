part of 'moneda_bloc.dart';

@immutable
abstract class MonedaState extends Equatable {}

class MonedaLoadingState extends MonedaState {
  @override
  List<Object> get props => [];
}

class MonedaLoadedState extends MonedaState {
  MonedaLoadedState(this.monedas);
  final List<Moneda> monedas;
  @override
  List<Object> get props => [monedas];
}

class MonedaErrorState extends MonedaState {
  MonedaErrorState(this.error);
  final String error;
  @override
  List<Object> get props => [error];
}
