import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print('Responder');
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
                Text(
                  perguntas[perguntaSelecionada],
                ),
                RaisedButton(
                  child: Text('Resposta 1'),
                  onPressed: responder,
                ),
                RaisedButton(
                  child: Text('Resposta 2'),
                  onPressed: responder,
                ),
                RaisedButton(
                  child: Text('Resposta 3'),
                  onPressed: responder,
                )
              ],
            )));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PerguntaAppState();
  }
}
