import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  )
  );



}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  var _frases = [
    "A persistência é o caminho do êxito.",
    "As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.",
    "Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer.",
    "No meio da dificuldade encontra-se a oportunidade.",
    "Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação.",
    "O insucesso é apenas uma oportunidade para recomeçar com mais inteligência.",
    "Quando você quer alguma coisa, todo o universo conspira para que você realize o seu desejo.",

  ];

  var _fraseGerada = "Clique a baixo para gerar uma frase!";

  //função para gerar as frase aleatoriamente
  void _geraFrase(){

    var numeroSorteado = Random().nextInt( _frases.length );
    print(numeroSorteado);


    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });

  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("FRASES DO DIA"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(28),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),

        child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("imagens/logo.png"),
                Text( _fraseGerada ,
               textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ), 
                RaisedButton(
                 child: Text(
                     "Nova Frase",
                         style: TextStyle(fontSize:26,
                         color: Colors.white,
                           fontWeight: FontWeight.bold,

                         )
                 ),
                  color: Colors.green,
                  onPressed: _geraFrase,
                ),
              ]
        ),

      ),

    );
  }
}
