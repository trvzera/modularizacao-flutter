import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'pages/page1.dart';

void main() {
  // O DevicePreview ajuda a testar o layout em diferentes tamanhos de tela (responsividade)
  runApp(DevicePreview(builder: (context) => MeuApp()));
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: TeladDesign(),
    );
  }
}
