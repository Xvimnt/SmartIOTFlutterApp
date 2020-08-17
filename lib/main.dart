import 'package:flutter/material.dart';
import 'package:mailbox/pages/menu.dart';
import 'package:mailbox/pages/info.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes:{
  '/': (context) => Home(),
  '/info': (context) => Info(),
},));
