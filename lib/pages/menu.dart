import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool load = true;
  int weight = 50, waterLevel = 3;

  void getData() async {
    Response response = await get('/enpointLoad');
    Map data = jsonDecode(response.body);

    this.load = data['load'];
    this.weight = data['weight'];
    this.waterLevel = data['waterLevel'];
  }

  @override
  Widget build(BuildContext context) {
    // POST
    //getData();

    return Scaffold(
      appBar: AppBar(
        title: Text('Buzon Inteligente'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 25),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.mail_outline,
                          size: 100,
                        ),
                        if (load) Text('Lleno') else Text('vacio')
                      ],
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.line_weight,
                          size: 100,
                        ),
                        Text('peso: ' + this.weight.toString())
                      ],
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.opacity,
                            size: 100,
                          ),
                          Text('Nivel de Agua: ' + this.waterLevel.toString())
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.info),
        onPressed: () {
          Navigator.pushNamed(context, '/info');
        },
        backgroundColor: Colors.blue[300],
      ),
    );
  }
}
