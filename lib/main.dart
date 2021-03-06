import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_quiz/questao.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é a seu animal favorito?',
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            body: Column(
              children: <Widget>[
                Questao(perguntas[_perguntaSelecionada]),
                RaisedButton(
                  child: Text('Resposta 1'),
                  onPressed: _responder,
                ),
                RaisedButton(
                  child: Text('Resposta 2'),
                  onPressed: _responder,
                ),
                RaisedButton(
                  child: Text('Resposta 3'),
                  onPressed: _responder,
                )
              ],
            )));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PerguntaAppState();
  }
}
