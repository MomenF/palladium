import 'package:flutter/material.dart';
import 'package:palladium/config.dart';
import 'package:palladium/languages/languages.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String imgUrl =
      "https://alfaruq.de/wp-content/uploads/2020/08/Gebet_4Webseite.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundApp,
      appBar: AppBar(
        title: Text(
          getTranslate(context, "settings"),
          style: const TextStyle(color: Color(0xff39719F)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: backGroundApp,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 30.0,bottom: 50.0,left: 50.0,right: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Center(child: profileImage(imgURL: imgUrl, radius: 55.0)),
                  const SizedBox(
                    height: 25.0,
                  ),
                  const Text(
                    "OMAR NASSER",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "GOLDEN PLAN",
                    style: TextStyle(color: Color(0xff39719F), fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text(
                        getTranslate(context, "email"),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text("INFO@METAFORTECH.COM",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text(
                        getTranslate(context, "phone"),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text("+962 780997333",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text(
                        getTranslate(context, "country"),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text("JORDAN",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      Text(
                        getTranslate(context, "accountType"),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text("PERSONAL",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                    height: 30.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(120.0)),
                    child: MaterialButton(
                      onPressed: () {
                        Provider.of<LanguageProvider>(context, listen: false)
                            .myChangeLanguage();
                      },
                      // padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10.0),
                      child: Text(
                        getTranslate(context, "changeLanguage"),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text("version 4.8.15.16.23.42",
                      style: TextStyle(color: Color(0xff39719F)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget profileImage({required String imgURL, double radius = 30.0}) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: radius,
          backgroundImage: Image.network(imgURL).image,
        ),
        InkWell(
          onTap: () {},
          child: const CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
