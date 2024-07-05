import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';
import 'package:flutter/material.dart';
class SubAdminScreen extends StatefulWidget {
  const SubAdminScreen({super.key});

  @override
  State<SubAdminScreen> createState() => _SubAdminScreenState();
}
List aListForGenderSelection=[true,true];
bool forDP=false;
class _SubAdminScreenState extends State<SubAdminScreen> {
  final GlobalKey<FormState> controllerForTextField=GlobalKey();
  seter(){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: LinearProgressIndicator(
            minHeight: 1,
            value: 0.3,
            color: Color(customColor("ea0a8e")),
          ),
        ),
        // scrolledUnderElevation: 0.0001,
        scrolledUnderElevation: 0.01,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },icon: Icon(Icons.keyboard_arrow_left,size: 40,),
        ),
        title: Text("Add Sub Admin",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                backgroundColor: Color(customColor("ea0a8e")),
                child: IconButton(onPressed: () {

                }, icon: Icon(Icons.headset_mic_sharp,color: Colors.white,))
            ),
          ),

        ],      ),
      bottomNavigationBar: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: customMaterialButtonWidget2(content: Text("SAVE",style: TextStyle(color: Colors.white),),width: 160, onTap: (){
              if(controllerForTextField.currentState!.validate()){
                print("OKKOOKKO");
              }
            }),
          ),  Padding(
            padding: const EdgeInsets.all(8.0),
            child: customMaterialButtonWidget2(content: Text("SAVE &  NEXT",style: TextStyle(color: Colors.white),),width: 160, onTap: (){}),
          ),
        ],
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: controllerForTextField,
        
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                // SizedBox(height: 29,),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(context: context, builder: (context) {
                          return StatefulBuilder(builder: (context, setState) {
                            return Container(
                              height: 205,
                              color: Color(customColor("ffffff")),
                              child: Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Text("Which one do you like?"),
                                  Divider(),
                                  SizedBox(height: 7,),
        
                                  Text("Capture Photo"),
                                  SizedBox(height: 7,),
        
                                  Divider(),
                                  // SizedBox(height: 7,),
        
                                  Container(height: 35,
                                      child: TextButton(onPressed: (){

                                          forDP=!forDP;
                                          seter();

                                      }, child: Text("Select From Gallery",style: TextStyle(color: Colors.black,fontWeight:FontWeight.w400),),)),
                                  // SizedBox(height: 7,),
                                  Divider(thickness: 6,color: Color(customColor("e5e5e5")),),
                                  // SizedBox(height: 7,),
                                  TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text("CANCEL",style: TextStyle(color: Colors.black),))
        
        
                                ],
                              ),
                            );
                          },);
                        },);
                      },
                      child:forDP? Container(
                        // radius: 74,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2),
                          image: DecorationImage(
                            image: AssetImage("image/iconimg/femaleimg.jpg"),
                            fit: BoxFit.fill
                          )
                        ),
                        // child: Image.asset("image/iconimg/femaleimg.jpg",fit: BoxFit.fill,),
                      //
                      ): CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.black,
                        child:  CircleAvatar(
                          radius: 74,
                          backgroundColor: Color(customColor("f2f2f2")),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt_outlined,size: 50,),
                              SizedBox(height: 5,),
                              Text("Add Photo")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        aListForGenderSelection=[!aListForGenderSelection[0],true];
                      });
                    },
                    child: Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: aListForGenderSelection[0]? Colors.white:Color(customColor("d9ffff")),
                        border:aListForGenderSelection[0]? Border.all(color: Colors.transparent):Border.all(color: Color(customColor("d7f2fd")))
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Male",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                              SizedBox(width: 10,),
                              CircleAvatar(radius: 12,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 11,
                                  backgroundColor:aListForGenderSelection[0]? Colors.white:Color(customColor("02a3fe")),
                                  child: aListForGenderSelection[0]?null:Icon(Icons.check,size: 20,color: Colors.white,),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
        
                          Container(height: 80,
                            width: 80,
                            color: aListForGenderSelection[0]? Colors.white:Color(customColor("d9ffff")),
                            child: Image.asset("image/iconimg/maleimg.jpg",),
                          )
        
                        ],
                      ),
                    ),
                  ),
                  // CircleAvatar(radius: 10,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          aListForGenderSelection=[true,!aListForGenderSelection[1]];
                        });
                      },
                      child: Container(
                        height: 150,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: aListForGenderSelection[1]? Colors.white:Color(customColor("fff9fd")),
                            border:aListForGenderSelection[1]? Border.all(color: Colors.transparent):Border.all(color: Color(customColor("e5c8da")))
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Female",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                SizedBox(width: 10,),
                                CircleAvatar(radius: 12,
                                  backgroundColor: Colors.black,
                                  child: CircleAvatar(
                                    radius: 11,
                                    backgroundColor:aListForGenderSelection[1]? Colors.white:Color(customColor("c05c9a")),
                                    child: aListForGenderSelection[1]?null:Icon(Icons.check,size: 20,color: Colors.white,),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 10,),
        
                            Container(height: 80,
                              width: 80,
                              color: aListForGenderSelection[1]? Colors.white:Color(customColor("fff9fd")),
                              child: Image.asset("image/iconimg/femaleimg.jpg",
                                colorBlendMode: BlendMode.dst,
                                // color: Colors.pink,
        
                              ),
                            )
        
                          ],
                        ),
                      ),
                    ),
                ],),
                SizedBox(height: 10,),
        
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name:"),
                        // TextField()
                        SizedBox(width: 50,),
                        Container(
                          height: 40,
                          // width: 200,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 1,color: Color(customColor("ebebeb")))
                            )
                          ),
                          width: 230,
                          child: TextFormField(
                            cursorHeight: 25,
                            cursorColor: Colors.black,
                            cursorOpacityAnimates: true,
        
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 1),
                              border: OutlineInputBorder(
                                borderSide:BorderSide.none,
        
        
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none
                              )
                            ),
                          ),
                        )
                      ],
        
        
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Phone:"),
                        // TextField()
                        SizedBox(width: 50,),
                        Container(
                          height: 40,
                          // width: 200,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1,color: Color(customColor("ebebeb")))
                              )
                          ),
                          width: 230,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            cursorHeight: 25,
                            cursorColor: Colors.black,
                            cursorOpacityAnimates: true,
        
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 1),
                                border: OutlineInputBorder(
                                  borderSide:BorderSide.none,
        
        
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                )
                            ),
                          ),
                        )
                      ],
        
        
                    ),
                    SizedBox(height: 20,),
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email::"),
                        // TextField()
                        SizedBox(width: 50,),
                        Container(
                          height: 40,
                          // width: 200,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(width: 1,color: Color(customColor("ebebeb")))
                              )
                          ),
                          width: 230,
                          child: TextFormField(
                            validator: (value) {
                              if(value!.isEmpty){
                                final msg=SnackBar(content: Text("Please Enter Email.."));
                                ScaffoldMessenger.of(context).showSnackBar(msg);
                              }
                            },
                            cursorHeight: 25,
                            cursorColor: Colors.black,
                            cursorOpacityAnimates: true,
        
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 1),
                                border: OutlineInputBorder(
                                  borderSide:BorderSide.none,
        
        
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none
                                )
                            ),
                          ),
                        )
                      ],
        
        
                    )
        
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
