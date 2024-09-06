import 'package:flutter/material.dart';

push( BuildContext context,Widget view){

  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>view));

}
pushReplacement( BuildContext context,Widget view){

  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>view));

}
// ignore: non_constant_identifier_names
PushAndRemoveUntil( BuildContext context,Widget view){

  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>view),(route)=>false);
  }