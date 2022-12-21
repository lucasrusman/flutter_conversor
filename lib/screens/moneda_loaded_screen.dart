import 'package:flutter/material.dart';
import 'package:flutter_bloc_conversor/models/inputValue_model.dart';
import 'package:flutter_bloc_conversor/models/moneda_model.dart';
import 'package:flutter_bloc_conversor/providers/moneda.provider.dart';
import 'package:flutter_bloc_conversor/widgets/widgets.dart';

class MonedaLoadedScreen extends StatefulWidget {
  final List<Moneda> monedas;
  double valorFinal = 0;
  MonedaLoadedScreen(
      {Key? key, required this.monedas, required this.valorFinal})
      : super(key: key);

  @override
  State<MonedaLoadedScreen> createState() => _MonedaLoadedScreenState();
}

class _MonedaLoadedScreenState extends State<MonedaLoadedScreen> {
  final MonedaProvider _monedaRepository = MonedaProvider();

  void _changeValue(dynamic newValue) {
    setState(() {
      widget.valorFinal = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 50,
      ),
      const Center(
        child: Text("Ingrese el valor a convertir"),
      ),
      const SizedBox(
        height: 20,
      ),
      CustomInputField(
        obscureText: false,
        inputProperty: 'number',
        inputValue: inputValue,
      ),
      const SizedBox(
        height: 35,
      ),
      const Center(
        child: Text("Moneda de origen"),
      ),
      CustomDropdownField(
        monedasList: widget.monedas,
        hint: 'Seleccione moneda de origen',
        inputProperty: 'base_currency',
        inputValue: inputValue,
      ),
      const SizedBox(
        height: 20,
        child: Center(
          child: Text("Moneda de destino"),
        ),
      ),
      CustomDropdownField(
        monedasList: widget.monedas,
        hint: 'Seleccione moneda de destino',
        inputProperty: 'currency',
        inputValue: inputValue,
      ),
      const SizedBox(
        height: 20,
      ),
      ElevatedButton(
        onPressed: () async {
          final newValue =
              await _monedaRepository.getValor(inputValue) as double;
          _changeValue(newValue);
        },
        child: const Center(child: Text('Convertir')),
      ),
      const SizedBox(
        height: 30,
      ),
      SizedBox(
        child: Column(
          children: [
            Center(
                child: widget.valorFinal != 0
                    ? Text('Cotizacion resultante: ${widget.valorFinal}')
                    : const Text("")),
          ],
        ),
      ),
    ]);
  }
}
