import 'package:flutter/material.dart';

import '../changeNameCard.dart';
import '../drawer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _nameController=TextEditingController();
  var myText="Change me";
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Day1"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child:SingleChildScrollView(
          child: Card(
            child: changeNameCard(myText: myText, nameController: _nameController),
          ),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText=_nameController.text;
          setState(() {

          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
