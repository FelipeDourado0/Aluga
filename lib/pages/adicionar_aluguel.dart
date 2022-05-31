import 'package:flutter/material.dart';
import 'package:aluga/pages/atribuir_aluguel.dart';
class Pag2 extends StatelessWidget {
  const Pag2({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar aluguel'),
      ),
      body: Center(
        child: Column(
         mainAxisSize: MainAxisSize.min,
         children: <Widget>[ 
          ElevatedButton( 
        
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Voltar!'),
        ),
          const SizedBox(height: 30),  
          ElevatedButton(
         
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Pag4() ),
           );  
          
          },
          child: const Text('Continuar!'),
        ),
  

        ], 

         ),
      ),
    );
  }
}