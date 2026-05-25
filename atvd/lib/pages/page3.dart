import 'package:flutter/material.dart';
import './page1.dart';

class TerceiraTela extends StatefulWidget {
  @override
  State<TerceiraTela> createState() => _TerceiraTelaState();
}

class _TerceiraTelaState extends State<TerceiraTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Séries / Animes',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 4),
        ),
        backgroundColor: Color.fromARGB(255, 253, 228, 115),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.movie_filter,
              size: 100,
              color: Color.fromARGB(255, 253, 228, 115),
            ),
            const SizedBox(height: 20),
            Text(
              "Bem-vindo(a) à página de Séries/Animes!",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 253, 228, 115)),
              textAlign: TextAlign.center,
            ),
            ListTile(
              leading:
                  Icon(Icons.star, color: Color.fromARGB(255, 253, 228, 115)),
              title: Text('Favorito'),
              subtitle: Text(
                  'Minha série favorita é Dark, e meu anime favorito é Attack On Titan'),
            ),
            ListTile(
              leading:
                  Icon(Icons.check, color: Color.fromARGB(255, 253, 228, 115)),
              title: Text('Muito bons'),
              subtitle: Text(
                  'Outras séries e animes muito bons são: Chainsaw-man, The Boys, Jujutsu Kaisen, Junji Ito'),
            ),
            ListTile(
              leading: Icon(Icons.handshake,
                  color: Color.fromARGB(255, 253, 228, 115)),
              title: Text('Vale a pena assistir!'),
              subtitle: Text(
                  'Séries/Animes que são bons e valem muito a pena assistir: La casa de papel, Kimetsu'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 253, 228, 115)),
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
