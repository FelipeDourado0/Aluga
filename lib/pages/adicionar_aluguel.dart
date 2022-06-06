import 'dart:ui';

import 'package:aluga/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pag2 extends StatelessWidget {
  //https://www.alura.com.br/artigos/criando-formulario-com-flutter?gclid=Cj0KCQjw1tGUBhDXARIsAIJx01n3MdC-Vt39OZEosWNOB4VYNAkJJrkE6v5GM0IDdyJsirgyQH5UndUaAqlhEALw_wcB

  final TextEditingController _controladorLocal = TextEditingController();
  final TextEditingController _controladorCep = TextEditingController();
  final TextEditingController _controladorUf = TextEditingController();
  final TextEditingController _controladorLogradouro = TextEditingController();
  final TextEditingController _controladorBairro = TextEditingController();
  final TextEditingController _controladorResidencia = TextEditingController();
  final TextEditingController _controladorId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double largura_Tela = MediaQuery.of(context).size.width;
    final double altura_Tela = MediaQuery.of(context).size.height;

    final double largura_Botao = largura_Tela * 0.365; //63,5%
    final double altura_Botao = altura_Tela * 0.0683; //93,17%
    final double altura_AppBar = altura_Tela * 0.1292;
    final double margem_Lateral = largura_Tela * 0.086;
    final double margem_Vertical = altura_Tela * (0.041 / 2);
    final double tamanho_Texto = altura_Tela * 0.0175; //98,125%
    final double texto_Botao = altura_Tela * 0.03; //97%
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: tamanho_Texto));
    final double redondo_Botao = 100;
    final double grossura_Botao = altura_Botao * 0.05; //95%

    return Scaffold(
      appBar: AppBar(
        ///// tirar o leading
        toolbarHeight: altura_AppBar,
        title: const Text('CRIAR ALUGUEL'),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
            horizontal: margem_Lateral, vertical: margem_Vertical),
        children: <Widget>[
          TextFormField(
            controller: _controladorLocal,
            decoration: InputDecoration(
              hintText: 'Novo',
              labelText: 'Local',
              labelStyle: TextStyle(
                  color: Color.fromARGB(255, 18, 199, 121),
                  fontSize: tamanho_Texto),
            ), //Local
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Insira algo. Campo obrigatório.';
              }
              return null;
            },
          ),

          Row(
            children: [
              Expanded(
                  flex: 13,
                  child: TextFormField(
                    controller: _controladorCep,
                    decoration: InputDecoration(
                        hintText: '00000-000',
                        labelText: 'CEP',
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 18, 199, 121),
                            fontSize: tamanho_Texto)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insira algo. Campo obrigatório.';
                      }
                      return null;
                    },
                  ) //CEP
                  ),

              Padding(padding: EdgeInsets.all(margem_Lateral / 3)),

              Expanded(
                flex: 5,
                child: TextFormField(
                  controller: _controladorUf,
                  decoration: InputDecoration(
                      hintText: 'XX',
                      labelText: 'Localidade/UF',
                      labelStyle: TextStyle(
                          color: Color.fromARGB(255, 18, 199, 121),
                          fontSize: tamanho_Texto)),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Insira algo. Campo obrigatório.';
                    }
                    return null;
                  },
                ),
              ),
              //UF)
            ],
          ),

          TextFormField(
            controller: _controladorLogradouro,
            decoration: InputDecoration(
                hintText: 'Nome',
                labelText: 'Logradouro/Nome',
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 18, 199, 121),
                    fontSize: tamanho_Texto)),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Insira algo. Campo obrigatório.';
              }
              return null;
            },
          ), //Nome logradouro

          TextFormField(
            controller: _controladorBairro,
            decoration: InputDecoration(
                hintText: 'Bairro',
                labelText: 'Bairro/Distrito',
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 18, 199, 121),
                    fontSize: tamanho_Texto)),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Insira algo. Campo obrigatório.';
              }
              return null;
            },
          ), //Bairro/Distrito

          TextFormField(
            controller: _controladorResidencia,
            decoration: InputDecoration(
                hintText: 'Tipo',
                labelText: 'Tipo de Residencia',
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 18, 199, 121),
                    fontSize: tamanho_Texto)),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Insira algo. Campo obrigatório.';
              }
              return null;
            },
          ), //tipo residencia

          TextFormField(
            controller: _controladorId,
            decoration: InputDecoration(
                hintText: 'ID',
                labelText: 'Identificador Único',
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 18, 199, 121),
                    fontSize: tamanho_Texto)),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Insira algo. Campo obrigatório.';
              }
              return null;
            },
          ), //identificador unico

          Padding(padding: EdgeInsets.symmetric(vertical: margem_Vertical)),

          Row(
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width:
                      largura_Botao, //tem que ser determinado pelo tamanho do texto 20px e do icone 50/60 juntos
                  height: altura_Botao, //altura (da tela) - 90,625%
                  child: ElevatedButton(
                    child: const Text('VOLTAR'), //aplica o texto do botão
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
                          fontSize:
                              tamanho_Texto), //(altura (da tela)) - 96,875%
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              //Padding(padding: EdgeInsets.symmetric(horizontal: 15.0)),
              Expanded(
                flex: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width:
                      largura_Botao, //tem que ser determinado pelo tamanho do texto 20px e do icone 50/60 juntos
                  height: altura_Botao, //altura (da tela) - 90,625%
                  child: ElevatedButton(
                    child: const Text('CONTINUAR'), //aplica o texto do botão
                    style: ElevatedButton.styleFrom(
                      //estilo dos componentes do botão
                      onPrimary: Colors.white, // muda a cor das letras do botao
                      primary: const Color.fromARGB(
                          255, 0, 230, 118), // muda a cor do fundo do botão
                      shape: RoundedRectangleBorder(
                        // arredonda as bordas
                        borderRadius:
                            BorderRadius.all(Radius.circular(redondo_Botao)),
                        side: BorderSide(
                            color: const Color.fromARGB(255, 0, 230, 118),
                            width:
                                grossura_Botao), // coloca cor e determina a grossura da borda //(altura (do botão) - 95%)
                      ),
                      textStyle: TextStyle(
                          fontSize:
                              tamanho_Texto), //(altura (da tela)) - 96,875%
                    ),

                    onPressed: () {
                      final String local = _controladorLocal.text;
                      final double cep = double.parse(_controladorCep.text);
                      final String uf = _controladorUf.text;
                      final String logradouro = _controladorLogradouro.text;
                      final String bairro = _controladorBairro.text;
                      final String tp_Residencia = _controladorResidencia.text;
                      final int id = int.parse(_controladorId.text);

                      final Formulario cadastro = Formulario(local, cep, uf,
                          logradouro, bairro, tp_Residencia, id);
                      print(cadastro);
                    },
                  ),
                ),
              )
            ],
          )

          //const ScrollView(scrollDirection: Axis.vertical, shrinkWrap: true, reverse: false,anchor: altura_Tela),
        ],
      ),

      // ElevatedButton(
      //   child: Text('CONTINUAR'),
      //   onPressed: () {
      //     final String local = _controladorLocal.text;
      //     final double cep = double.parse(_controladorCep.text);
      //     final String uf = _controladorUf.text;
      //     final String logradouro = _controladorLogradouro.text;
      //     final String bairro = _controladorBairro.text;
      //     final String tp_Residencia = _controladorResidencia.text;
      //     final int id = int.parse(_controladorId.text);

      //     final Formulario cadastro = Formulario(
      //         local, cep, uf, logradouro, bairro, tp_Residencia, id);
      //     print(cadastro);
      //   },
      // ),
    );
  }
}
