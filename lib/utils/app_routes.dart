
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../view/auth/auth_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
   switch (routeSettings.name) {
     case AuthScreen.routeName:
     return MaterialPageRoute(builder: (_) => AuthScreen());
       
    
     default:
      return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text("Screen does not exist!"),),));
   }
}