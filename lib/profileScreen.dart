import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProfileSceen extends StatefulWidget {
  const ProfileSceen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ProfileSceen> createState() => _ProfileSceenState();
}

class _ProfileSceenState extends State<ProfileSceen> {
  List<dynamic> _users = [];
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: _users.isNotEmpty
          ? ListView.builder(itemBuilder: (context, index) {
              // if (index < 20) {
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Row(children: [
                  Image.network(
                    // _users[index]['image'],
                    "https://robohash.org/hicveldicta.png",
                    width: 80,
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_users[index]['name']),
                      Text(_users[index]['email']),
                      Text(_users[index]['phone']),
                    ],
                    // children: [
                    //   Text(_users[index]['firstName']),
                    //   Text(_users[index]['email']),
                    //   Text(_users[index]['phone']),
                    // ],
                  )
                ]),
              );
              // } else
              //   return Row();
            })
          : Container(
              child: Center(
                child: _loading
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        child: Text('Load User'),
                        onPressed: loadUserList,
                      ),
              ),
            ),
    );
  }

  void loadUserList() async {
    setState(() {
      _loading = true;
    });

    var res =
        await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(res.body);
      setState(() {
        // _users = jsonData['users'];
        _users = jsonData;
        _loading = false;
      });

      print(jsonData);
    }
  }
}
