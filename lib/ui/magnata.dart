import 'package:flutter/material.dart';

class Magnata extends StatefulWidget {
  @override
  _MagnataState createState() => _MagnataState();
}

class _MagnataState extends State<Magnata> {
  int _contadorGrana = 0;

  void _zerarGrana() {
    setState(() {
      _contadorGrana = 0;
    });
  }

  void _mandaGrana() {
    setState(() {
      _contadorGrana = _contadorGrana + 1000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
            color: Colors.black12,
            width: 60,
            child: IconButton(
              onPressed: _zerarGrana,
              icon: Icon(Icons.money_off),
              iconSize: 28,
              splashColor: Colors.deepPurple,
            ),
          ),
        ],
        title: Text(
          "Magnata",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
      body: Container(
        color: Colors.green[600],
        child: Column(
          children: <Widget>[
            Container(
              //IMAGEM PNG
              margin: EdgeInsets.only(top: 30),
              height: 140,
              child: Image.asset("assets/emoji_rico.png"),
            ),
            Center(
              //FIQUE RICO
              child: Text(
                "Fique Rico",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.white70),
              ),
            ),
            Expanded(
              //VALOR $$$
              child: Container(
                margin: EdgeInsets.only(top: 40),
                color: Colors.white,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "\$ $_contadorGrana",
                      style: TextStyle(
                        color: _contadorGrana >= 10000 ? Colors.red[600] : Colors.green[600], //cor do texto é alterada quando passa de 10.000
                        fontSize: 55,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              //BOTÃO "MAIS GRANA"
              child: Center(
                child: FlatButton(
                  onPressed: _mandaGrana,
                  splashColor: Colors.green,
                  padding: EdgeInsets.only(right: 30, left: 30),
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                  child: Text(
                    "Mais grana!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
