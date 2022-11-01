import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:picsgraph/responsive/mobile_screen_layout.dart';
import 'package:picsgraph/responsive/responsive_layout_screen.dart';
import 'package:picsgraph/responsive/web_screen_layout.dart';
import 'package:picsgraph/screens/login_screen.dart';
import 'package:picsgraph/screens/signup_screen.dart';
import 'package:picsgraph/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBMsP7g9M-IuMJ5Ta28hveopUw2fDgqpRo",
          projectId: "picsgraph-e32a3",
          storageBucket: "picsgraph-e32a3.appspot.com",
          messagingSenderId: "176090010258",
          appId: "1:176090010258:web:050aa63ad659b14f994c4b"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Picsgraph',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: SignupScreen(),
    );
  }
}
