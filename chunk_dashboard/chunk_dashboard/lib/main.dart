import 'package:chunk_dashboard/screens/adminLogin/admin_login.dart';
import 'package:chunk_dashboard/screens/dashboard/dashboard.dart';
import 'package:chunk_dashboard/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
//  runApp(DevicePreview(builder: (context) => const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
        theme: ThemeData(backgroundColor: theme.appBackgroundColor),
        debugShowCheckedModeBanner: false,
        // home: const AdminLogin()
        home: Dashboard());
  }
}
