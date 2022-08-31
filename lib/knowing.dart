
import 'package:flutter/material.dart';

import 'rounded_button.dart';
import 'Customerdrawer.dart';
import 'seller_drawer.dart';

class KnowingScreen extends StatefulWidget {
  @override
  _KnowingScreenState createState() => _KnowingScreenState();
}

class _KnowingScreenState extends State<KnowingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('estore'),
            ),
            backgroundColor: Colors.white,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    RoundedButton(
                      colour: Colors.lightBlueAccent,
                      title: 'Seller',
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => seller_drawer()),
                        )
                      },
                    ),
                    SizedBox(height: 15),
                    Text(
                      "           Or",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                    RoundedButton(
                      colour: Colors.blueAccent,
                      title: 'Customer',
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => customer_drawer()),
                        )
                      },
                    ),
                    //Image.asset(
                    // 'images/empty_cart.jpg',
                    //height: 40,
                    // width: 40,
                    //), // Image.as
                  ]),
            )));
  }
}
