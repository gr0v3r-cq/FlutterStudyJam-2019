import 'package:flutter/material.dart';
import 'lista_citta.dart';
import 'screen_cerca_biglietto.dart';

class ScreenCitta extends StatefulWidget
{
  Citta _citta;
  ScreenCitta(this._citta);

  @override
  State createState() => new ScreenCittaState();
}

class ScreenCittaState extends State<ScreenCitta>
{
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: new Text("${widget._citta.nome}"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: null,)
        ],
      ),
      body: new ListView(
        children: <Widget>[
          CardRoom("assets/citta/kyoto-0.jpg", "Travel 1"),
          CardRoom("assets/citta/kyoto-1.jpg", "Travel 2"),
          CardRoom("assets/citta/kyoto-2.jpg", "Travel 3"),
          CardRoom("assets/citta/kyoto-3.jpg", "Travel 4"),
        ],
      )
    );
  }
}