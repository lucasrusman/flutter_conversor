import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc_conversor/models/moneda_model.dart';
import 'package:flutter_bloc_conversor/providers/moneda.provider.dart';

part 'moneda_event.dart';
part 'moneda_state.dart';
part 'moneda_bloc.freezed.dart';

class MonedaBloc extends Bloc<MonedaEvent, MonedaState> {
  final MonedaProvider _monedaRepository;
  MonedaBloc(this._monedaRepository)
      : super(const MonedaState.monedaLoadingState()) {
    on<LoadMonedaEvent>((event, emit) async {
      emit(const MonedaState.monedaLoadingState());
      try {
        final monedas = await _monedaRepository.getMonedas();
        emit(MonedaState.monedaLoadedState(monedas));
      } catch (e) {
        print(e);
        emit(MonedaState.monedaErrorState(e.toString()));
      }
    });
  }
}
