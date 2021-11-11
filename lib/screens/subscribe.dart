import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:palladium/config.dart';
import 'package:palladium/languages/custome_languages.dart';
import 'package:palladium/screens/subscribe_type.dart';

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
        title: Text(
          getTranslate(context, "plans"),
          style: const TextStyle(color: Color(0xff39719F)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: backGroundApp,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SubscripeType(
                                imageType: "bronze",
                              )));
                },
                child: SizedBox(
                  height: 130.0,
                  width: double.maxFinite,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/bronze.png",
                        fit: BoxFit.fill,
                        height: 130,
                        width: double.maxFinite,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SubscripeType(
                                imageType: "silver",
                              )));
                },
                child: SizedBox(
                  height: 130.0,
                  width: double.maxFinite,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/silver.png",
                        fit: BoxFit.fill,
                        height: 130,
                        width: double.maxFinite,

                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SubscripeType(
                                imageType: "gold",
                              )));
                },
                child: SizedBox(
                  height: 130.0,
                  width: double.maxFinite,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/gold.png",
                        fit: BoxFit.fill,
                        height: 130,
                        width: double.maxFinite,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
