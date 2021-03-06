import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pag3 extends StatelessWidget {
  //const Pag3({Key? key}) : super(key: key);
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
    final double margem_Lateral = largura_Tela * 0.087;
    final double tamanho_Texto = altura_Tela * 0.0175; //98,125%
    final double texto_Botao = altura_Tela * 0.03; //97%
    //final double margem_Cima = altura_Tela * 0.042; //-95,8%
    //final double margemEntreCampos = altura_Tela * 0.0261; //-97,39%
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: tamanho_Texto));
    final double redondo_Botao = 100;
    final double grossura_Botao = altura_Botao * 0.05; //95%
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Atribuir aluguel'),
        centerTitle: true,
        toolbarHeight: altura_AppBar,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Locador/Locat??rio',
                labelText: 'Pessoa',
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 18, 199, 121), fontSize: 20),
              ), //Local
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Local Cadastrado',
                labelText: 'Nome',
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 18, 199, 121), fontSize: 20),
              ), //Local
            ),
            const SizedBox(height: 30),
            Container(
              width:
                  largura_Botao, //tem que ser determinado pelo tamanho do texto 20px e do icone 50/60 juntos
              height: altura_Botao, //altura (da tela) - 90,625%
              child: ElevatedButton(
                child: const Text('VOLTAR'), //aplica o texto do bot??o
                style: ElevatedButton.styleFrom(
                  //estilo dos componentes do bot??o
                  onPrimary: Colors.black, // muda a cor das letras do botao
                  primary: Colors.white, // muda a cor do fundo do bot??o
                  shape: RoundedRectangleBorder(
                    // arredonda as bordas
                    borderRadius: BorderRadius.all(Radius.circular(
                        redondo_Botao)), //(altura (do bot??o)) - 44%
                    side: BorderSide(
                        color: Color.fromARGB(255, 0, 230, 118),
                        width:
                            grossura_Botao), // coloca cor e determina a grossura da borda //(altura (do bot??o) - 95%)
                  ),
                  textStyle: TextStyle(
                      fontSize: tamanho_Texto), //(altura (da tela)) - 96,875%
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width:
                  largura_Botao, //tem que ser determinado pelo tamanho do texto 20px e do icone 50/60 juntos
              height: altura_Botao, //altura (da tela) - 90,625%
              child: ElevatedButton(
                child: const Text('CONTINUAR'), //aplica o texto do bot??o
                style: ElevatedButton.styleFrom(
                  //estilo dos componentes do bot??o
                  onPrimary: Colors.white, // muda a cor das letras do botao
                  primary: const Color.fromARGB(
                      255, 0, 230, 118), // muda a cor do fundo do bot??o
                  shape: RoundedRectangleBorder(
                    // arredonda as bordas
                    borderRadius:
                        BorderRadius.all(Radius.circular(redondo_Botao)),
                    side: BorderSide(
                        color: const Color.fromARGB(255, 0, 230, 118),
                        width:
                            grossura_Botao), // coloca cor e determina a grossura da borda //(altura (do bot??o) - 95%)
                  ),
                  textStyle: TextStyle(
                      fontSize: tamanho_Texto), //(altura (da tela)) - 96,875%
                ),

                onPressed: () {
                  // final String local = _controladorLocal.text;
                  // final double cep = double.parse(_controladorCep.text);
                  // final String uf = _controladorUf.text;
                  // final String logradouro = _controladorLogradouro.text;
                  // final String bairro = _controladorBairro.text;
                  // final String tp_Residencia = _controladorResidencia.text;
                  // final int id = int.parse(_controladorId.text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
