import 'package:flutter/material.dart';
import 'package:thefoodstore/page/menu.dart';
import 'package:thefoodstore/widgets/drawer.dart';
import 'package:thefoodstore/widgets/latest_order.dart';
import 'package:thefoodstore/widgets/searchbar.dart';
import 'package:thefoodstore/widgets/top_resturents.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
        drawer: drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey,
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
        child: Column(
          children: <Widget>[
            SearchWidget(),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Top Resturents"),
                      Spacer(),
                      Text("See All")
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>Menupage() ) );

                    },
                                      child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      child: GridView.count(
                        
                        crossAxisCount: 3,
                        children: <Widget>[
                          Topresturent(),
                          Topresturent(),
                          Topresturent(),
                          Topresturent(),
                          Topresturent(),
                          Topresturent(),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text("Latest Order item"),
                      Spacer(),
                      Text("See All"),
                    ],
                  ),
                  Container(
                    height: 220,
                  
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Latestorder();
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
  
    );
  }
}
