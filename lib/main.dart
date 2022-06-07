import 'package:aluga/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:aluga/pages/home.dart';

class Formulario {
  final String local;
  final double cep;
  final String uf;
  final String logradouro;
  final String bairro;
  final String tp_Residencia;
  final int id;

  Formulario(this.local, this.cep, this.uf, this.logradouro, this.bairro,
      this.tp_Residencia, this.id);

  String toString() {
    return 'Formulario{local: $local, cep: $cep, uf: $uf, logradouro: $logradouro, bairro: $bairro, tp_Residencia: $tp_Residencia, id: $id}';
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Alugueis', //título da aplicação
      debugShowCheckedModeBanner: false, //Tira a Barrinha de debug da tela
      theme: ThemeData(primarySwatch: Colors.green), //Altera a cor principal
      home: loginPage(),//título da tela
    );
  }
}
