import 'package:awesome/img.dart';
import 'package:awesome/pages/homepage.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final userNameController= TextEditingController();
  final passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page")
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          image(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child:Card(
                  child: Column(
                    children: <Widget>[
                      Form
                        (child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column
                          (children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter username",
                                labelText: "Username"),
                          ),
                          SizedBox(
                            height:20,
                          ),
                          TextFormField(
                            obscureText:true,
                            decoration: InputDecoration(
                                hintText: "Enter password",
                                labelText: "Password",

                            ),
                          )
                        ],
                        ),
                      ),
                      ),
                      SizedBox(
                        height:20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(onPressed: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                          Navigator.pushNamed(context, "/home");
                        },
                          child: Text("Sign In"),
                          color: Colors.greenAccent,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
