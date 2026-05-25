import 'package:flutter/material.dart';

class QuartaTela extends StatefulWidget {
  @override
  State<QuartaTela> createState() => _QuartaTelaState();
}

class _QuartaTelaState extends State<QuartaTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meus Jogos',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 4),
        ),
        backgroundColor: Color.fromARGB(255, 253, 177, 115),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.gamepad,
              size: 100,
              color: Color.fromARGB(255, 253, 177, 115),
            ),
            const SizedBox(height: 20),
            Text(
              "Bem-vindo(a) à página de jogos!",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 253, 177, 115)),
              textAlign: TextAlign.center,
            ),
            ListTile(
              leading:
                  Icon(Icons.star, color: Color.fromARGB(255, 253, 177, 115)),
              title: Text('Favorito'),
              subtitle: Text('Meu jogo favorito é Outer Wilds'),
            ),
            ListTile(
              leading:
                  Icon(Icons.check, color: Color.fromARGB(255, 253, 177, 115)),
              title: Text('Muito bons'),
              subtitle: Text(
                  'Meus jogos favoritos seguintes são: Life Is Strange, Clair Obscur, SpiritFarer, Enigma do Medo'),
            ),
            ListTile(
              leading:
                  Icon(Icons.handshake, color: Color.fromARGB(255, 253, 177, 115)),
              title: Text('Vale a pena jogar!'),
              subtitle: Text(
                  'Jogos que são bons e valem muito a pena jogar: Ori, Firewatch, Detroit'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 253, 177, 115)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Voltar para a página anterior',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
