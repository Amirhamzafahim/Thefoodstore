import 'package:flutter/material.dart';
import 'package:thefoodstore/widgets/menu_widget.dart';


class Menupage extends StatefulWidget {
  Menupage({Key key}) : super(key: key);

  @override
  _MenupageState createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "Gulshan,R 28 H",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.supervisor_account,
                color: Color(0xFF3a3737),
              ),
              onPressed: null)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Welcome to fahim"),
                    IconButton(icon: Icon(Icons.search), onPressed: () {}),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Text("Dry Sweets"),
                  Spacer(),
                  Text("See more"),
                ],
              ),
              Container(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Menuwidget();
                  },
                ),
              ),
              Row(
                children: <Widget>[
                  Text("Senidry"),
                  Spacer(),
                  Text("See more"),
                ],
              ),
              Container(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Menuwidget();
                  },
                ),
              ),
              Row(
                children: <Widget>[
                  Text("wet Sweets"),
                  Spacer(),
                  Text("See more"),
                ],
              ),
              Container(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Menuwidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
