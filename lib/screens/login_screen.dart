import 'package:flutter/material.dart';

import '../config.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int tabBarIndex=0;
  bool isCompany=true;
  GlobalKey<FormState> regForm=GlobalKey<FormState>();
  GlobalKey<FormState> loginForm=GlobalKey<FormState>();
  AutovalidateMode? regAutovalidateMode;
  AutovalidateMode? loginAutovalidateMode;

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
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
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
                    height: height*.05,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      children: [
                        Row(
                          children:  [
                            Text(
                              tabBarIndex==1? 'Login Now':'Create a\nNew Account',
                              style: TextStyle(
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
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              tabBarIndex==1? 'You can use Mobile number \nor Email to Enter App':'For the best experience\nwith Palladium',
                              textAlign: TextAlign.start,

                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0),
                            ),
                          ],
                        ),
                        tabBarIndex==0?const SizedBox(height: 20.0):SizedBox(height: 20.0,),
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
                          flexibleSpace:  TabBar(
                            onTap:  (value){
                              setState(() {
                                tabBarIndex=value;
                              });
                            },
                            indicatorColor: Colors.blueAccent,
                            indicatorSize: TabBarIndicatorSize.tab,
                            tabs: [
                              Tab(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color:  tabBarIndex==0?Colors.white:Colors.grey.withOpacity(0.4),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                      color: tabBarIndex==1?Colors.white:Colors.grey.withOpacity(0.4),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
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
                              child: Form(
                                autovalidateMode: regAutovalidateMode,
                                key: regForm,
                                child: ListView(
                                  children: [
                                    const SizedBox(height: 20),

                                    TextFormWidget(
                                      hint: 'Full name',
                                      iconData: Icons.person,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),

                                    TextFormWidget(
                                      hint: 'Mobile',
                                      iconData: Icons.mobile_friendly_sharp,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),

                                    TextFormWidget(
                                      hint: 'Email',
                                      iconData: Icons.email,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),

                                    TextFormWidget(
                                      hint: 'Password',
                                      iconData: Icons.lock,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),

                                    Container(
                                      color: Color(0xff353E55),
                                      height: 40.0,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: InkWell(
                                              onTap:(){
                                                setState(() {
                                                  isCompany=!true;
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                                  color:isCompany==false?Colors.white:Colors.transparent,
                                                ),

                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment: isCompany==true?MainAxisAlignment.spaceEvenly:MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'Individual',

                                                        style: TextStyle(
                                                          fontFamily: 'SF Pro Text',
                                                          fontSize: 13,
                                                          color: isCompany==false?Colors.black: Color(0xffffffff),
                                                          letterSpacing: -0.20800000000000002,
                                                          fontWeight:tabBarIndex==0?FontWeight.normal: FontWeight.w500,
                                                          height: 1.6153846153846154,
                                                        ),
                                                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                                        textAlign: TextAlign.center,
                                                      ),
                                                      Text('|',style: TextStyle(
                                                        color: isCompany==true? Colors.grey.withOpacity(.4):Colors.transparent,

                                                      ),),
                                                      Container(
                                                        height: 10,
                                                        child: Transform.rotate(
                                                          angle: -4.71,
                                                          child: Divider(
                                                            color: Colors.grey.withOpacity(.4),
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
                                              onTap:(){
                                                setState(() {
                                                  isCompany=!false;
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                                  color:isCompany==true?Colors.white:Colors.transparent,
                                                ),

                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment: isCompany==false?MainAxisAlignment.spaceEvenly:MainAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        height: 10,
                                                        child: Transform.rotate(
                                                          angle: -4.71,
                                                          child: Divider(
                                                            color: Colors.grey.withOpacity(.4),
                                                            thickness: 2,
                                                          ),
                                                        ),
                                                      ),
                                                      Text('|',style: TextStyle(
                                                        color: isCompany==false? Colors.grey.withOpacity(.4):Colors.transparent,

                                                      ),),

                                                      Text(
                                                        'Company',

                                                        style: TextStyle(
                                                          fontFamily: 'SF Pro Text',
                                                          fontSize: 13,
                                                          color: isCompany==true?Colors.black: Color(0xffffffff),
                                                          letterSpacing: -0.20800000000000002,
                                                          fontWeight:tabBarIndex==0?FontWeight.normal: FontWeight.w500,
                                                          height: 1.6153846153846154,
                                                        ),
                                                        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                                                        textAlign: TextAlign.center,
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
                                      hint: 'Company',
                                      iconData: Icons.apartment,
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10.0),
                                          gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.bottomLeft,

                                              tileMode: TileMode.clamp,
                                              colors: [Color(0xff177DD5),Color(0xff1A9DE0),Color(0xff1CAFE4).withOpacity(.9),])
                                      ),

                                      child: MaterialButton(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(8)),
                                        onPressed: () {
                                          if(regForm.currentState!.validate()){
                                            print('RegForm Validated');
                                          }else{
                                            setState(() {
                                              regAutovalidateMode=AutovalidateMode.always;
                                            });
                                          }
                                        },
                                        child: Text(
                                          "SIGN UP",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25.0,
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
                                      hint: 'Mobile',
                                      iconData: Icons.mobile_friendly_sharp,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextFormWidget(
                                      hint: 'Password',
                                      iconData: Icons.lock,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10.0),
                                          gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.bottomLeft,

                                              tileMode: TileMode.clamp,
                                              colors: [Color(0xff177DD5),Color(0xff1A9DE0),Color(0xff1CAFE4).withOpacity(.9),])
                                      ),
                                      child: MaterialButton(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(8)),
                                        onPressed:() {
                                          if(loginForm.currentState!.validate()){
                                            print('loginForm Validated');

                                          }else{
                                            setState(() {
                                              loginAutovalidateMode=AutovalidateMode.always;
                                            });
                                          }
                                        },
                                        child: Text(
                                          "LOGIN",
                                          style: TextStyle(
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
          )),
    );
  }
}

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({
    Key? key,
    required this.hint,
    required this.iconData,
    this.isPassword
  }) : super(key: key);
  final String hint;
  final IconData iconData;
  final bool? isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword==true?true:false,
      validator: (value) {
        if(value!.trim().isEmpty) return '$hint is required';
      },
      style: TextStyle(
          color: Colors.white
      ),
      decoration: InputDecoration(

        fillColor: Color(0xff101629),
        filled: true,
        border: OutlineInputBorder(

          borderRadius:
          BorderRadius.circular(15),
        ),
        labelText: hint,
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        prefixIcon:  Icon(
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
