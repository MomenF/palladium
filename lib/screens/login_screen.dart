import 'package:flutter/material.dart';
import 'package:palladium/languages/custome_languages.dart';

import '../config.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  int tabBarIndex = 1;
  bool isCompany = true;
  GlobalKey<FormState> regForm = GlobalKey<FormState>();
  GlobalKey<FormState> loginForm = GlobalKey<FormState>();
  AutovalidateMode? regAutovalidateMode;
  AutovalidateMode? loginAutovalidateMode;
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
    _controller.addListener(() {
      tabBarIndex = _controller.previousIndex;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: backGroundApp,
          body: Directionality(
            textDirection: getIsEnglish(myProviderContext!) == true
                ? TextDirection.ltr
                : TextDirection.rtl,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(
                      height: height * .05,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                tabBarIndex == 0
                                    ? getTranslate(
                                        myProviderContext!, "loginNow")
                                    : getTranslate(myProviderContext!,
                                        "createANewAccount"),
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
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                tabBarIndex == 0
                                    ? getTranslate(myProviderContext!,
                                        "You can use Mobile number or Email to Enter App")
                                    : getTranslate(myProviderContext!,
                                        "forTheBestExperienceWithPalladium"),
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ],
                          ),
                          if (tabBarIndex == 0)
                            const SizedBox(height: 1.0)
                          else
                            const SizedBox(
                              height: 1.0,
                            ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: DefaultTabController(
                        initialIndex: tabBarIndex,
                        length: 2,
                        child: Scaffold(
                          appBar: AppBar(
                            backgroundColor: backGroundApp,
                            elevation: 0,
                            flexibleSpace: TabBar(
                              controller: _controller,
                              onTap: (value) {
                                setState(() {
                                  tabBarIndex = value;
                                });
                              },
                              indicatorColor: Colors.blueAccent,
                              indicatorSize: TabBarIndicatorSize.tab,
                              tabs: [
                                Tab(
                                  child: Text(
                                    getTranslate(myProviderContext!, "signUp"),
                                    style: TextStyle(
                                        color: tabBarIndex == 1
                                            ? Colors.white
                                            : Colors.grey.withOpacity(0.4),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    getTranslate(myProviderContext!, "logIn"),
                                    style: TextStyle(
                                        color: tabBarIndex == 0
                                            ? Colors.white
                                            : Colors.grey.withOpacity(0.4),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          body: TabBarView(
                            controller: _controller,
                            children: [
                              ///SingUp Widget
                              Container(
                                color: backGroundApp,
                                child: Form(
                                  autovalidateMode: regAutovalidateMode,
                                  key: regForm,
                                  child: ListView(
                                    children: [
                                      const SizedBox(height: 5),
                                      TextFormWidget(
                                        hint: getTranslate(
                                            myProviderContext!, "fullName"),
                                        iconData: Icons.person,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFormWidget(
                                        hint: getTranslate(
                                            myProviderContext!, "mobile"),
                                        iconData: Icons.mobile_friendly_sharp,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFormWidget(
                                        hint: getTranslate(
                                            myProviderContext!, "email"),
                                        iconData: Icons.email,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFormWidget(
                                        hint: getTranslate(
                                            myProviderContext!, "Password"),
                                        iconData: Icons.lock,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        color: const Color(0xff353E55),
                                        height: 40.0,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    isCompany = !true;
                                                  });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(5)),
                                                    color: isCompany == false
                                                        ? Colors.white
                                                        : Colors.transparent,
                                                  ),
                                                  child: Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          isCompany == true
                                                              ? MainAxisAlignment
                                                                  .spaceEvenly
                                                              : MainAxisAlignment
                                                                  .center,
                                                      children: [
                                                        Text(
                                                          getTranslate(myProviderContext!, "individual"),
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'SF Pro Text',
                                                            fontSize: 13,
                                                            color: isCompany ==
                                                                    false
                                                                ? Colors.black
                                                                : const Color(
                                                                    0xffffffff),
                                                            letterSpacing:
                                                                -0.20800000000000002,
                                                            fontWeight:
                                                                tabBarIndex == 0
                                                                    ? FontWeight
                                                                        .normal
                                                                    : FontWeight
                                                                        .w500,
                                                            height:
                                                                1.6153846153846154,
                                                          ),
                                                          textHeightBehavior:
                                                              const TextHeightBehavior(
                                                                  applyHeightToFirstAscent:
                                                                      false),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        Text(
                                                          '|',
                                                          style: TextStyle(
                                                            color: isCompany ==
                                                                    true
                                                                ? Colors.grey
                                                                    .withOpacity(
                                                                        .4)
                                                                : Colors
                                                                    .transparent,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                          child:
                                                              Transform.rotate(
                                                            angle: -4.71,
                                                            child: Divider(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      .4),
                                                              thickness: 2,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    isCompany = !false;
                                                  });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(5)),
                                                    color: isCompany == true
                                                        ? Colors.white
                                                        : Colors.transparent,
                                                  ),
                                                  child: Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          isCompany == false
                                                              ? MainAxisAlignment
                                                                  .spaceEvenly
                                                              : MainAxisAlignment
                                                                  .center,
                                                      children: [
                                                        SizedBox(
                                                          height: 10,
                                                          child:
                                                              Transform.rotate(
                                                            angle: -4.71,
                                                            child: Divider(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      .4),
                                                              thickness: 2,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          '|',
                                                          style: TextStyle(
                                                            color: isCompany ==
                                                                    false
                                                                ? Colors.grey
                                                                    .withOpacity(
                                                                        .4)
                                                                : Colors
                                                                    .transparent,
                                                          ),
                                                        ),
                                                        Text(
                                                          getTranslate(
                                                              myProviderContext!,
                                                              "company"),
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'SF Pro Text',
                                                            fontSize: 13,
                                                            color: isCompany ==
                                                                    true
                                                                ? Colors.black
                                                                : const Color(
                                                                    0xffffffff),
                                                            letterSpacing:
                                                                -0.20800000000000002,
                                                            fontWeight:
                                                                tabBarIndex == 0
                                                                    ? FontWeight
                                                                        .normal
                                                                    : FontWeight
                                                                        .w500,
                                                            height:
                                                                1.6153846153846154,
                                                          ),
                                                          textHeightBehavior:
                                                              const TextHeightBehavior(
                                                                  applyHeightToFirstAscent:
                                                                      false),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFormWidget(
                                        hint: getTranslate(
                                            myProviderContext!, "company"),
                                        iconData: Icons.apartment,
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            gradient: LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.bottomLeft,
                                                tileMode: TileMode.clamp,
                                                colors: [
                                                  const Color(0xff177DD5),
                                                  const Color(0xff1A9DE0),
                                                  const Color(0xff1CAFE4)
                                                      .withOpacity(.9),
                                                ])),
                                        child: MaterialButton(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          onPressed: () {
                                            if (regForm.currentState!
                                                .validate()) {
                                              print('RegForm Validated');
                                            } else {
                                              setState(() {
                                                regAutovalidateMode =
                                                    AutovalidateMode.always;
                                              });
                                            }
                                          },
                                          child:  Text(
                                            getTranslate(myProviderContext!, "SIGN UP"),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 35.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              ///LogIn Widget
                              Container(
                                color: backGroundApp,
                                child: Form(
                                  autovalidateMode: loginAutovalidateMode,
                                  key: loginForm,
                                  child: ListView(
                                    children: [
                                      const SizedBox(height: 20),
                                       TextFormWidget(
                                        hint: getTranslate(myProviderContext!, "mobile"),
                                        iconData: Icons.mobile_friendly_sharp,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                       TextFormWidget(
                                        hint: getTranslate(myProviderContext!, "Password"),
                                        iconData: Icons.lock,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            gradient: LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.bottomLeft,
                                                tileMode: TileMode.clamp,
                                                colors: [
                                                  const Color(0xff177DD5),
                                                  const Color(0xff1A9DE0),
                                                  const Color(0xff1CAFE4)
                                                      .withOpacity(.9),
                                                ])),
                                        child: MaterialButton(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          onPressed: () {
                                            if (loginForm.currentState!
                                                .validate()) {
                                              print('loginForm Validated');
                                            } else {
                                              setState(() {
                                                loginAutovalidateMode =
                                                    AutovalidateMode.always;
                                              });
                                            }
                                          },
                                          child:  Text(
                                            getTranslate(myProviderContext!, "logIn"),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class TextFormWidget extends StatelessWidget {
  const TextFormWidget(
      {Key? key, required this.hint, required this.iconData, this.isPassword})
      : super(key: key);
  final String hint;
  final IconData iconData;
  final bool? isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword == true ? true : false,
      validator: (value) {
        if (value!.trim().isEmpty) return '$hint is required';
      },
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        fillColor: Color(0xff101629),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        labelText: hint,
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        prefixIcon: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}

enum RegisterType {
  logIn,
  logUp,
}
