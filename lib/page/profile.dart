import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Center(
                child: CircleAvatar(
                  radius: 50,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.supervisor_account,
                ),
                title: Text("Amir Hamza Fahim"),
              ),
              ListTile(
                leading: Icon(
                  Icons.supervisor_account,
                ),
                title: Text('01833268320'),
              ),
              ListTile(
                leading: Icon(
                  Icons.supervisor_account,
                ),
                title: Text("Rasulbag R/A Chowkbazar,Chittagong"),
              ),
              ListTile(
                leading: Icon(
                  Icons.supervisor_account,
                ),
                title: Text("Ashugonj R/A Chowkbazar,Chittagong"),
              ),
              ListTile(
                leading: Icon(
                  Icons.supervisor_account,
                ),
                title: Text("Purchase history"),
              ),
              ListTile(
                leading: Icon(
                  Icons.supervisor_account,
                ),
                title: Text("amirhamza.dev@gmail.com"),
              ),
              ListTile(
                leading: Icon(
                  Icons.supervisor_account,
                ),
                title: Text(" logout"),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
