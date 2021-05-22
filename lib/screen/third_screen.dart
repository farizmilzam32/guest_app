import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  static const String id = 'third_screen';
  const ThirdScreen({key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(itemCount: 15,
      itemBuilder: (context, index) {
        return Card(
         clipBehavior: Clip.antiAlias,
          child: Container(
            height: 120,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://live.staticflickr.com/3780/9134266649_3d2f1af95b_z.jpg'),
                          fit: BoxFit.fill)),
                ),
                ),
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 14,
                    child: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Dummy Event', style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold
                          ),),
                          SizedBox(
                            height: 20,
                          ),
                          Text('April ', style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w300
                          ),),
                        ],
                      ),
                ))
              ],
            ),
          )
        );
      }),
    );
  }
}
