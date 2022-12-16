part of 'moneda_bloc.dart';

@immutable
abstract class MonedaEvent extends Equatable {
  const MonedaEvent();
}

class LoadMonedaEvent extends MonedaEvent {
  @override
  List<Object> get props => [];
}
 