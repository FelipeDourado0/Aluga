import 'package:aluga/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pag2 extends StatelessWidget {
  // const Pag2({Key? key}) : super(key: key);
  //https://www.alura.com.br/artigos/criando-formulario-com-flutter?gclid=Cj0KCQjw1tGUBhDXARIsAIJx01n3MdC-Vt39OZEosWNOB4VYNAkJJrkE6v5GM0IDdyJsirgyQH5UndUaAqlhEALw_wcB
  //https://www.alura.com.br/artigos/criando-formulario-com-flutter?gclid=Cj0KCQjw1tGUBhDXARIsAIJx01n3MdC-Vt39OZEosWNOB4VYNAkJJrkE6v5GM0IDdyJsirgyQH5UndUaAqlhEALw_wcB
  //https://www.alura.com.br/artigos/criando-formulario-com-flutter?gclid=Cj0KCQjw1tGUBhDXARIsAIJx01n3MdC-Vt39OZEosWNOB4VYNAkJJrkE6v5GM0IDdyJsirgyQH5UndUaAqlhEALw_wcB
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRIAR ALUGUEL'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controladorLocal,
            ), //Local
            TextField(
              controller: _controladorCep,
            ), //CEP
            TextField(
              controller: _controladorUf,
            ), //UF
            TextField(
              controller: _controladorLogradouro,
            ), //Nome logradouro
            TextField(
              controller: _controladorBairro,
            ), //Bairro/Distrito
            TextField(
              controller: _controladorResidencia,
            ), //tipo residencia
            TextField(
              controller: _controladorId,
            ), //identificador unico

            const SizedBox(height: 30),

            ElevatedButton(
              child: Text('VOLTAR'),
              onPressed: () {},
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              child: Text('CONTINUAR'),
              onPressed: () {
                final String local = _controladorLocal.text;
                final double cep = double.parse(_controladorCep.text);
                final String uf = _controladorUf.text;
                final String logradouro = _controladorLogradouro.text;
                final String bairro = _controladorBairro.text;
                final String tp_Residencia = _controladorResidencia.text;
                final int id = int.parse(_controladorId.text);

                final Formulario cadastro = Formulario(
                    local, cep, uf, logradouro, bairro, tp_Residencia, id);
                print(cadastro);
              },
            ),
          ],
        ),
      ),
    );
  }
}
