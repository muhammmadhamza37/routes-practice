

import 'package:flutter/material.dart';
import 'package:routes_practice/Utils/route_name.dart';
import 'package:routes_practice/screens/home_screen.dart';
import 'package:routes_practice/screens/screen_three.dart';
import 'package:routes_practice/screens/screen_two.dart';

class Routes {

  static Route <dynamic> generateRoute (RouteSettings settings){

    switch(settings.name){

      case RouteName.homescreen:
        return MaterialPageRoute(builder: (context)=> const HomeScreen());

        case RouteName.screentwo:
          return MaterialPageRoute(builder: (context)=> ScreenTwo(data: settings.arguments as  Map,));

      case RouteName.screenthree:
        return MaterialPageRoute(builder: (context)=>const ScreenThree());

        default:
          return MaterialPageRoute(builder: (context)=>const Scaffold(
            body: Center(
              child: Text('No routes defined'),
            ),
          ));

  }
  }
}