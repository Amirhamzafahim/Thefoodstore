import 'package:flutter/material.dart';

class Latestorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
      decoration: BoxDecoration(boxShadow: []),
      child: Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          child: Container(
            width: 170,
            height: 70,
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.topRight,
                        width: double.infinity,
                        padding: EdgeInsets.only(right: 5, top: 5),
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFfae3e2),
                                  blurRadius: 25.0,
                                  offset: Offset(0.0, 0.75),
                                ),
                              ]),
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xFFfb3132),
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Center(
                          child: Image.asset(
                        'assets/food.png',
                        width: 130,
                        height: 140,
                      )),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(left: 5, top: 5),
                      child: Text("Italian Egg",
                          style: TextStyle(
                              color: Color(0xFF6e6e71),
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(right: 5),
                      child: Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                         
                            topLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)
                          ),
                          color: Colors.orange,
                        ),
                        child: Icon(
                          Icons.add,
                          color:Colors.white ,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
