import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palladium/config.dart';
import 'package:palladium/languages/custome_languages.dart';

class Plans extends StatefulWidget {
  const Plans({Key? key}) : super(key: key);

  @override
  _PlansState createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundApp,
      appBar: AppBar(
        title:  Text(
          getTranslate(context, "plans"),
          style: const TextStyle(color: Color(0xff39719F)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: backGroundApp,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 150.0,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/bronze_card.png",
                      fit: BoxFit.fill,
                      height: 150,
                      width: 400,
                    ),
                    // Positioned(
                    //     top: 93.0,
                    //     right: 86.0,
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: const [
                    //         Text("1000 view"),
                    //         Text("3 No devices"),
                    //       ],
                    //     ))
                  ],
                ),
              ),
              SizedBox(
                height: 150.0,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/silver_card.png",
                      fit: BoxFit.fill,
                      height: 150,
                      width: 400,
                    ),
                    // Positioned(
                    //     top: 93.0,
                    //     right: 80.0,
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: const [
                    //         Text("1000 view"),
                    //         Text("3 No devices"),
                    //       ],
                    //     ))
                  ],
                ),
              ),
              SizedBox(
                height: 150.0,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/gold_card.png",
                      fit: BoxFit.fill,
                      height: 150,
                      width: 400,
                    ),
                    // Positioned(
                    //     top: 93.0,
                    //     right: 75.0,
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: const [
                    //         Text("1000 view"),
                    //         Text("3 No devices"),
                    //       ],
                    //     ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
