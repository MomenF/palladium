import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      backgroundColor: Color(0xff19233E),
      appBar: AppBar(
        title: Text("Plans",style: TextStyle(color: Color(0xff39719F)),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff19233E),
      ),
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      SubscripeType(imageType: "bronze",)
                  ));
                },
                child: Container(
                  height: 150.0,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/bronze.png",fit: BoxFit.fill,height: 150),
                      Positioned(
                          top: 105.0,
                          right: 70.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("500 view"),
                              Text("1 No devices"),
                            ],
                          ))


                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      SubscripeType(imageType: "silver",)
                  ));
                },
                child: Container(
                  height: 150.0,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/silver.png",fit: BoxFit.fill,height: 150,),
                      Positioned(
                          top: 105.0,
                          right: 70.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("1000 view"),
                              Text("3 No devices"),
                            ],
                          ))

                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      SubscripeType(imageType: "gold",)
                  ));
                },
                child: Container(
                  height: 150.0,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/gold.png",fit: BoxFit.fill,height: 150,),
                      Positioned(
                          top: 105.0,
                          right: 70.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("1000 view"),
                              Text("3 No devices"),
                            ],
                          ))


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
