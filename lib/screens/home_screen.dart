import 'package:flutter/material.dart';
import 'package:routes_practice/Utils/route_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: Text('Home screen'),
       ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
             Navigator.pushNamed(context, RouteName.screentwo,
             arguments: {
               'Node' : 'Js Module',
               'Flutter': 'good for apps',
               'Dart'   :  'learn before  flutter'
             }
             );

            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Center(child: Text('Screen 1')),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
