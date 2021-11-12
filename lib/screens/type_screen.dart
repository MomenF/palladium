import 'package:flutter/material.dart';
import 'package:palladium/languages/custome_languages.dart';

import '../config.dart';

class TypeScreen extends StatefulWidget {
  const TypeScreen({Key? key}) : super(key: key);

  @override
  _TypeScreenState createState() => _TypeScreenState();
}

class _TypeScreenState extends State<TypeScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backGroundApp,
      appBar: AppBar(
        title: const Text(
          "Type",
          style: TextStyle(color: Color(0xff39719F)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: backGroundApp,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    typeRank(
                        mediaHeight: mediaHeight,
                        mediaWidth: mediaWidth,
                        type: "mercedes",
                        name: "Mercedes"),
                    typeRank(
                        mediaHeight: mediaHeight,
                        mediaWidth: mediaWidth,
                        type: "shevo",
                        name: "Chevorolet")
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    typeRank(
                        mediaHeight: mediaHeight,
                        mediaWidth: mediaWidth,
                        type: "audo",
                        name: "Audi"),
                    typeRank(
                        mediaHeight: mediaHeight,
                        mediaWidth: mediaWidth,
                        type: "bmw",
                        name: "BMW")
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    typeRank(
                        mediaHeight: mediaHeight,
                        mediaWidth: mediaWidth,
                        type: "audo",
                        name: "Audi"),
                    typeRank(
                        mediaHeight: mediaHeight,
                        mediaWidth: mediaWidth,
                        type: "bmw",
                        name: "BMW")
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container typeRank(
      {required double mediaHeight,
      required double mediaWidth,
      required String type,
      required String name}) {
    return Container(
      height: mediaHeight * .225,
      width: mediaWidth * .4,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.black,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/$type.png",
                height: mediaHeight * .075,
                width: mediaWidth * .15,
              ),
              SizedBox(
                height: mediaHeight * .025,
              ),
              Text(
                name,
                style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: mediaHeight * .025,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
