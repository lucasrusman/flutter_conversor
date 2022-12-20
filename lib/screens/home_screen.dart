import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_conversor/bloc/moneda_bloc.dart';
import 'package:flutter_bloc_conversor/models/inputValue_model.dart';
import 'package:flutter_bloc_conversor/models/moneda_model.dart';
import 'package:flutter_bloc_conversor/providers/moneda.provider.dart';
import 'package:flutter_bloc_conversor/screens/screens.dart';
import 'package:flutter_bloc_conversor/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
  final MonedaProvider _monedaRepository = MonedaProvider();
  final double baseCurrency = 0;
  final double currency = 0;
  double valorFinal = 0;

  void _changeValue(dynamic newValue) {
    setState(() {
      valorFinal = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MonedaBloc(RepositoryProvider.of<MonedaProvider>(context))
            ..add(LoadMonedaEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Conversor de divisas')),
          actions: [
            IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () =>
                  showSearch(context: context, delegate: SearchMoneda()),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  BlocBuilder<MonedaBloc, MonedaState>(
                    builder: ((context, state) {
                      if (state is MonedaLoadingState) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is MonedaLoadedState) {
                        List<Moneda> monedasList = state.monedas;
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
                            monedasList: monedasList,
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
                            monedasList: monedasList,
                            hint: 'Seleccione moneda de destino',
                            inputProperty: 'currency',
                            inputValue: inputValue,
                          ),
                          SizedBox(
                            height: 20,
                            child: Center(child: Text('$valorFinal')),
                          )
                        ]);
                      }

                      if (state is MonedaErrorState) {
                        return const Center(child: Text('Error'));
                      }
                      return Container();
                    }),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final newValue = await _monedaRepository
                          .getValor(inputValue) as double;
                      _changeValue(newValue);
                    },
                    child: const Center(child: Text('Convertir')),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
