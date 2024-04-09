import 'package:flutter/material.dart';
import 'imc.dart';
import 'usuario.dart';
import 'produto.dart';
import 'contador.dart';
import 'menu.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas Nomeadas',
      initialRoute: '/',
      routes: { '/': (context) => Menu(),
        '/imc': (context) => const Imc(),
        '/usuario': (context) => const Usuario(),
        '/produto': (context) => const Produto(),
        '/contador': (context) => const Contador(),
      },
    );
  }
}