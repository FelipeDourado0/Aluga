import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pag3 extends StatelessWidget {
  const Pag3({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alugueis cadastrados'),
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