import 'package:flutter/material.dart';
import 'package:bytebk/models/contato.dart';

class FormNovoContato extends StatefulWidget {

  FormNovoContato({Key? key}) : super(key: key);

  @override
  State<FormNovoContato> createState() => _FormNovoContatoState();
}

class _FormNovoContatoState extends State<FormNovoContato> {
  final TextEditingController _nome_contato = TextEditingController();

  final TextEditingController _numero_conta = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Novo Contato",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: _nome_contato,
                decoration: const InputDecoration(
                  icon: Icon(Icons.people_rounded),
                  labelText: "Nome",
                  hintText: "João Guilherme",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _numero_conta,
                decoration: const InputDecoration(
                  icon: Icon(Icons.people_rounded),
                  labelText: "Número da Conta",
                  hintText: "1234",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () => criarContato(),
                  child: const Text("Criar Novo Contato"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void criarContato(){

    if(_nome_contato.text.isNotEmpty &&  _numero_conta.text.isNotEmpty){

      final String nome = _nome_contato.text;
      final int conta = int.parse(_numero_conta.text);

      final novoContato = Contato(nome, conta);

      Navigator.pop(context, novoContato);

    }

  }
}
