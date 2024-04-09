
import 'package:flutter/material.dart';



class Usuario extends StatefulWidget {
  const Usuario({super.key});

  @override
  State<Usuario> createState() => _UsuarioState();
}

class _UsuarioState extends State<Usuario> {
  TextEditingController usuarioController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar_Tela(){
    usuarioController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }

  void _cadastrar_usuario(){
    setState(() {
      _textoInfo = "Dados cadastrados com sucesso!";
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Usuário"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
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
              Icons.person,
              size: 120.0,
              color: Colors.yellow,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Usuário",
                  labelStyle: TextStyle(color: Colors.grey)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: usuarioController,
            ),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.grey)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: senhaController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      textStyle: TextStyle(fontSize: 25.0),
                    ),
                    onPressed: _cadastrar_usuario,
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
