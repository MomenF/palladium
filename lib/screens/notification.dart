import 'package:flutter/material.dart';

import '../config.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backGroundApp,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 20,
            color: Color(0xff199be0),
            letterSpacing: 0.8,
          ),

        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search,color: Colors.white,),
            onPressed: (){},
          ),
        ],
      ),
      backgroundColor: backGroundApp,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white.withOpacity(0.0),
        onPressed: () {
          // changeIndexScreen(context, 2);
        },
        child: Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
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
                color: Colors.lightBlueAccent.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 9,
                offset: const Offset(0, 8), // changes position of shadow
              ),
            ],
          ),
          child: const Icon(
            Icons.search,
            size: 32.0,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: backGroundApp,
            boxShadow: const [
              BoxShadow(
                color: Colors.blueAccent,
                offset: Offset(2, 2),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 2,
                child: columnX(
                  context,
                  Icons.home_outlined,
                  0,
                ),
              ),
              Expanded(
                flex: 2,
                child: columnX(
                  context,
                  Icons.layers_outlined,
                  1,
                ),
              ),
              //Location Floating Action Button
              const Expanded(
                flex: 1,
                child: SizedBox(width: 1),
              ),
              Expanded(
                flex: 2,
                child: columnX(
                  context,
                  Icons.credit_card_outlined,
                  3,
                ),
              ),
              Expanded(
                flex: 2,
                child: columnX(
                  context,
                  Icons.settings_outlined,
                  4,
                ),
              ),
            ],
          ),
        ),
      ),

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*.05),
        child: Column(
          children: [
            SizedBox(height: height*.05,),
            const Center(
              child: Text(
                'Here you will see notifications for applications',
                style: TextStyle(
                  fontFamily: 'Europa',
                  fontSize: 14,
                  color: Color(0xffffffff),
                  height: 1.5625,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),

              ),
            ),
            SizedBox(height: height*.05,),
            //Listview of Notifications
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                separatorBuilder:(context, index) =>  const SizedBox(height: 10.0),
                itemBuilder:(context, index) =>  Container(
                  height: height*.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    border: Border.all(width: 2.0, color: const Color(0xff198dbe)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.notifications_outlined,color:  Color(0xff198dbe))),
                        const Text(
                          'هذا مثال على اشعار مالوش أي ستين لازمه',
                          style: TextStyle(
                            fontFamily: 'FF Shamel Family Sans One',
                            fontSize: 13,
                            color: Color(0xff198dbe),
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.right,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  InkWell columnX(
      context,
      iconType,
      int screenNumber,
      ) {
    return InkWell(
      onTap: () {
        // changeIndexScreen(context, screenNumber);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconType,
            color: Colors.lightBlueAccent,
            // color: getIndexScreen(context) == screenNumber
            // : Colors.grey,
          ),
        ],
      ),
    );
  }
}
