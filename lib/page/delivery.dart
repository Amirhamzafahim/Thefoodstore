import 'package:flutter/material.dart';
import 'package:thefoodstore/home.dart';

// https://dribbble.com/shots/6322090-New-Illustrations-Delivery

class Deliverypage extends StatefulWidget {
  @override
  _DeliverypageState createState() => _DeliverypageState();
}

class _DeliverypageState extends State<Deliverypage> {
  double padding = 24.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // animation
          Flexible(
            flex: 5,
            child: Center(
              child: Image.asset("assets/delivery.gif", fit: BoxFit.contain),
            ),
          ),

          // bottom color
          Flexible(
            flex: 4,
            child: Stack(
              children: <Widget>[
                Hero(
                  tag: "coolor",
                  child: Container(
                    padding: EdgeInsets.all(padding),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0)),
                      // gradient: LinearGradient(
                      //   colors: [

                      //   ],
                      //   begin: Alignment.topCenter,
                      //   end: Alignment.bottomCenter,
                      // ),
                    ),
                  ),
                ),
                Positioned(
                  top: padding,
                  left: 0,
                  right: 0,
                  bottom: padding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //
                      Text(
                        "Your Order",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Text(
                        "On The Way",
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      // Spacer(),

                      Text(
                        "\#78376",
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Text(
                        "Order Number",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(child: Text("Go to home")),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
