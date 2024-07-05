import 'package:flutter/material.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';
import 'package:billu_partners/auth/working_hours_screen.dart';
class BasicInformationScreen extends StatefulWidget {
  const BasicInformationScreen({super.key});

  @override
  State<BasicInformationScreen> createState() => _BasicInformationScreenState();
}
List globalListForDetailofForm=["","","",];
class _BasicInformationScreenState extends State<BasicInformationScreen> {
  final GlobalKey<FormState> aKeyForTextForm=GlobalKey();
  bool scaffoldPriority=true;
  List scaffoldEnteries=[false,false,false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios_new_sharp)),
        title: Text("My Basic Info",style: TextStyle(fontSize: 16),),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: LinearProgressIndicator(
            color: Colors.greenAccent,
            minHeight: 1,
            value: 0.3,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 17),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Form(
                key: aKeyForTextForm,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Text("My : good name is",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),

                      SizedBox(height: 18,),
                      Container(
                        height:45,
                        child: TextFormField(
                          onChanged: (value) {
                            globalListForDetailofForm[0]=value;
                          },
                          validator: (value) {
                            if(value!.isEmpty && scaffoldPriority){
                              scaffoldPriority=false;
                              scaffoldEnteries[0]=false;

                              setState(() {
                                final msg=SnackBar(content: Text("Please Enter good name",style: TextStyle(color: Colors.white),),backgroundColor: Colors.red,);
                                ScaffoldMessenger.of(context).showSnackBar(msg);

                              });
                            }else{
                              scaffoldEnteries[0]=true;
                              scaffoldPriority=true;
                            }
                            return null;
                          },
                          cursorHeight: 20,
                          style: TextStyle(height: 1),

                          decoration: InputDecoration(
                            label: Text("Name Here...",style: TextStyle(color: Colors.black),),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6),borderSide: BorderSide(width: 1,color: Colors.black))
                          ),
                        ),
                      ),
                      SizedBox(height: 29,),
                      Text("My : business name is",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      SizedBox(height: 18,),
                      Container(
                        height:45,
                        child: TextFormField(
                          onChanged: (value) {
                            globalListForDetailofForm[1]=value;
                          },
                          validator: (value) {
                            if(value!.isEmpty && scaffoldPriority){
                              setState(() {
                                scaffoldEnteries[1]=false;

                                scaffoldPriority=false;
                                final msg=SnackBar(content: Text("Please Enter Business name",style: TextStyle(color: Colors.white),),backgroundColor: Colors.red,);
                                ScaffoldMessenger.of(context).showSnackBar(msg);

                              });
                            }else if(value!.toString().length<=5 && scaffoldPriority){
                              scaffoldPriority=false;
                              scaffoldEnteries[1]=false;

                              final msg=SnackBar(content: Text("Business name should be greater than five character",style: TextStyle(color: Colors.white),),backgroundColor: Colors.red,);
                              ScaffoldMessenger.of(context).showSnackBar(msg);

                            }else{
                              scaffoldEnteries[1]=true;
                              scaffoldPriority=true;
                            }
                            return null;
                          },
                          cursorHeight: 20,
                          style: TextStyle(height: 1),

                          decoration: InputDecoration(
                              label: Text("Salon Name Here...",style: TextStyle(color: Colors.black),),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6),borderSide: BorderSide(width: 1,color: Colors.black))
                          ),
                        ),
                      ),
                      SizedBox(height: 29,),
                      Text("My : business email is",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      SizedBox(height: 18,),
                      Container(
                        height:45,
                        child: TextFormField(
                          onChanged: (value) {
                            globalListForDetailofForm[2]=value;
                          },
                          onTapOutside: (event) {
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                          validator: (value) {
                            if(value!.isEmpty && scaffoldPriority){
                              setState(() {
                                scaffoldEnteries[2]=false;
                                scaffoldPriority=false;
                                final msg=SnackBar(content: Text("enter email Address",style: TextStyle(color: Colors.white),),backgroundColor: Colors.red,);
                                ScaffoldMessenger.of(context).showSnackBar(msg);

                              });
                            }else{
                              scaffoldPriority=true;
                              scaffoldEnteries[2]=true;
                            }
                            return null;
                          },
                          cursorHeight: 20,
                          style: TextStyle(height: 1),

                          decoration: InputDecoration(
                              label: Text("email here...",style: TextStyle(color: Colors.black),),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6),borderSide: BorderSide(width: 1,color: Colors.black))
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),

               customMaterialButtonWidget(content:"Continue",redius: 9,height: 40,width: double.infinity,
                   onTap:(){
                          if(aKeyForTextForm.currentState!.validate()){
                            setState(() async{

                              if(scaffoldEnteries[0]==scaffoldEnteries[1] && true==scaffoldEnteries[2]){
                                await Future.delayed(Duration(milliseconds: 400));

                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return WorkingHoursScreen();
                                },));
                              }

                            });
                          }

                   })

          ],
        ),
      ),
    );
  }
}
