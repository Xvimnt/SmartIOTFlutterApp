import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Mailbox'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      backgroundColor: Colors.blue[50],
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[Icon(Icons.mail_outline), Text('vacio')],
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[Icon(Icons.line_weight), Text('peso')],
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[Icon(Icons.opacity), Text('lleno')],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.info),
        onPressed: () {},
        backgroundColor: Colors.blue[300],
      ),
    );
  }
}
