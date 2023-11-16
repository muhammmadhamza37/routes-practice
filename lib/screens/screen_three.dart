import 'package:flutter/material.dart';
import 'package:routes_practice/Utils/route_name.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Muhammad Hamza'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RouteName.homescreen);
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                  color: Colors.green,
                ),
                  child: Center(child: Text('Screen Three')),
                ),
              ),
              
            ),
          )
        ],
      ),
    );
  }
}
