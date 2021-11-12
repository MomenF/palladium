import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palladium/config.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backGroundApp,
      appBar: AppBar(
        backgroundColor: backGroundApp,
        elevation: 0,
        title: (const Text(
          "Calculator",
          style: TextStyle(fontSize: 20),
        )),
        actions: const [
          Center(child: Text('Clear', style: TextStyle(fontSize: 20))),
          SizedBox(width: 5),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: ListView(
          children: [
            SizedBox(height: height * 0.03),
            Row(
              children: [
                buildExpanded(index: false),
                SizedBox(
                  width: width * 0.03,
                ),
                buildExpanded(index: true),
              ],
            ),
            SizedBox(height: height * 0.03),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(width * 0.07),
                  width: width,
                  height: height * 0.58,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 3)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text('PT/GRAM',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 6),
                              Center(
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                                width: width * 0.18,
                                child: Divider(
                                  height: 4,
                                  color: Colors.white,
                                  thickness: 2.0,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text('PT/GRAM',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 6),
                              Center(
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                                width: width * 0.18,
                                child: Divider(
                                  height: 4,
                                  color: Colors.white,
                                  thickness: 2.0,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text('PT/GRAM',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 6),
                              Center(
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                                width: width * 0.18,
                                child: Divider(
                                  height: 4,
                                  color: Colors.white,
                                  thickness: 2.0,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('New Weight',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                              Text('(Gram)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                                width: width * 0.25,
                                child: Divider(
                                  height: 4,
                                  color: Colors.white,
                                  thickness: 2.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('PT(PPM)',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                                width: width * 0.25,
                                child: Divider(
                                  height: 4,
                                  color: Colors.white,
                                  thickness: 2.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('PT(PPM)',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400)),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                                width: width * 0.25,
                                child: Divider(
                                  height: 4,
                                  color: Colors.white,
                                  thickness: 2.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('RH(PPM)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                          Column(
                            children: [
                              Center(
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                                width: width * 0.25,
                                child: Divider(
                                  height: 4,
                                  color: Colors.white,
                                  thickness: 2.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.08,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("PRICE  \$",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400)),
                      Text("00",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Expanded buildExpanded({required bool index}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (toggle != index) toggle = !toggle;
          });
        },
        child: Text(
          "Gram",
          style: TextStyle(color: toggle == index ? Colors.blue : Colors.white),
        ),
        style: ElevatedButton.styleFrom(
            primary: toggle == index ? Color(0xFF19233E) : Colors.blue,
            elevation: 0,
            side: BorderSide(color: Colors.blue)),
      ),
    );
  }
}
