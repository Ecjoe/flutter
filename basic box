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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500],
                blurRadius: 5,
                offset:Offset(2.0,5.0)),
          ],
          //color: Colors.cyanAccent,
          gradient: LinearGradient(
            colors: [Colors.amberAccent,Colors.orange],
          ),
          ),
          child: Text("I am a box",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
        )
      ),

      ),
    );
  }
}


