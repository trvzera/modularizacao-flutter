import 'package:flutter/material.dart';
import './page1.dart';

class QuintaTela extends StatefulWidget {
  @override
  State<QuintaTela> createState() => _QuintaTelaState();
}

class _QuintaTelaState extends State<QuintaTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favoritos',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 4),
        ),
        backgroundColor: Color.fromARGB(255, 253, 115, 115),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.movie,
              size: 100,
              color: Color.fromARGB(255, 253, 115, 115),
            ),
            const SizedBox(height: 20),
            Text(
              "Bem-vindo(a) à página de filmes!",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 253, 115, 115)),
              textAlign: TextAlign.center,
            ),
            ListTile(
              leading:
                  Icon(Icons.star, color: Color.fromARGB(255, 253, 115, 115)),
              title: Text('Favorito'),
              subtitle: Text('Meu filme favorito é Ainda Estou Aqui!'),
            ),
            ListTile(
              leading:
                  Icon(Icons.check, color: Color.fromARGB(255, 253, 115, 115)),
              title: Text('Muito bons'),
              subtitle: Text('Meus filmes favoritos seguintes são: Duna 1 e 2'),
            ),
            ListTile(
              leading: Icon(Icons.handshake,
                  color: Color.fromARGB(255, 253, 115, 115)),
              title: Text('Vale a pena assistir!'),
              subtitle: Text(
                  'Filmes que são bons e valem muito a pena assistir:De volta para o futuro e Interstellar'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 253, 115, 115)),
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
