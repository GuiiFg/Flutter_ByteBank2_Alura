import 'package:flutter/material.dart';
import 'package:bytebk/components/CardContatos.dart';
import 'package:bytebk/models/contato.dart';
import 'form_add_contato.dart';

class PageConatos extends StatelessWidget {
  const PageConatos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Meus contatos",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: ListView(
        children: <Widget>[
          CardContato(Contato("Guilherme", 4613)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => FormNovoContato(),
            ),
          ).then((value) {
            debugPrint("$value");
          });
        },
      ),
    );
  }
}
