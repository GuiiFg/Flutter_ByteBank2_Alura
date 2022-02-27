import 'package:flutter/material.dart';
import 'package:bytebk/models/contato.dart';

class CardContato extends StatelessWidget {

  final Contato _contato;

  CardContato(this._contato);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_contato.nome),
        subtitle: Text(_contato.numero.toString()),
        leading: const Icon(Icons.people_rounded),
      ),
    );
  }
}
