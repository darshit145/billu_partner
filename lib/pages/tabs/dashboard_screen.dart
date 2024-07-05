import 'package:billu_partners/pages/other/custom_widget/custom_switch_button.dart';
import 'package:billu_partners/pages/other/fiture2/create_deal_screen.dart';
import 'package:flutter/material.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';
import 'package:billu_partners/pages/other/fiture//sub_admin_detail_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:billu_partners/pages/other/fiture2/salon_services.dart';
import 'package:billu_partners/home_page_screen/custom_stack_widget/custon_bottom_sheet.dart';
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool valueForAppBarSwitch=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
          toolbarHeight: 80,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 10,
              child: Icon(Icons.perm_identity_sharp,color: Color(customColor("d5d5d5")),),
              backgroundColor: Color(customColor("f2f2f2")),

            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                 SizedBox(height: 13,),
                  customSwitchButton(onTap: (){
                    setState(() {
                      valueForAppBarSwitch=!valueForAppBarSwitch;
                      if(valueForAppBarSwitch==false){
                        List listForSheetData=[2,4,8,12,48];
                        showModalBottomSheet(
                          showDragHandle: true,
                          shape: RoundedRectangleBorder(),
                          context: context, builder: (context) {
                          return SizedBox(
                            height: 550,
                            // width: 50,
                            child: CustomBottomSheet(),
                          );
                        },);

                      }
                    });
                  },isItOn:valueForAppBarSwitch ),
                  SizedBox(height: 3,),
                  Text(valueForAppBarSwitch? "Online":"Offline",style: TextStyle(fontSize: 10),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(radius: 20,backgroundColor: Colors.black,
                backgroundImage: AssetImage("image/BCPimg.png",),
              ),

            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  backgroundColor: Color(customColor("ea0a8e")),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.headset_mic_sharp,
                        color: Colors.white,
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(radius: 20,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 19,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(Icons.notifications),
                  ),
                ),
              ),
            )
          ]

      ),
      body: RefreshIndicator(
        color: Colors.white,
        strokeWidth: 3,

        backgroundColor: Colors.blueGrey,

        onRefresh: () async{
          setState(() {

          });

        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) {
                              //   return StoryViewScreen();
                              // },));
                            },
                            child: SizedBox(
                              height: 55,
                              width: 75,
                              child: Image.asset("image/zip/zip1.gif"),

                            ),
                          ),
                          Text("Gold",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                          Text("Membership",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          AnimatedContainer(duration: Duration(seconds: 1),
                            height: 55,
                            width: 75,
                            curve: Curves.bounceOut,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("image/zip/zip5.gif")
                                ),

                                // color: Colors.black,

                                borderRadius: BorderRadius.all(Radius.circular(40))
                            ),
                          ),

                          Text("₹200000",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                          Text("Cash Prize",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          AnimatedContainer(duration: Duration(seconds: 1),
                            height: 75,
                            width: 75,
                            curve: Curves.bounceOut,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("image/zip/zip3.gif"),
                                  fit: BoxFit.fill
                                ),

                                // color: Colors.black,

                                borderRadius: BorderRadius.all(Radius.circular(40))
                            ),
                          ),

                          Text("No Wait",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                          Text("Membership",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          AnimatedContainer(duration: Duration(seconds: 1),
                            height: 75,
                            width: 75,
                            curve: Curves.bounceOut,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("image/zip/zip4.gif")
                                ),

                                // color: Colors.black,

                                borderRadius: BorderRadius.all(Radius.circular(40))
                            ),
                          ),

                          Text("Salon",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                          Text("Products",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(width: 20,)
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Bookings"),
                    Container(
                      height: 25,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1,color: Colors.black)
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                color: Color(customColor("ea0a8e")),
                                borderRadius:BorderRadius.circular(5)
                            ),
                            child: Center(child: Icon(Icons.add,size: 18,color: Colors.white,)),
                          ),
                          SizedBox(width: 10,),
                          Text("Add Booking",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),)
                        ],
                      ),
                    )
                  ],),
                SizedBox(height: 15,),
                customMaterialButtonWidget2(
                    height: 40,
                    width: double.infinity,
                    content: Text("View All Bookings",style: TextStyle(color: Colors.white),), onTap: (){
                      setState(() {

                      });
                }),
                SizedBox(height: 20,),
                RichText(
                    text: const TextSpan(
                        text: "Now salon owner can add",

                        style: TextStyle(color: Colors.black,fontSize: 19),
                        children: [
                          TextSpan(text: "\nSubadmin",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w600)),
                          TextSpan(
                            text: " to process bookings.",
                          ),

                        ])),
                SizedBox(height: 20,),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SubAdminScreen(),));
                          },
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Color(customColor("f5f9fc")),
                            child: Icon(Icons.add,size: 45,color: Color(customColor("616161")),),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("Add")
                      ],
                    ),

                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return  CreateDealFromDashbordScreen();
                        },));
                      },
                      child: Container(width: 165,height: 120,
                        decoration: BoxDecoration(
                            color: Color(customColor("e8f7b6")),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 0.9,color: Color(customColor("d5d6d2")))
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 25,
                                left: 10,

                                child: Row(
                                  children: [
                                    Text("Deals & Offers ",style: TextStyle(fontWeight: FontWeight.w600),),
                                    SizedBox(width: 1,),
                                    Icon(Icons.keyboard_arrow_right)
                                  ],
                                )),
                            Positioned(top: 35,left: 80, child: Icon(Icons.percent,size: 110,color: Color(customColor("e0f0a5")),))
                          ],
                        ),

                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SlonServices();
                        },));
                      },
                      child: Container(width: 165,height: 120,
                        decoration: BoxDecoration(
                            color: Color(customColor("F9E3E6")),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 0.9,color: Color(customColor("d5d6d2")))
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                top:35,
                                left: 80,
                                child: Icon(Icons.ac_unit,size: 110,color: Color(customColor("f3d8dd")),)),
                            Positioned(top: 15,
                                left: 10,
                                child: Text("Salon Services",style: TextStyle(fontWeight: FontWeight.w600),)),
                            Positioned(
                                top: 45,
                                left: 10,
                                right: 10,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Active"),
                                    Text("1")
                                  ],
                                )),
                            Positioned(
                                top: 70,
                                left: 10,
                                right: 10,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Under Review"),
                                    Text("0")
                                  ],
                                ))
                          ],
                        ),


                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Container(width: 165,height: 120,
                      decoration: BoxDecoration(
                          color: Color(customColor("d6ddfa")),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 0.9,color: Color(customColor("d5d6d2")))
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top:35,
                              left: 80,
                              child: Icon(Icons.people_rounded,size: 110,color: Color(customColor("cdd6f4")),)),

                          Positioned(
                              top: 25,
                              left: 10,
                              right: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Staff",style: TextStyle(fontWeight: FontWeight.w600),),
                                  Icon(Icons.keyboard_arrow_right)
                                ],
                              )),

                        ],
                      ),

                    ),
                    SizedBox(width: 10,),
                    Container(width: 165,height: 120,
                      decoration: BoxDecoration(
                          color: Color(customColor("f0d9f6")),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 0.9,color: Color(customColor("d5d6d2")))
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top:35,
                              left: 80,
                              child: Icon(Icons.play_circle_outline_sharp,size: 110,color: Color(customColor("eccef2")),)),

                          Positioned(
                              top: 25,
                              left: 10,
                              right: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Portfolio",style: TextStyle(fontWeight: FontWeight.w600),),
                                  Icon(Icons.keyboard_arrow_right)
                                ],
                              )),

                        ],
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text("More from bilu",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                SizedBox(height: 15,),
                ListTile(

                  leading: Icon(Icons.bar_chart),
                  tileColor: Color(customColor("f5f9fc")),
                  title: Text("Performance Summary",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                  trailing: Icon(Icons.arrow_circle_right_outlined,size: 35,color: Color(customColor("116aea")),),
                ),
                Divider(height: 0.1,),
                ListTile(

                  leading: Icon(Icons.money),
                  tileColor: Color(customColor("f5f9fc")),
                  title: Text("Convenience Fee",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                  trailing: Icon(Icons.arrow_circle_right_outlined,size: 35,color: Color(customColor("116aea")),),
                ),
                Divider(height: 0.1,),

                ListTile(

                  leading: Icon(Icons.video_collection),
                  tileColor: Color(customColor("f5f9fc")),
                  title: Text("Traning Videos",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                  trailing: Icon(Icons.arrow_circle_right_outlined,size: 35,color: Color(customColor("116aea")),),
                ),
                Divider(height: 0.1,),
                SizedBox(height: 20,),
                SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: Stack(children:[
                      Positioned(
                          top: 1,
                          child: Text("Social Media Template",style: TextStyle(fontWeight: FontWeight.w500),)),
                      Positioned(
                          top: 20,
                          child: Text("Library",style: TextStyle(fontWeight: FontWeight.w500),)),
                      Positioned(
                        // left: 100,
                        right: 10,

                        child: customMaterialButtonWidget2(
                            height: 30,
                            width: 90,
                            content: Row(children: [
                              Text("Explore",style: TextStyle(color: Colors.white),),
                              Icon(Icons.keyboard_arrow_right,color: Colors.white,)
                            ],), onTap: (){}),
                      )
                    ])),
                SizedBox(
                  // height: 600,
                  child: CarouselSlider(

                    items: [
                      Container(
                        height: 400,
                        width: 400,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("image/corosoleoption/1.jpg",),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 400,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("image/corosoleoption/01.jpg",),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 400,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("image/corosoleoption/02.jpg",),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 400,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("image/corosoleoption/03.jpg",),
                                fit: BoxFit.fill
                            )
                        ),
                      ), Container(
                        height: 400,
                        width: 400,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("image/corosoleoption/04.jpg",),
                                fit: BoxFit.fill
                            )
                        ),
                      ),Container(
                        height: 400,
                        width: 400,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("image/corosoleoption/05.jpg",),
                                fit: BoxFit.fill
                            )
                        ),
                      ),Container(
                        height: 400,
                        width: 400,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("image/corosoleoption/06.jpg",),
                                fit: BoxFit.fill
                            )
                        ),
                      ),Container(
                        height: 400,
                        width: 400,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("image/corosoleoption/07.jpg",),
                                fit: BoxFit.fill
                            )
                        ),
                      ),Container(
                        height: 400,
                        width: 400,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("image/corosoleoption/08.jpg",),
                                fit: BoxFit.fill
                            )
                        ),
                      ),Container(
                        height: 400,
                        width: 400,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("image/corosoleoption/09.jpg",),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      // SizedBox(width: 10,),

                    ],
                    options: CarouselOptions(
                        height: 310,
                        enableInfiniteScroll: true,
                        pauseAutoPlayOnTouch: true,
                        aspectRatio: 10
                    ),
                  ),
                )




              ],
            ),
          ),
        ),
      ),
    );
  }
}
showBottomSheet(context){
  showModalBottomSheet(
    // shape: Border.all(),
    // showDragHandle: ,

    context: context, builder: (context) {
    return Container();
  },);
}