// Importando o pacote do Material Design
import 'package:flutter/material.dart';

// Método principal para executar o app
void main() {
  runApp(new MaterialApp(
      title: 'Contador de Pessoas',
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Pessoas: 0",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: FlatButton(
                  child: Text(
                    "-1",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Text("Pode entrar",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0))
        ],
      )));
}
