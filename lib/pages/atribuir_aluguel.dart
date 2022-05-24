import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Pag4 extends StatelessWidget {
  const Pag4({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atribuir aluguel'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar!'),
        ),
      ),
    );
  }
}