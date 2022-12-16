import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_conversor/bloc/moneda_bloc.dart';
import 'package:flutter_bloc_conversor/models/moneda_model.dart';
import 'package:flutter_bloc_conversor/repositories/moneda.repository.dart';
import 'package:flutter_bloc_conversor/search/search_delegate.dart';
import 'package:flutter_bloc_conversor/theme/app_theme.dart';
import 'package:flutter_bloc_conversor/widgets/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.ligthTheme,
      home: RepositoryProvider(
          create: (context) => MonedaRespository(), child: Home()),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  final Map<String, int> inputValue = {
    'number': 0,
  };
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MonedaBloc(RepositoryProvider.of<MonedaRespository>(context))
            ..add(LoadMonedaEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Conversor de divisas')),
          actions: [
            IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () => showSearch(
                  context: context, delegate: MonedaSearchDelegate()),
            )
          ],
        ),
        body: BlocBuilder<MonedaBloc, MonedaState>(
          builder: ((context, state) {
            if (state is MonedaLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is MonedaLoadedState) {
              List<Moneda> monedasList = state.monedas;
              return ListView(children: [
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
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    print(inputValue);
                  },
                  child: const Center(child: Text('Convertir')),
                )
              ]);
            }
            if (state is MonedaErrorState) {
              return const Center(child: Text('Error'));
            }
            return Container();
          }),
        ),
      ),
    );
  }
}
