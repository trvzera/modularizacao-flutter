import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/card_icone.dart';

class TeladDesign extends StatefulWidget {
  @override
  State<TeladDesign> createState() => _TeladDesignState();
}

class _TeladDesignState extends State<TeladDesign> {
  String mensagem = "Você está na página Incial";
  @override
  Widget build(BuildContext context){
    final cores = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meu App de Ícones',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 4
          ),
        ),
        backgroundColor: cores.primary,
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
                color: cores.primary,
              ),
            ),
            Cartao(Icons.pets, "Teste", "teste")
        
          ],
        ),
      ),
    );
  }
}