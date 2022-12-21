import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_conversor/bloc/moneda_bloc.dart';
import 'package:flutter_bloc_conversor/providers/moneda.provider.dart';
import 'package:flutter_bloc_conversor/screens/screens.dart';
import 'package:flutter_bloc_conversor/screens/moneda_loaded_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MonedaBloc(RepositoryProvider.of<MonedaProvider>(context))
            ..add(const MonedaEvent.loadMonedaEvent()),
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
                      return state.when(
                          monedaLoadingState: () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                          monedaLoadedState: (monedas) => MonedaLoadedScreen(
                              monedas: monedas, valorFinal: 0),
                          monedaErrorState: ((error) =>
                              Center(child: Text(error))));
                    }),
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
