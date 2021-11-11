import 'package:flutter/material.dart';

class SubscripeType extends StatefulWidget {
  final String imageType  ;
  const SubscripeType({Key? key , required this.imageType}) : super(key: key);

  @override
  _SubscripeTypeState createState() => _SubscripeTypeState();
}

class _SubscripeTypeState extends State<SubscripeType> {

// bool month1 = false ;
// bool month3 = true ;
int group = 1 ;
Color myColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff19233E),
      appBar: AppBar(
        title: Text("select subscription type",style: TextStyle(color: Color(0xff39719F)),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff19233E),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset("assets/images/${widget.imageType}.png",fit: BoxFit.fill,height: 150)),
            Container(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0) ,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Search Item",style: Theme.of(context).textTheme.bodyText1,),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text("User(s)",style: Theme.of(context).textTheme.bodyText1,),
                          ],
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("100",style: Theme.of(context).textTheme.bodyText1,),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text("1User(s)",style: Theme.of(context).textTheme.bodyText1,),
                          ],
                        ),
                      ],
                    ),
                  ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
              // margin: const EdgeInsets.symmetric(vertical: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        activeColor: Colors.white,
                        focusColor: Colors.white,
                        fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                        value: 1,
                        groupValue: group,
                        onChanged: (int? val){
                          setState(() {
                            group = val!;
                          });
                        },
                      ),
                      Text("For 1 Month",style: Theme.of(context).textTheme.bodyText1,),
                      SizedBox(
                        width: 40.0,
                      ),
                      Text("20",style: Theme.of(context).textTheme.bodyText1,),
                    ],
                  ),
                  Transform.translate(
                    offset: Offset(0, -10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(
                          activeColor: Colors.white,
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                          value: 2,
                          groupValue: group,
                          onChanged: (int? val){
                            setState(() {
                              group = val!;
                            });
                          },
                        ),
                        Text("For 3 Month",style: Theme.of(context).textTheme.bodyText1,),
                        SizedBox(
                          width: 40.0,
                        ),
                        Text("45",style: Theme.of(context).textTheme.bodyText1,),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            Center(
              child: Container(
                width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 35.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                     gradient: LinearGradient(
                       begin: Alignment.centerLeft,
                         end: Alignment.bottomLeft,

                           tileMode: TileMode.clamp,
                         colors: [Color(0xff177DD5),Color(0xff1A9DE0),Color(0xff1CAFE4).withOpacity(.9),])
                  ),
                  child: MaterialButton(onPressed: (){},child: Text("Subscribe Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 17),),)),
            )
          ],
        ),
      ),

    );
  }
}
