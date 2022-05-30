import 'dart:io';

import 'package:aluga/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'adicionar_aluguel.dart';
import 'meus_alugueis.dart';

//dimensões iphone 12 pro 390 x 844
//final largura_Tela = MediaQuery.of(context).size.width;
//final altura_Tela = MediaQuery.of(context).size.height; //testar
//final altura_Botao = altura_Tela - 90,625%;
//final largura_botao = (length('Inserir o texto aqui') x tamanho_Texto) 17 963 64,6936656% 340 35,3063344% //incompleto
//final altura_AppBar = altura_Tela - 90,625%;
//final largura_AppBar = largura_Tela;
//final tamanho_Titulo = altura_Tela - 96,875%;
//final tamanho_Texto = altura_Tela - 96,875%;
//final grossura_Botao = altura_Botao - 95%;
//final distancia_Botao = altura (da tela) - 97,39%
//final redondo_Botao = (altura (do botão)) - 44%
//final double tamanho_Icone = tamanho_texto + 50%;
//

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final double largura_Tela = MediaQuery.of(context).size.width;
    final double altura_Tela = MediaQuery.of(context).size.height;

    final double altura_Botao = altura_Tela * 0.09375;
    final double tamanho_Texto = altura_Tela * 0.03125;
    final double altura_AppBar = altura_Tela * 0.1292;
    final double largura_AppBar = largura_Tela;
    final double grossura_Botao = altura_Botao * 0.05;
    final double tamanho_Titulo = altura_Tela * 0.03125;
    final double distancia_Botao = altura_Tela * 0.045;
    final double tamanho_Icone = 50.0;
    final double redondo_Botao =
        altura_Botao * 0.56; //(altura (do botão)) - 44%

    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: tamanho_Texto));

    return Scaffold(
        appBar: AppBar(
          toolbarHeight:
              altura_AppBar, // altura (da tela) - 90,625%////////////////////////////////////////////////pegar na sala 109 na minha maquina
          title: Text(widget.title),
          ////////////////////////////////////////////////////////////////////////////titleTextStyle: const TextStyle(), //aplica o título
          centerTitle: true, // centraliza o título
          //colocar o tamanho do título //(altura (da tela) - 96,875%)
          //diria para colocar o mesmo tamanho da fonte do botão, mas como não teria sido calculado até então, preferi fazer o calculo para o título
        ),
        body: Center(
          //centraliza os widgets a seguir
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(height: distancia_Botao), //altura (da tela) - 95,5%
              Container(
                width:
                    350.0, //tem que ser determinado pelo tamanho do texto 20px e do icone 50/60 juntos
                height: altura_Botao, //altura (da tela) - 90,625%
                child: ElevatedButton.icon(
                  //adiciona um botão que pode ter um icone
                  label:
                      const Text('ADICIONAR ALUGUEL'), //aplica o texto do botão
                  icon: Icon(
                      //aplica o ícone
                      Icons.house, //determina o tipo do ícone
                      size: tamanho_Icone,
                      color: Color.fromARGB(
                          255, 0, 230, 118) //aplica a cor do ícone
                      ),
                  style: ElevatedButton.styleFrom(
                    //estilo dos componentes do botão
                    onPrimary: Colors.black, // muda a cor das letras do botao
                    primary: Colors.white, // muda a cor do fundo do botão
                    shape: RoundedRectangleBorder(
                      // arredonda as bordas
                      borderRadius: BorderRadius.all(Radius.circular(
                          redondo_Botao)), //(altura (do botão)) - 44%
                      side: BorderSide(
                          color: Color.fromARGB(255, 0, 230, 118),
                          width:
                              grossura_Botao), // coloca cor e determina a grossura da borda //(altura (do botão) - 95%)
                    ),
                    textStyle: TextStyle(
                        fontSize: tamanho_Texto), //(altura (da tela)) - 96,875%
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Pag2()), //se pressionado, muda para outra página (onde tá essa declaração de pag2?)
                    );
                  },
                ),
              ),
              SizedBox(height: distancia_Botao), //altura (da tela) - 97,39%
              Container(
                width:
                    310.0, //largura (da tela) - 21% //tem que ser determinado pelo tamanho do texto
                height: altura_Botao, //altura (da tela) - 90,625%
                child: ElevatedButton.icon(
                    //adiciona o botão que pode ter um ícone
                    label:
                        const Text('MEUS ALUGUEIS'), //aplica o texto do botão
                    icon: Icon(
                        //aplica o ícone do botão
                        Icons.list, //determina o tipo do botão
                        size: tamanho_Icone +
                            10, //153540 //(altura x largura (do botão) - 99,9257%)
                        color: Color.fromARGB(
                            255, 0, 230, 118) //aplica a cor do icone
                        ),
                    style: ElevatedButton.styleFrom(
                      //estilo dos componentes do botão
                      onPrimary: Colors.black, // muda a cor das letras do botao
                      primary: Colors.white, //aplica a cor do fundo do botão
                      shape: RoundedRectangleBorder(
                        //arredonda as bordas do botão
                        borderRadius: BorderRadius.all(Radius.circular(
                            redondo_Botao)), //altura (do botão) - 44%
                        side: BorderSide(
                            color: Color.fromARGB(255, 0, 230, 118),
                            width: grossura_Botao), // altura (do botão) - 95%
                      ),
                      textStyle: TextStyle(
                          fontSize: tamanho_Texto), //altura (da tela) - 96,875%
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Pag3()),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
