import 'package:flutter/material.dart';
import 'package:routes_practice/Utils/route_name.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;
   ScreenTwo({Key? key ,
     required this.data}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['Dart']),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RouteName.screenthree);
            },
            child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Center(child: Text('Screen Two')),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),


    );
  }
}
