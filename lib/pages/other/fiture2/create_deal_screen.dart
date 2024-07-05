import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';
import 'package:flutter/material.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'dart:async';
class CreateDealFromDashbordScreen extends StatefulWidget {
  const CreateDealFromDashbordScreen({super.key});

  @override
  State<CreateDealFromDashbordScreen> createState() => _CreateDealFromDashbordScreenState();
}
void setErForValue(){
  valueForProgress=0.01;

}
late double valueForProgress;
class _CreateDealFromDashbordScreenState extends State<CreateDealFromDashbordScreen> with SingleTickerProviderStateMixin{
  late TabController controllerForTab;

  @override
  void initState(){
    super.initState();
    controllerForTab=TabController(length: 4, vsync:this);
    setErForValue();
  }
  void updateState(){
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(() {
        valueForProgress=valueForProgress+0.0001;
      });
    });

  }
  @override
  Widget build(BuildContext context) {
    if(valueForProgress<1.0){
      updateState();
    }else if(valueForProgress==1.0){
      print("done>>>>>>>>>");
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 77,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left,size: 40,),

        ),
        title: Text("Deals",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
        actions: [
          helpMenuButton()

        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            onTap: (value) {
              setState(() {
              });
            },
            controller: controllerForTab,
            tabs: [
              Tab(child: Text("Active"),),
              Tab(child: Text("Under Review"),),
              Tab(child: Text("Expired"),),
              Tab(child: Text("Inactive"),),
            ],
          ),
        )
      ),
      body: TabBarView(
        controller: controllerForTab,
        children: [
          tabViewFor(),
          tabViewFor(),
          tabViewFor(),
          tabViewFor(),


        ],
      ),
    );
  }

}
Widget tabViewFor() {
  // setErForValue();
  return Center(
    child:(valueForProgress<0.8)? CircularProgressIndicator(
      value: valueForProgress,



    ):Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          SizedBox(
            height: 250,
            width: 250,
            child: Image.asset("image/deal_logo.jpg"),
          ),
          SizedBox(height: 30,),
          Text("Promte your services,Offers  &",style: TextStyle(fontWeight: FontWeight.w600)),
          Text("Discounts.",style: TextStyle(fontWeight: FontWeight.w600),),
          SizedBox(height: 20,),
          customMaterialButtonWidget2(content: Text(" Create Deal ",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),), onTap: (){})
        ],


      ),
    ),
  );
}
Widget helpMenuButton(){
  return  Padding(
    padding:  EdgeInsets.only(right: 10.0),
    child: CircleAvatar(
        backgroundColor: Color(customColor("ea0a8e")),
        child: IconButton(onPressed: () {

        }, icon: Icon(Icons.headset_mic_sharp,color: Colors.white,))
    ),
  );
}