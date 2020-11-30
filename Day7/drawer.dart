import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
