import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:onlinelayyah/profileScreen.dart';

class DashboardScreenHome extends StatefulWidget {
  const DashboardScreenHome({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<DashboardScreenHome> createState() => _DashboardScreenHomeState();
}

class _DashboardScreenHomeState extends State<DashboardScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 20, 3.0, 10),
                child: Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
