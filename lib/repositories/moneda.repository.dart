import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_conversor/helpers/debouncer.dart';
import 'dart:convert';

import 'package:flutter_bloc_conversor/models/moneda_model.dart';
import 'package:http/http.dart' as http;

class MonedaRespository {
  late List<Moneda> onDisplayCurrencies = [];

  final debouncer = Debouncer(
    duration: Duration(milliseconds: 500),
  );

  final StreamController<List<Moneda>> _suggestionStreamContoller =
      new StreamController.broadcast();
  Stream<List<Moneda>> get suggestionStream =>
      this._suggestionStreamContoller.stream;

  Future<String> _getJsonData() async {
    final url = Uri.https('api.currencyapi.com', '/v3/currencies', {
      'apikey': 'Oau842zgXx9faaWGw2nMk7w4mmfZIVzPggdK9G8t',
    });
    final response = await http.get(url);
    return response.body;
  }

  getMonedas() async {
    final jsonData = await _getJsonData();
    final response = json.decode(jsonData);
    for (dynamic valor in response['data'].values) {
      var monedas = Moneda(
          symbol: valor['symbol'],
          name: valor['name'],
          symbolNative: valor['symbol_native'],
          decimalDigits: valor['decimal_digits'],
          rounding: valor['rounding'],
          code: valor['code'],
          namePlural: valor['name_plural']);
      onDisplayCurrencies.add(monedas);
    }
    return onDisplayCurrencies;
  }

  void getSuggestionsByQuery() {
    _suggestionStreamContoller.add(onDisplayCurrencies);
  }
}
