// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:amazon/constant/global.dart';


import 'package:flutter/material.dart';

import 'utils/app_routes.dart';
import 'view/auth/auth_screen.dart';

class Amazon extends StatelessWidget {
  const Amazon({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) => generateRoute(settings),       /// for routing in app
        debugShowCheckedModeBanner: false,
        title: 'Amazon Clone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          colorScheme: ColorScheme.light(
            primary: GlobalVariables.primaryColor,
          ),
          useMaterial3: false,
        ),
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0.0,
              title: Text("Amazon"),
              centerTitle: true,
            ),
            body: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello Amazon!"),
                Builder(
                  builder: (context) {
                    return ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, AuthScreen.routeName);
                    }, child: Text("click me!"));
                  }
                )
              ],
            ),
            ),
            ),
            );
  }
}
