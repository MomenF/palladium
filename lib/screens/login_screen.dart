import 'package:flutter/material.dart';
import 'package:palladium/languages/custome_languages.dart';
import '../config.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: backGroundApp,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.lightBlueAccent,
                              Colors.blue,
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.lightBlueAccent.withOpacity(0.2),
                              spreadRadius: 20,
                              blurRadius: 25,
                              offset: const Offset(
                                  0, 23), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children:   [
                      Text(
                        getTranslate(myProviderContext!, "loginNow"),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    endIndent: width * 0.7,
                  ),
                  SizedBox(height: height * 0.01),
                   Text(
                    getTranslate(myProviderContext!, "You can use Mobile number or Email to Enter App"),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0),
                  ),
                  const SizedBox(height: 10.0),
                  Expanded(
                    child: ListView(
                      children: [
                        SizedBox(
                          width: width,
                          height: height * 0.6,
                          child: DefaultTabController(
                            length: 2,
                            child: Scaffold(
                              appBar: AppBar(
                                backgroundColor: backGroundApp,
                                elevation: 0,
                                flexibleSpace:  TabBar(
                                  indicatorColor: Colors.blueAccent,
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  tabs: [
                                    Tab(
                                      child: Text(
                                        getTranslate(myProviderContext!, "signUp"),//'Sign Up',
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 23),
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        getTranslate(myProviderContext!, "logIn"),//'Log In',
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 23),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              body: TabBarView(
                                children: [
                                  ///SingUp Widget
                                  Container(
                                    color: backGroundApp,
                                    child: ListView(
                                      children: [
                                        const SizedBox(height: 20),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            hintText: getTranslate(myProviderContext!, "fullName"),
                                            hintStyle: const TextStyle(
                                              color: Colors.white,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.person,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            hintText: getTranslate(myProviderContext!, "mobile"),
                                            hintStyle: const TextStyle(
                                              color: Colors.white,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.mobile_friendly_sharp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            hintText: getTranslate(myProviderContext!, "Email"),
                                            hintStyle: const TextStyle(
                                              color: Colors.white,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.email,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            hintText: getTranslate(myProviderContext!, "Password"),
                                            hintStyle: const TextStyle(
                                              color: Colors.white,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.lock,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        RaisedButton(
                                          color: Colors.blue,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          onPressed: () {},
                                          child: Text(
                                            getTranslate(myProviderContext!, "SIGN UP"),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 23),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  ///LogIn Widget
                                  Container(
                                    color: backGroundApp,
                                    child: ListView(
                                      children: [
                                        const SizedBox(height: 20),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            hintText: getTranslate(myProviderContext!, "mobile"),
                                            hintStyle: const TextStyle(
                                              color: Colors.white,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.mobile_friendly_sharp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            hintText: getTranslate(myProviderContext!, "Password"),
                                            hintStyle: const TextStyle(
                                              color: Colors.white,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.lock,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        RaisedButton(
                                          color: Colors.blue,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          onPressed: () {},
                                          child: Text(
                                            getTranslate(myProviderContext!, "logIn"),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 23),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

enum RegisterType {
  logIn,
  logUp,
}
