// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazon Clone"),
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // SizedBox(height: 10,),
                Text(
                  "Sign in with your email and password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sign-in",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "Email"),
                ),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      hintText: "Password"),
                ),
                CheckboxListTile(
                  value: true,
                  onChanged: (value) {},
                  title: Text("Show Password"),
                ),
                CheckboxListTile(
                  value: true,
                  onChanged: (value) {},
                  title: Text("Keep me signed in"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/2-40 , vertical: 10),
                  decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Text("Sign In"),
                ),
                ElevatedButton(onPressed: () {}, child: Text("Sign In")),
                Divider(),
                Text("New To Amazon"),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Create A New Amazon Account"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
