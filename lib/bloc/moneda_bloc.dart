import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc_conversor/models/moneda_model.dart';
import 'package:flutter_bloc_conversor/providers/moneda.provider.dart';

part 'moneda_event.dart';
part 'moneda_state.dart';

class MonedaBloc extends Bloc<MonedaEvent, MonedaState> {
  final MonedaProvider _monedaRepository;
  MonedaBloc(this._monedaRepository) : super(MonedaLoadingState()) {
    on<LoadMonedaEvent>((event, emit) async {
      emit(MonedaLoadingState());
      try {
        final monedas = await _monedaRepository.getMonedas();
        emit(MonedaLoadedState(monedas));
      } catch (e) {
        print(e);
        emit(MonedaErrorState(e.toString()));
      }
    });
  }
}
