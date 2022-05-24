import 'package:flutter/material.dart';
import 'package:aluga/pages/home.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Alugueis', //título da aplicação
      debugShowCheckedModeBanner: false, //Tira a Barrinha de debug da tela
      theme: ThemeData(primarySwatch: Colors.green), //Altera a cor principal
      home:
          const MyStatefulWidget(title: 'Escolha uma função'), //título da tela
    );
  }
}

