import 'package:flutter/material.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';
import 'package:billu_partners/pages/home_page_screem_billu.dart';

class UploadImageScreen extends StatefulWidget {
  const UploadImageScreen({super.key});

  @override
  State<UploadImageScreen> createState() => _UploadImageScreenState();
}

class _UploadImageScreenState extends State<UploadImageScreen> {
  List liForImage=[false,false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0001,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            size: 35,
          ),
        ),
        title: Text(
          "Upload Cover",
          style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                backgroundColor: Color(customColor("ea0a8e")),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.headset_mic_sharp,
                      color: Colors.white,
                    ))),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: LinearProgressIndicator(
            color: Color(customColor("ea0a8e")),
            value: 0.78,
            minHeight: 1.3,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4,
              ),
              Text(
                "Hey,",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.8),
              ),
              Text(
                "Click the best one and post!",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.8),
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                "1.Upload Salon Inside Image",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 25),
                child: Container(
                  height: 187,
                  decoration: BoxDecoration(
                    image:liForImage[1]? DecorationImage(image: AssetImage("image/billulogo.png",),fit: BoxFit.fill):null,
                    color: Color(customColor("d5d5d5")),

                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 35, right: 35, top: 20, bottom: 123),
                    child: GestureDetector(
                      onTap: () {
                        forBottomSheet(0);


                      },
                      child: Container(

                        // height: 10,

                        decoration: BoxDecoration(  color: Color(
                          customColor("ea0a8e"),
                        ),
                          borderRadius: BorderRadius.circular(6),


                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // SizedBox(width: 20,),
                            Center(child: Icon(Icons.add,color: Colors.white,size: 34,)),
                            Text("Add Salon Inside Image",style: TextStyle(color: Colors.white,fontSize: 16.5,fontWeight: FontWeight.w700),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "2.Upload Salon Outside Image",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Container(
                  decoration: BoxDecoration(
                    image: liForImage[0]? DecorationImage(image: AssetImage("image/billulogo.png",),fit: BoxFit.fill):null,
                    color: Color(customColor("d5d5d5")),


                  ),
                  height: 187,

                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 35, right: 35, top: 20, bottom: 123),
                    child: GestureDetector(
                      onTap: () {
                        forBottomSheet(1);
                      },
                      child: Container(

                        height: 10,

                        decoration: BoxDecoration(
                          color: Color(
                          customColor("ea0a8e"),
                        ),
                          borderRadius: BorderRadius.circular(6),


                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // SizedBox(width: 20,),
                            Center(child: Icon(Icons.add,color: Colors.white,size: 34,)),
                            Text("Add Salon OutSide Image",style: TextStyle(color: Colors.white,fontSize: 16.5,fontWeight: FontWeight.w700),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Rules & Instruction:",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text("Image Should be clear visible about your \nbrand.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),)
                ],
              ),
              SizedBox(height: 13,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text("Inside Image should not have any phone \nNumber.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),)
                ],
              ),
              SizedBox(height: 13,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text("The image should not have any Model image \nunless yorhave the copyright of it.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),)
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 10),
                child: customMaterialButtonWidget2(
                  content: Text("Skip",style: TextStyle(color: Colors.black),),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HomePage();
                    },));

                  },buttonColor: Colors.white,
                  height: 40,
                  width: double.infinity
                ),
              )
          
          
            ],
          ),
        ),
      ),
    );
  }
  forBottomSheet(int index){
    showModalBottomSheet(
      // showDragHandle: true,
      shape: Border(top: BorderSide.none),
      context: context, builder: (context) {

      return Container(height: 230,width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
          child: Column(
            children: [
              // SizedBox(height: 29,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(width: 60,),
                  Container(
                    height: 5,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(13)
                    ),
                  ),
                  IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: Icon(Icons.close_rounded)),
                ],
              ),
              customMaterialButtonWidget2( onTap: () {

              },content: Text("Take A Photo",style: TextStyle(color: Colors.white,),),
                width: double.infinity,
                height: 38,
                buttonColor: Colors.black
              ),
              SizedBox(height: 5,),
              customMaterialButtonWidget2( onTap: () {
               setState(() {
                 if(index==0){
                   liForImage[0]=true;
                 }else if(index==0){
                   liForImage[1]=true;

                 }

               });

              },content: Text("Chhose From Galery",style: TextStyle(color: Colors.white,),),
                  width: double.infinity,
                  height: 38,
                  buttonColor: Colors.black
              ),
              SizedBox(height: 5,),

              customMaterialButtonWidget2( onTap: () {

              },content: Text("Cancel",style: TextStyle(color: Colors.black,),),
                  width: double.infinity,
                  height: 38,
                  buttonColor: Colors.white
              )

            ],
          ),
        ),
      );
    },);
  }
}
