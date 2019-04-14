import 'package:flutter/material.dart';
import 'package:pian_bol/note.dart';
import 'package:pian_bol/tile.dart';
class Line extends AnimatedWidget { final int linNum; final List<Note> currNot; final Function(Note) onTTap; const Line({Key key, this.currNot, this.linNum, this.onTTap, Animation<double> animation}): super(key: key, listenable: animation); @override Widget build(BuildContext context) { Animation<double> animation = super.listenable; double height = MediaQuery.of(context).size.height; double tileHeight = height / 4; List<Note> thisLineNotes = currNot.where((note) => note.line == linNum).toList(); List<Widget> tiles = thisLineNotes.map((note) {  int index = currNot.indexOf(note); double offset = (3 - index + animation.value) * tileHeight; return Transform.translate( offset: Offset(0, offset), child: Tile( height: tileHeight, st: note.state, onTap: () => onTTap(note), ), ); }).toList(); return SizedBox.expand( child: Stack( children: tiles, ),); } }
