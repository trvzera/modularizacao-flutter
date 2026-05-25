import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/card_icone.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';

class TeladDesign extends StatefulWidget {
  @override
  State<TeladDesign> createState() => _TeladDesignState();
}

String mensagem = "Você está na página Incial";

class _TeladDesignState extends State<TeladDesign> {
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
              "Clique no botão para ir para perfil",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaTela()),
                );
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(24.0),
                      width: double.infinity,
                      height: 250,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Meu Perfil!',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 115, 166, 253)),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Sou Giovanni Trivellato!',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 28, 39, 59)),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 115, 166, 253),
                              minimumSize: const Size(double.infinity, 50),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Fechar Modal',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 28, 39, 59)),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              Color.fromARGB(255, 115, 166, 253),
              const Color.fromARGB(255, 213, 242, 255),
            ),
            Cartao(
              Icons.movie_filter,
              "Minhas Séries/Animes",
              "Clique no botão para ir para Séries/Filmes",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TerceiraTela()),
                );
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(24.0),
                      width: double.infinity,
                      height: 250,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Minhas Séries e Animes',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 253, 228, 115)),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Minha série favorita é Dark, e meu anime favorito é Attack On Titan',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 63, 57, 29)),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 253, 228, 115),
                              minimumSize: const Size(double.infinity, 50),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Fechar Modal',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 63, 57, 29)),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              Color.fromARGB(255, 245, 203, 15),
              const Color.fromARGB(255, 255, 239, 185),
            ),
            Cartao(
              Icons.gamepad,
              "Meus Jogos",
              "Clique no botão para ir para jogos",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuartaTela()),
                );
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(24.0),
                      width: double.infinity,
                      height: 250,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Jogo favorito!',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 253, 177, 115)),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Outer Wilds é o melhor jogo de todos!',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 73, 53, 36)),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 253, 177, 115),
                              minimumSize: const Size(double.infinity, 50),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Fechar Modal',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 73, 53, 36)),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              Color.fromARGB(255, 253, 177, 115),
              const Color.fromARGB(255, 255, 226, 213),
            ),
            Cartao(
              Icons.movie,
              "Meus Filmes",
              "Clique no botão para ir para filmes",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuintaTela()),
                );
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(24.0),
                      width: double.infinity,
                      height: 250,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Filme favorito!',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 253, 115, 115)),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Meu filme favorito é Ainda Estou Aqui!',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 70, 31, 31)),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 253, 115, 115),
                              minimumSize: const Size(double.infinity, 50),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Fechar Modal',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 66, 31, 31)),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              Color.fromARGB(255, 253, 115, 115),
              const Color.fromARGB(255, 255, 213, 213),
            )
          ],
        ),
      ),
    );
  }
}
