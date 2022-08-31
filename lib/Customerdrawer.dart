import 'package:estore/screens/landing/landing_screen.dart';
import 'package:flutter/material.dart';

class customer_drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var profile_pic;
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Theme.of(context).primaryColor,
          child: Center(
              child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(
                  top: 30,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Customer name",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              Text(
                "example@gmail.com",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ],
          )),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text(
            'Profile',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: null,
        ),
        ListTile(
          leading: Icon(Icons.production_quantity_limits),
          title: Text(
            'Buy Product',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: null,
        ),
        ListTile(
          leading: Icon(Icons.arrow_back),
          title: Text(
            'Log Out',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LandingScreen()),
              )),
        )
      ]),
    );
  }
}
