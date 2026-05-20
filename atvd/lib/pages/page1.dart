import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/card_icone.dart';

class TeladDesign extends StatefulWidget {
  @override
  State<TeladDesign> createState() => _TeladDesignState();
}

class _TeladDesignState extends State<TeladDesign> {
  String mensagem = "Você está na página Incial";

  void mudarTexto(String msg) {
    mensagem = msg;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meu App de Ícones',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 4),
        ),
        backgroundColor: Colors.black38,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 115, 166, 253),
              ),
            ),
            Cartao(
              Icons.person,
              "Meu Perfil",
              "Clique no botão para ir perfil",
              onPressed: () {
                setState(() {
                  mudarTexto("Teste");
                });
              },
              Color.fromARGB(255, 115, 166, 253),
              const Color.fromARGB(255, 213, 242, 255),
            )
          ],
        ),
      ),
    );
  }
}
