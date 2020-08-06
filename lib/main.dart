import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Smart Mailbox'),
          centerTitle: true,
          backgroundColor: Colors.blue[300],
        ),
        body: Center(
          child: Text(
            'Hello world',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.grey[400],
              fontFamily: 'QuickSand',
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('click'),
          onPressed: () {},
          backgroundColor: Colors.blue[300],
        ),
      ),
    ));
