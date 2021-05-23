import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guest_app/user_data.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class FourthScreen extends StatefulWidget {
  static const String id = 'fourth_screen';
  @override
  _FourthScreenState createState() => _FourthScreenState();
}
RefreshController _refreshController =
RefreshController(initialRefresh: false);

void _onRefresh() async{
  // monitor network fetch
  await Future.delayed(Duration(milliseconds: 1000));
  // if failed,use refreshFailed()
  _refreshController.refreshCompleted();
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
        body: SmartRefresher(
          enablePullDown: true,
          header: ClassicHeader(),
          footer: ClassicFooter(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(output),
                Image.network(output),
                Image.network(output),
                Image.network(output),
                ElevatedButton(onPressed: () {
                  UserData.getUsers('1').then((users) {
                    output = "";
                    for(int i = 0; i < users.length; i++)
                      output = users[i].avatar;
                    setState(() {
                    });
                  });
                }, child: Text('GET'))
              ],
            ),
          ),
          controller: _refreshController,
          onRefresh: _onRefresh,
            ),

        );
    }
  }






