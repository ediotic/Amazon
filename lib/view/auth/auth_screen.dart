// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLoginEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Amazon Clone",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: isLoginEnabled
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Center(
                              child: Text(
                                "Sign in with your email and password",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sign-in",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
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
                            SizedBox(height: 10),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[200],
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                hintText: "Email",
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[200],
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                hintText: "Password",
                              ),
                            ),
                            SizedBox(height: 10),
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
                            SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                debugPrint("hello sign in");
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 2 -
                                            40,
                                    vertical: 10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 4,
                                      offset: Offset(2, 1),
                                    ),
                                  ],
                                  color: Colors.amber,
                                ),
                                child: Center(
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Colors.black,
                                    endIndent: 10,
                                    thickness: 0.1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    "New To Amazon",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Colors.black,
                                    indent: 10,
                                    thickness: 0.1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isLoginEnabled = false;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width / 4 -
                                            30,
                                    vertical: 10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 4,
                                      offset: Offset(2, 1),
                                    ),
                                  ],
                                  color: Colors.amber[300],
                                ),
                                child: Center(
                                  child: Text(
                                    "Create A New Amazon Account",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(25.0),
                              // margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Colors.black,
                                width: 0.9,
                              )),
                              child: Column(
                                children: [
                                  Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Create Account",
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            ),
                                            // textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: "Your Name",
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      // hintText: "Your Name",
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  TextField(
                                    decoration: InputDecoration(
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      labelText: "Your Email",
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      // hintText: "Your Email",
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      // hintText: "Password",
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.question_mark_sharp,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        "Passwords must be at least 6 charaters.",
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: "Re-enter Password",
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      // hintText: "Re-enter Password",
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  InkWell(
                                    onTap: () {
                                      debugPrint("hello sign in");
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2 -
                                              100,
                                          vertical: 10),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 4,
                                            offset: Offset(2, 1),
                                          ),
                                        ],
                                        color: Colors.amber,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Create Account",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 40),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          color: Colors.black,
                                          endIndent: 10,
                                          thickness: 0.1,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(
                                          "Already a Cutomer?",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                      Expanded(
                                        child: Divider(
                                          color: Colors.black,
                                          indent: 10,
                                          thickness: 0.1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isLoginEnabled =true;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  4 -
                                              30,
                                          vertical: 10),
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 4,
                                            offset: Offset(2, 1),
                                          ),
                                        ],
                                        color: Colors.amber[300],
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Sign In",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 53,
                            ),
                            Text(
                              "By craeting a account you agree amazon",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            )
                          ],
                        ),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: RichText(
                  text: TextSpan(
                      text: "Conditions of Use",
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                      children: [
                        TextSpan(
                          text: " and ",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        TextSpan(
                          text: "Privacy Notice",
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
