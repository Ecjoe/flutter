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

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day1"),
      ),
      body: Container(),
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
        )
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      );
  }
}


