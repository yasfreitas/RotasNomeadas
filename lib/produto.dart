
import 'package:flutter/material.dart';


class Produto extends StatefulWidget {
  const Produto({super.key});

  @override
  State<Produto> createState() => _ProdutoState();
}

class _ProdutoState extends State<Produto> {
  TextEditingController nomeController = TextEditingController();//controller para "armazenar" os dados inseridos
  TextEditingController descricaoController = TextEditingController();//controller para "armazenar" os dados inseridos
  TextEditingController precoController = TextEditingController();//controller para "armazenar" os dados inseridos
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
        title: Text("Cadastro de Produto"),//título
        centerTitle: true,//título no centro
        backgroundColor: Colors.lightGreenAccent,//muda a cor do appBar
        actions: <Widget>[
          IconButton(onPressed: _limpar_Tela,//adiciona um botão, e quando clicar vai limpar a tela
              icon: Icon(Icons.refresh)//ícone dentro do appBar
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),//para arrumar a configuração da tela, e também conseguir deslizar na tela
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.electric_bolt,// ícone dentro do body
              size: 120.0,//tamanho do ícone
              color: Colors.lightGreenAccent//cor do ícone
            ),
            TextField(
              keyboardType: TextInputType.text,//coloca um texto para um campo
              decoration: InputDecoration(
                  labelText: "Nome",//nome do texto
                  labelStyle: TextStyle(color: Colors.grey)),//cor do texto
              textAlign: TextAlign.center,//alinha o texto no centro
              style: TextStyle(fontSize: 25.0),
              controller: nomeController,//onde vai guardar a informação
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
                height: 50.0,//tamanho do padding
                child: ElevatedButton(//botão acrescentado
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreenAccent,//cor do botão
                      textStyle: TextStyle(fontSize: 25.0),//tamanho do texto
                    ),
                    onPressed: _cadastrar_produto,//quando clicado vai acionar o método (_cadastrar_produto)
                    child: const Text("Cadastrar")//texto dentro do botão
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
