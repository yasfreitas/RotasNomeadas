
import 'package:flutter/material.dart';


class Produto extends StatefulWidget {
  const Produto({super.key});

  @override
  State<Produto> createState() => _ProdutoState();
}

class _ProdutoState extends State<Produto> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  TextEditingController precoController = TextEditingController();
  String _textoInfo = "Casdastre seu produto!";

  void _limpar_Tela(){
    nomeController.text = "";
    descricaoController.text = "";
    precoController.text = "";
    setState(() {
      _textoInfo = "Cadastre seu produto!!";
    });
  }

  void _cadastrar_produto(){
    setState(() {
      _textoInfo = "Produto cadastrado com sucesso!";
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Produto"),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
        actions: <Widget>[
          IconButton(onPressed: _limpar_Tela,
              icon: Icon(Icons.refresh)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.electric_bolt,
              size: 120.0,
              color: Colors.lightGreenAccent,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Nome",
                  labelStyle: TextStyle(color: Colors.grey)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: nomeController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Descrição",
                  labelStyle: TextStyle(color: Colors.grey)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: descricaoController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Preço",
                  labelStyle: TextStyle(color: Colors.grey)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: precoController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreenAccent,
                      textStyle: TextStyle(fontSize: 25.0),
                    ),
                    onPressed: _cadastrar_produto,
                    child: const Text("Cadastrar")
                ),
              ),
            ),
            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
