import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"basic app",
      home:Scaffold(
      appBar: AppBar(
        title: Text("Day1"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.black,
            width: 200,
            height: 400,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Colors.green,
              ),
                Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}


