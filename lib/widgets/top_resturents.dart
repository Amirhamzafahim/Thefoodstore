import 'package:flutter/material.dart';

class Topresturent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            child: Card(
              elevation: 0,
              color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Image.asset(
                      'assets/food.png',
                      height: 40,
                    ),
                    Text("Japaness ",textAlign: TextAlign.center,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
