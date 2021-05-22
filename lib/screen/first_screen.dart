import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'third_screen.dart';
import 'fourth_screen.dart';
import 'package:guest_app/screen/second_screen.dart';

class FirstScreen extends StatefulWidget {

  static const String id = 'first_screen';

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final name = TextEditingController();
  getItemAndNavigate(BuildContext context){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SecondScreen(
                name : name.text,
            ))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 100, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Welcome',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Center(
              child: Text(
                'This is app for suitmedia mobile developer test',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10),
                )
              ),
                child: Center(
                  child: Column(
                    children: [
                    CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/icon-avatar.png'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      (
                      TextField(
                        controller: name,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],
                          hintText: 'Type name here..',
                          border: OutlineInputBorder()
                        ),
                      )
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Respond to button press
                          getItemAndNavigate(context);
                        },
                        child: Text('Next'),
                      )
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),

    );
  }
}

class SecondScreen extends StatelessWidget {
  late final name;
  SecondScreen({Key? key, @required this.name,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 100, right: 40, left: 40, bottom: 40 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hallo, ', style: TextStyle(color: Colors.grey, fontSize: 30)),
            Text(name , style: TextStyle(color: Colors.orange, fontSize: 30),),
            SizedBox(
              height: 100,
            ),
            Center(
              child: Column(
                children: [
                  ElevatedButton(onPressed: (
                      ){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen()));
                  }, child: Text(
                      'Choose Event'
                  ), style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      padding: MaterialStateProperty.all(EdgeInsets.only(top: 20, left: 100, right: 100, bottom: 20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ))
                  ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: (
                      ){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FourthScreen()));
                  }, child: Text(
                      'Choose Guest'
                  ), style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      padding: MaterialStateProperty.all(EdgeInsets.only(top: 20, left: 100, right: 100, bottom: 20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ))
                  ),
                  ),
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
