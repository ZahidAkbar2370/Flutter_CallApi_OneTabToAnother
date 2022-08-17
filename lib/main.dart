import 'package:flutter/material.dart';
import 'package:onlinelayyah/historyScreen.dart';
import 'profileScreen.dart';
import 'homeScreen.dart';
import 'dashboardScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        "dashboard": (context) => DashboardScreenHome(title: "Dashboard"),
        "profile": (context) => ProfileSceen(title: "Profile"),
        "history": (context) => HistoryScreen(title: "Profile"),
      },
      debugShowCheckedModeBanner: false,
      title: 'Online Layyah',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: "Home Page",
      ),
    );
  }
}
