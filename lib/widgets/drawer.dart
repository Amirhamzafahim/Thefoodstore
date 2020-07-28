import 'package:flutter/material.dart';

 drawer(){
   return Drawer(
          elevation: 0,
          
          child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),

            ),
              ListTile(
              leading: Icon(Icons.home),
              title: Text("offers"),

            ),
              ListTile(
              leading: Icon(Icons.home),
              title: Text("Notifications"),

            ),
              ListTile(
              leading: Icon(Icons.home),
              title: Text("Your Order (history)"),

            ),
              ListTile(
              leading: Icon(Icons.home),
              title: Text("Settings"),

            ),
              ListTile(
              leading: Icon(Icons.home),
              title: Text("Call US"),

            ),
              ListTile(
              leading: Icon(Icons.home),
              title: Text("Refer & Earn"),

            ),
                  ListTile(
              leading: Icon(Icons.home),
              title: Text("Promo Code"),

            ),

          ],

          ),

        );

 }