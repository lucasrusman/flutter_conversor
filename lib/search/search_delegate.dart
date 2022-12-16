import 'package:flutter/material.dart';
import 'package:flutter_bloc_conversor/models/moneda_model.dart';
import 'package:flutter_bloc_conversor/repositories/moneda.repository.dart';
import 'package:provider/provider.dart';

class MonedaSearchDelegate extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Buscar moneda';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          close(context, null);
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('buildResults');
  }

  Widget _emptyContainer() {
    return Container(
      child: const Center(
        child: Icon(
          Icons.attach_money_outlined,
          color: Colors.black38,
          size: 130,
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      print(query.isEmpty);
      return _emptyContainer();
    }
    final monedasRepository =
        Provider.of<MonedaRespository>(context, listen: false);

    monedasRepository.getSuggestionsByQuery();

    return StreamBuilder(
      stream: monedasRepository.suggestionStream,
      builder: (_, AsyncSnapshot<List<Moneda>> snapshot) {
        if (!snapshot.hasData) return _emptyContainer();

        final monedas = snapshot.data!;
        print(monedas);
        return ListView.builder(
            itemCount: monedas.length,
            itemBuilder: (_, int index) {
              return ListTile(
                  title: Text(monedas[index].name),
                  subtitle: Text(monedas[index].code));
            });
      },
    );
  }
}
