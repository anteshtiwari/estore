

import 'package:estore/screens/authentication/email/email_password_screen.dart';
import 'package:flutter/material.dart';

class AuthProviderModel {
  String name;
  String image;
  // Represents the screen on which the auth provider model will lead to
  Widget landingScreen;
  AuthProviderModel({
    this.name,
    this.image,
    this.landingScreen,
  });
}

AuthProviderModel emailProvider = AuthProviderModel(
  name: "Email/Password",
  landingScreen: EmailPasswordScreen(),
  image:
      "https://static.vecteezy.com/system/resources/thumbnails/002/293/604/small/mail-icon-with-long-shadow-black-on-white-background-simple-design-style-illustration-free-vector.jpg",
);

final List<AuthProviderModel> availableProviders = [
  emailProvider,
];

