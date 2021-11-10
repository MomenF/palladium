import 'package:flutter/material.dart';
import 'package:palladium/screens/screens.dart';
import '../languages/languages.dart';

import '../services/services.dart';
import '../config.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: getIsEnglish(context) == true
                  ? const Radius.circular(0)
                  : const Radius.circular(25),
              topRight: getIsEnglish(context) == true
                  ? const Radius.circular(25)
                  : const Radius.circular(0),
              bottomLeft: getIsEnglish(context) == true
                  ? const Radius.circular(0)
                  : const Radius.circular(25),
              bottomRight: getIsEnglish(context) == true
                  ? const Radius.circular(25)
                  : const Radius.circular(0),
            ),
            color: backGroundApp,
          ),
          // child: bodyAlertDialog,
          child: Column(
            children: [
              const SizedBox(height: 30.0),
              Row(
                children: [
                  const SizedBox(width: 35.0),
                  Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
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
                          blurRadius: 20,
                          offset:
                              const Offset(0, 13), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Text(
                    getTranslate(context, "palladium"),
                    style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: ListView(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: _buildListViewItems(Icons.favorite_border,
                          getTranslate(context, "favorites")),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: _buildListViewItems(Icons.search, getTranslate(context, "searchItems")),
                    ),
                    GestureDetector(
                      onTap: () {
                        changeIndexScreen(context,1);
                        Navigator.pop(context);
                      },
                      child:
                          _buildListViewItems(Icons.layers_outlined, getTranslate(context, "brands")),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: _buildListViewItems(Icons.cloud, getTranslate(context, "calculator")),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: _buildListViewItems(Icons.cloud, getTranslate(context, "totalPricing")),
                    ),
                    GestureDetector(
                      onTap: () {
                        changeIndexScreen(context,3);
                        Navigator.pop(context);
                      },
                      child: _buildListViewItems(
                          Icons.credit_card_outlined, getTranslate(context, "subscriptions")),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: _buildListViewItems(
                          Icons.phone_outlined, getTranslate(context, "contactUS")),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: _buildListViewItems(
                          Icons.share_outlined, getTranslate(context, "shareApp")),
                    ),
                    GestureDetector(
                      onTap: () {
                            changeIndexScreen(context,4);
                        Navigator.pop(context);
                      },
                      child: _buildListViewItems(
                          Icons.settings_outlined, getTranslate(context, "settings")),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const LoginScreen()));
                      },
                      child: _buildListViewItems(Icons.login_outlined, getTranslate(context, "logIn")),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListViewItems(icon, String textTitle) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 30.0),
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(width: 5.0),
            Text(
              textTitle,
              style: const TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
