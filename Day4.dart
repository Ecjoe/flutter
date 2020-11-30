import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
    title:"basic app",
    home:Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
   ),
  );
}

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
          child: Column(
            children: <Widget>[
                Image.asset("assets/images/a.jpeg",
                fit: BoxFit.cover,
              ),

            SizedBox(height: 20,),
            Text(myText,
                  style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller:_nameController,
                keyboardType:TextInputType.text,
                decoration:InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name",

                ),
              ),
            )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("cjnan"),
                accountEmail: Text("caknk@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://th.bing.com/th/id/OIP.PyBVJGJUP64l286gwlferwHaJA?pid=Api&w=1535&h=1866&rs=1",
              ),
                //backgroundColor:Colors.lightBlueAccent,
            ),

            ),
            /*DrawerHeader(child: Text(
              "Hello",
              style: TextStyle(color:Colors.white),
            ),
            decoration: BoxDecoration(color: Colors.purple),
            ),*/
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle:Text("Personal"),
              trailing:Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle:Text("abc@gmail.com"),
              trailing:Icon(Icons.send),
            ),
          ],
        ),
      ),
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


