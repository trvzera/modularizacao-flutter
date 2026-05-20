import 'package:flutter/material.dart';
import '../main.dart';
import '../pages/page1.dart';

class Cartao extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String descricao;
  final Color cor1;
  final Color cor2;

  const Cartao(this.icone, this.titulo, this.descricao, this.cor1, this.cor2,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: cor2,
        border: Border.all(color: cor1, width: 3.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
        elevation: 0,
        color: cor2,
        child: Row(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    elevation: 10,
                    backgroundColor: cor1,
                    fixedSize: const Size(50, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                onPressed: () {
                  mudarTexto("Página de perfil");
                },
                child: Icon(icone, color: cor2, size: 25)),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(
                        fontSize: 18, color: cor1, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    descricao,
                    style: TextStyle(fontSize: 12, color: cor1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
