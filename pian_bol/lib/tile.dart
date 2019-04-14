import 'package:flutter/material.dart';
import 'package:pian_bol/note.dart';
class Tile extends StatelessWidget { final NoteState st; final double height; final VoidCallback onTap; const Tile({Key key, this.height, this.st, this.onTap}) : super(key: key); @override Widget build(BuildContext context) { return SizedBox( width: double.infinity, height: height, child: GestureDetector( onTapDown: (_) => onTap(), child: Container(color: color), ), ); } Color get color { switch (st) { default: return Colors.black; } } }
