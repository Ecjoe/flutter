import 'package:awesome/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../drawer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _nameController=TextEditingController();
  var myText="Change me";
  var url="http://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState(){
    super.initState();
    getData();
  }
  getData() async{
    var res=await http.get(url);
    data=jsonDecode(res.body);
    print(data);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Day1"),
        actions:<Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){
            Constants.prefs.setBool("loggedIn", false);
            Navigator.pushReplacementNamed(context, "/login");
          })
        ]
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:data != null
            ? ListView.builder(
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      subtitle:Text("ID: "
                          "${data[index]["id"]}"),
                      leading:Image.network(data[index]["url"]),
                ),
                  );
              },
              itemCount:data.length
            )
            : Center(
          child:CircularProgressIndicator(),
          ),
        ),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            myText=_nameController.text;
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      );
  }
}
