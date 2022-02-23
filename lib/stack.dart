import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stack extends StatefulWidget {
  @override
  _stackState createState() => _stackState();
}

class _stackState extends State<stack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack'),
          backgroundColor: Theme.of(context).primaryColor,
        ), //AppBar
        body: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: Center(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 300,
                    color: Theme.of(context).primaryColor,
                  ), //Container
                  Container(
                    width: 250,
                    height: 250,
                    color: const Color(0xff00bcd4),
                  ), //Container
                  Container(
                    height: 200,
                    width: 200,
                    color: const Color(0xff26c6da),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: const Color(0xff4dd0e1),
                  ), //Container
                ], //<Widget>[]
              ), //Stack
            ), //Center
          ), //SizedBox
        ) //Center
    ); //Scaffold
  }
}
