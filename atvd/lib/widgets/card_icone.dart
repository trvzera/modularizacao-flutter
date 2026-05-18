import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/page1.dart';

class Cartao extends StatelessWidget{
  final String icone ;
  final String titulo;
  final String descricao;
  final String cor;
  
  const Cartao(this.icone, this.titulo, this.descricao, this.cor, {super.key});

  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Card(
        child: Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
              onPressed: () {
                print("Aqui vai mudar o texto da descricao da pagina");
              },
              child: Icon(
                Icons.pets, // MUDAR O ICONE AQUI 
                color: Colors.blue,
                size: 25
              ),
            ),
            Column(
              children: [
                Text(
                  titulo,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: cores.primary
                  ),
                ),
                Text(
                  descricao,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    color: cores.secondary
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  
}