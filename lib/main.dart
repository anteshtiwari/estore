/*import 'package:estore/knowing.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'welcome_screen.dart';
import 'home_screen.dart';
import 'signup_screen.dart';
import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'login_screen': (context) => LoginScreen(),
        'KnowingScreen': (context) => KnowingScreen(),
        'home_screen': (context) => HomeScreen()
      },
    );
  }
}
 */

// ///jkjkjknk
// import 'package:estore/home_content1.dart';
// import 'package:estore/knowing.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'seller_drawer.dart';
// import 'welcome_screen.dart';
// import 'home_screen.dart';
// import 'signup_screen.dart';
// import 'login_screen.dart';

///jnkjnkjnj
import 'package:estore/data/states/auth_data.dart';
import 'package:estore/data/states/auth_providers/email_password_auth_data.dart';
import 'package:estore/screens/auth_state_builder.dart';
import 'package:estore/screens/authentication/provider_selection_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print(e);
  }
  runApp(MyApp());
}
//hello
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthData()),
        ChangeNotifierProvider(create: (_) => EmailPasswordAuthData()),
      ],
      child: MaterialApp(
        builder: OneContext().builder,
        navigatorKey: OneContext().key,
        home: AuthStateBuilder(),
        // //My changes  starts
        // routes: {
        //   'welcome_screen': (context) => WelcomeScreen(),
        //   'registration_screen': (context) => RegistrationScreen(),
        //   //   // 'login_screen': (context) => LoginScreen(),
        //   'knowing': (context) => KnowingScreen(),
        //   'homecontent1': (context) => MyHomePage(),
        //   'seller_drawer': (context) => seller_drawer()
        // },

        //My changes Ends
      ),
    );
  }
}
