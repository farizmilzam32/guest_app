import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guest_app/user_data.dart';

class FourthScreen extends StatefulWidget {
  static const String id = 'fourth_screen';
  @override
  _FourthScreenState createState() => _FourthScreenState();
}


class _FourthScreenState extends State<FourthScreen> {
 String output = 'no data';
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Guest'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(output),
            ElevatedButton(onPressed: () {
              UserData.getUsers('2').then((users) {
                output = "";
                for(int i = 0; i < users.length; i++)
                  output = output + "[" + users[i].firstname + " ]";
                setState(() {
                });
              });
            }, child: Text('GET'))
          ],
         ),   ),
      );
    }
  }






