import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinelayyah/historyScreen.dart';
import 'package:onlinelayyah/profileScreen.dart';
import 'dashboardScreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // String _counter = "Zahid";

  // void _incrementCounter() {
  //   setState(() {
  //     _counter = "Khan";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Layyah"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 20, 3.0, 10),
                child: Text(
                  'Welcome To Online Layyah',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: ElevatedButton(
                  child: Text("Dashboard"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) =>
                              DashboardScreenHome(title: "Dashboard")),
                    );
                  },
                  style: ElevatedButton.styleFrom(minimumSize: Size(160, 70)),
                ),
                padding: EdgeInsets.all(7),
              ),
              Container(
                child: ElevatedButton(
                  child: Text("Profile"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => ProfileSceen(title: "Profile")),
                    );
                  },
                  style: ElevatedButton.styleFrom(minimumSize: Size(160, 70)),
                ),
                padding: EdgeInsets.all(7),
              ),
            ],
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: ElevatedButton(
                  child: Text("History"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) =>
                              HistoryScreen(title: "History")),
                    );
                  },
                  style: ElevatedButton.styleFrom(minimumSize: Size(160, 70)),
                ),
                padding: EdgeInsets.all(7),
              ),
              Container(
                child: ElevatedButton(
                  child: Text("Logout "),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(minimumSize: Size(160, 70)),
                ),
                padding: EdgeInsets.all(7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
