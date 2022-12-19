import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter_bloc_conversor/models/moneda_model.dart';
import 'package:http/http.dart' as http;

class MonedaProvider {
  late List<Moneda> onDisplayCurrencies = [];

  Future<String> _getJsonData() async {
    final url = Uri.https('api.currencyapi.com', '/v3/currencies', {
      'apikey': 'WizTfRz4e41KSaoW9yHUSGltuG9ur6Cjp4tpmpx9',
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

  Future<List<Moneda>> getSuggestionsByQuery({String? query}) async {
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
    if (query != null) {
      onDisplayCurrencies = onDisplayCurrencies
          .where((element) =>
              element.name.toLowerCase().contains((query.toLowerCase())))
          .toList();
    }
    return onDisplayCurrencies;
  }
}
