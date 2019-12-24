// Importando o pacote do Material Design
import 'package:flutter/material.dart';

// Método principal para executar o app
void main() {
  runApp(new MaterialApp(
      title: 'Contador de Pessoas',
      home: Home()));
}
  class Home extends StatefulWidget {
    @override
    _HomeState createState() => _HomeState();
  }

  class _HomeState extends State<Home> {

  int _number_of_people = 0;

  void _increasePeople() {
    setState(() {
      _number_of_people += 1;
    });
  }

  void _decreasePeople() {
    setState(() {
      _number_of_people -= 1;
    });
  }

  String _showMessage() {
    if (_number_of_people < 0) return "Mundo Invertido?!";
    if (_number_of_people <= 10) return "Pode Entrar :)";
    return "Lotado!";
  }

    @override
    Widget build(BuildContext context) {
      return Stack(
        children: <Widget>[
          Image.asset(
            "images/restaurant.jpg",
            fit: BoxFit.cover,
            height: 1000,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Pessoas: $_number_of_people",
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
                      onPressed: () {
                        debugPrint("+1");
                        _increasePeople();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: FlatButton(
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      onPressed: () {
                        _decreasePeople();
                      },
                    ),
                  ),
                ],
              ),
              Text(_showMessage(),
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 30.0))
            ],
          )
        ],
      );
    }
  }
