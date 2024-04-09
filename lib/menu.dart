import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'), //texto título do projeto
        centerTitle: true, //para por o texto no centro da tela
        backgroundColor: Colors.deepPurple, //adicionar a cor do appBar
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10), //para arrumar a configuração da tela, e também conseguir deslizar na tela
        child: Column( //"filho" colocar em colunas
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[ //adicionar os "filhos" do body
            const Icon( //parte do ícone da tela
            Icons.store, //determina qual o ícone escolhido
            size: 120.0,// determina o tamanho do ícone
            color: Colors.deepPurple,// determina a cor do ícone
            ),
          Column(// colocar um colunas os botões
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ElevatedButton( //adicionar um botão
                child: const Text('IMC'),// título do botão
                onPressed: (){
                  Navigator.pushNamed(context, '/imc');// quando pressionado o botão, vai encaminhar para a página determinada
                }
              ),
              ElevatedButton(//adicionar um botão
                  child: const Text('Contador'),// título do botão
                  onPressed: (){
                    Navigator.pushNamed(context, '/contador');// quando pressionado o botão, vai encaminhar para a página determinada
                  }
              ),
              ElevatedButton(//adicionar um botão
                  child: const Text('Cadastro de Usuário'),// título do botão
                  onPressed: (){
                    Navigator.pushNamed(context, '/usuario');// quando pressionado o botão, vai encaminhar para a página determinada
                  }
              ),
              ElevatedButton(//adicionar um botão
                  child: const Text('Cadastro de Produto'),// título do botão
                  onPressed: (){
                    Navigator.pushNamed(context, '/produto');// quando pressionado o botão, vai encaminhar para a página determinada
                  }
              ),
            ])
          ],
        ),
      ),
    );
  }
}
