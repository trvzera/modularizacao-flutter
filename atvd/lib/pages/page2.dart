import 'package:flutter/material.dart';

class SegundaTela extends StatefulWidget {
  @override
  State<SegundaTela> createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meu Perfil',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 4),
        ),
        backgroundColor: Color.fromARGB(255, 115, 166, 253),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              size: 100,
              color: Color.fromARGB(255, 115, 166, 253),
            ),
            const SizedBox(height: 20),
            Text(
              "Bem-vindo(a) à página de perfil!",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 115, 166, 253)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ListTile(
              leading:
                  Icon(Icons.person, color: Color.fromARGB(255, 115, 166, 253)),
              title: Text('Nome'),
              subtitle: Text(
                  'Me chamo Giovanni Trivellato'),
            ),
            ListTile(
              leading:
                  Icon(Icons.location_city, color: Color.fromARGB(255, 115, 166, 253)),
              title: Text('Minha cidade'),
              subtitle: Text(
                  'Eu nasci e moro em Belo Horizonte'),
            ),
            ListTile(
              leading: Icon(Icons.numbers,
                  color: Color.fromARGB(255, 115, 166, 253)),
              title: Text('Idade'),
              subtitle: Text(
                  'Tenho 17 anos!'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 115, 166, 253)),
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
