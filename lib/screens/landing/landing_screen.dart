import 'package:estore/data/services/auth_service.dart';
import 'package:estore/utils/custom_exception.dart';
import 'package:estore/utils/utils.dart';
import 'package:estore/widgets/buttons/action_button.dart';
import 'package:flutter/material.dart';

import '../../knowing.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ActionButton(
              text: "Logout",
              onPressed: () async {
                try {
                  await AuthService().signOut();
                  Utils.successSnackbar("Logged Out");
                } on CustomException catch (e) {
                  Utils.errorSnackbar(e.message);
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            ActionButton(
              text: " Going to home screen ",
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KnowingScreen()),
                )
              },
            )
          ],
        ),
      ),
    );
  }
}
