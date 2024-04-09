import 'package:flutter/material.dart';


class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _counter = 0;//no ínicio os números serão zerados

  void _incrementCounter() {
    setState(() {
      _counter++;//esse método serve para aumentar
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;//esse método serve para diminuir
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Contador de números"),//adicionar um título na página
          centerTitle: true,//adicionar o título no centro da tela
          backgroundColor: Colors.red,// adicionar a cor do appBar
          actions: <Widget>[]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(//texto qua vai aparecer na tela
              'Quantidade de vezes que você apertou esse botão:',
            ),
            Text(
              '$_counter',//para contar os números
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(// adiciona um botão
                      onPressed: _incrementCounter, child: const Icon(Icons.add)//botão para adicionar números
                  ),
                  ElevatedButton(
                      onPressed: _decrementCounter, child: const Icon(Icons.remove)// botão para remover números
                  )]),

          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/
    );
  }
}
