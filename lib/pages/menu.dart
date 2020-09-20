import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool load = true;
  double weight = 50.5;
  int waterLevel = 3;

  void getData() async {
    Response response = await get('http://167.71.93.195:3000/getstats');
    Map data = jsonDecode(response.body);
    print(data);
    this.load = data['load'];
    this.weight =double.parse(data['weight'].toString());
    this.waterLevel = data['waterLevel'];
  }

  @override
  Widget build(BuildContext context) {
    // POST
    getData();

    return Scaffold(
      appBar: AppBar(
        title: Text('Buzon Inteligente'),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 70, horizontal: 25),
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
                          Icons.markunread_mailbox,
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
                          Icons.move_to_inbox,
                          size: 100,
                        ),
                        Text('Peso: ' + this.weight.toString())
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
                            Icons.local_drink,
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
