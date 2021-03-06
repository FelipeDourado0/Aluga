import 'package:aluga/pages/cadastrar_perfil.dart';
import 'package:aluga/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    final double largura_Tela = MediaQuery.of(context).size.width;
    final double altura_Tela = MediaQuery.of(context).size.height;

    final double largura_Botao = largura_Tela * 0.365; //63,5%
    final double altura_Botao = altura_Tela * 0.0683; //93,17%
    final double altura_AppBar = altura_Tela * 0.1292;
    final double margem_Lateral = largura_Tela * 0.087;
    final double tamanho_Texto = altura_Tela * 0.0195;
    final double texto_Botao = altura_Tela * 0.03; //97%
    //final double margem_Cima = altura_Tela * 0.042; //-95,8%
    //final double margemEntreCampos = altura_Tela * 0.0261; //-97,39%
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: tamanho_Texto));
    final double redondo_Botao = 100;
    final double grossura_Botao = altura_Botao * 0.05; //95%
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN'),
        centerTitle: true,
        toolbarHeight:
              altura_AppBar, // altura (da tela) - 90,625%/////////////////////////////////////////////
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 18, 199, 121), fontSize: tamanho_Texto),
              ), //Local
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Senha',
                labelText: 'Senha',
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 18, 199, 121),
                    fontSize: tamanho_Texto),
              ), //Local
            ),
            const SizedBox(height: 60),
            Container(
              width:
                  largura_Tela, //tem que ser determinado pelo tamanho do texto 20px e do icone 50/60 juntos
              height: altura_Botao, //altura (da tela) - 90,625%
              child: ElevatedButton(
                child: const Text('LOG IN'), //aplica o texto do bot??o
                style: ElevatedButton.styleFrom(
                  //estilo dos componentes do bot??o
                  onPrimary: Colors.white, // muda a cor das letras do botao
                  primary: Color.fromARGB(255, 0, 230, 118), // muda a cor do fundo do bot??o
                  shape: RoundedRectangleBorder(
                    // arredonda as bordas
                    borderRadius: BorderRadius.all(Radius.circular(
                        6)), //(altura (do bot??o)) - 44%
                    side: BorderSide(
                        color: Color.fromARGB(255, 0, 230, 118),
                        width:
                            grossura_Botao), // coloca cor e determina a grossura da borda //(altura (do bot??o) - 95%)
                  ),
                  textStyle: TextStyle(
                      fontSize: tamanho_Texto), //(altura (da tela)) - 96,875%
                ),
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyStatefulWidget(title: 'home',)),
                      );
                },
              ),
            ),
            const SizedBox(height: 30),
            const Text('OU'),
            const SizedBox(height: 30),
            Container(
              width:
                  largura_Tela, //tem que ser determinado pelo tamanho do texto 20px e do icone 50/60 juntos
              height: altura_Botao, //altura (da tela) - 90,625%
              child: ElevatedButton(
                child: const Text('CADASTRAR'), //aplica o texto do bot??o
                style: ElevatedButton.styleFrom(
                  //estilo dos componentes do bot??o
                  onPrimary: Colors.white, // muda a cor das letras do botao
                  primary: Color.fromARGB(255, 29, 161, 242), // muda a cor do fundo do bot??o
                  shape: RoundedRectangleBorder(
                    // arredonda as bordas
                    borderRadius: BorderRadius.all(Radius.circular(
                        6)), //(altura (do bot??o)) - 44%
                    side: BorderSide(
                        color: Color.fromARGB(255, 29, 161, 242),
                        width:
                            grossura_Botao), // coloca cor e determina a grossura da borda //(altura (do bot??o) - 95%)
                  ),
                  textStyle: TextStyle(
                      fontSize: tamanho_Texto), //(altura (da tela)) - 96,875%
                ),
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => cadastrar_perfil()),
                      );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
