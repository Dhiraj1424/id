import 'package:apiflutter/secrrens/homePage.dart';
import 'package:apiflutter/utils/route_constant.dart';
import 'package:flutter/material.dart';

import '../secrrens/detailpage.dart';

class RouteName{

  static Route<dynamic> generateRoute(RouteSettings settings){
    
    switch(settings.name){
      case homePageRoute:
      return MaterialPageRoute(builder: (_)=>HomePage());
      case detailPageRoute:
      // return MaterialPageRoute(builder: (_)=>DetailPage(
      //   postModelClass:,
      // ));
      
      default:
      return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                )); 
    }
  }
}