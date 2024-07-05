import 'package:billu_partners/pages/other/fiture/services_page/services_setup_screen.dart';
import 'package:flutter/material.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';
class WorkingHoursScreen extends StatefulWidget {
  const WorkingHoursScreen({super.key});

  @override
  State<WorkingHoursScreen> createState() => _WorkingHoursScreenState();
}

class _WorkingHoursScreenState extends State<WorkingHoursScreen> {
  List  aListForDays=[!false,!false,!false,!false,!false,!false,!false];
  List aListForRadio=[false,false];
  List aListForClosingOpeaning=["12:12","12:12","12:12","12:12"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios_new_sharp),
        ),
        title: Text("Working Hours",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                backgroundColor: Color(0xffe90a8e),
                child: IconButton(onPressed: () {

                }, icon: Icon(Icons.headset_mic_sharp,color: Colors.white,))
            ),
          ),

        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: LinearProgressIndicator(
            minHeight: 1,
            value: 0.36,
            color: Colors.greenAccent,
          ),
        ),
      ),
      body: Padding(
        padding:   EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
        flex: aListForRadio[0]?1:2,
                child: Padding(
                  padding:   EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 1,),
                      Text("My Business",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),),
                      SizedBox(height: 3,),
                      Row(
                        children: [
                          Text("Opeaning",style: TextStyle(fontSize: 19,color: Colors.green,fontWeight: FontWeight.w500),),
                          SizedBox(width: 10,),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(4),


                            ),

                            height: 55,
                            width: 170,
                            child: Center(
                              child: ListTile(
                                onTap: () async{
                                  TimeOfDay? openTime=await showTimePicker(context: context, initialTime: TimeOfDay.now());
                                  setState(() {
                                    aListForClosingOpeaning[0]="${openTime?.hour}:${openTime?.minute}";
                                  });

                                },
                                title: Text("${aListForClosingOpeaning[0]}",style: TextStyle(fontSize: 14),),
                                trailing: Padding(
                                  padding: EdgeInsets.only(left: 40,bottom: 10),
                                  child: Column(
                                    children: [
                                      Container(height: 20,width: 20,
                                        child: Icon(Icons.keyboard_arrow_up),
                                      ),
                                      SizedBox(height: 3,),
                                      Container(height: 20,width: 20,
                                        child: Icon(Icons.keyboard_arrow_down),
                                      )
                                    ],
                                  ),
                                )  ,
                              ),
                            ),
                          ),
                          SizedBox(width:11,),
                          Text("&",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Text("Closing",style: TextStyle(fontSize: 19,color: Colors.red,fontWeight: FontWeight.w500),),
                          SizedBox(width: 18,),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(4,),


                            ),

                            height: 55,
                            width: 170,
                            child: Center(
                              child: ListTile(
                                onTap: ()async {
                                    TimeOfDay? closingTime= await showTimePicker(context: context, initialTime: TimeOfDay.now());
                                    print("${closingTime?.minute}:${closingTime?.hour}");
                                    setState(() {
                                      aListForClosingOpeaning[1]="${closingTime?.hour}:${closingTime?.minute}";


                                    });
                                },
                                title: Text("${aListForClosingOpeaning[1]}",style: TextStyle(fontSize: 14),),
                                trailing:  Padding(
                                  padding: EdgeInsets.only(left: 40,bottom: 10),
                                  child: Column(
                                    children: [
                                      Container(height: 20,width: 20,
                                        child: Icon(Icons.keyboard_arrow_up),
                                      ),
                                      SizedBox(height: 1,),
                                      Container(height: 20,width: 20,
                                        child: Icon(Icons.keyboard_arrow_down),
                                      )
                                    ],
                                  ),
                                )
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 12,),
                      Text("Time.",style: TextStyle(fontSize: 19,color: Colors.black,fontWeight: FontWeight.w500),)
                    ],
                  ),
                )),
            Divider(height: 0.1,thickness: 0.3),
            Expanded(
              flex: aListForRadio[0]?1:2,
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("I am working on",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),),
                  SizedBox(height: 6,),
                  Wrap(
                    spacing: 0,
                    runSpacing: 4,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            aListForDays[0]=!aListForDays[0];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color:aListForDays[0]? Colors.grey:Color.fromRGBO(0, 191, 184, 50),

                          ),
                          height: 48,
                          width: 80,
                          child: Center(child: Text("Sunday",style: TextStyle(fontSize: 12,color:aListForDays[0]? Colors.black:Colors.white),)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            aListForDays[1]=!aListForDays[1];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: aListForDays[1]?Colors.grey:Color.fromRGBO(0, 191, 184, 50),
                          ),
                          height: 48,
                          width: 100,

                          child: Center(child: Text("Monday",style: TextStyle(fontSize: 12,color:aListForDays[1] ?Colors.black:Colors.white),)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            aListForDays[2]=!aListForDays[2];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color:aListForDays[2]? Colors.grey:Color.fromRGBO(0, 191, 184, 50),

                          ),
                          height: 48,
                          width: 100,

                          child: Center(child: Text("Tuesday",style: TextStyle(fontSize: 12,color:aListForDays[2]? Colors.black:Colors.white),)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            aListForDays[3]=!aListForDays[3];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color:aListForDays[3]? Colors.grey:Color.fromRGBO(0, 191, 184, 50),

                          ),
                          height: 48,
                          width: 100,

                          child: Center(child: Text("Wednesday",style: TextStyle(fontSize: 12,color:aListForDays[3]? Colors.black:Colors.white),)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            aListForDays[4]=!aListForDays[4];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color:aListForDays[4]? Colors.grey:Color.fromRGBO(0, 191, 184, 50),

                          ),
                          height: 48,
                          width: 100,

                          child: Center(child: Text("Thursday",style: TextStyle(fontSize: 12,color:aListForDays[4]? Colors.black:Colors.white),)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            aListForDays[5]=!aListForDays[5];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color:aListForDays[5]? Colors.grey:Color.fromRGBO(0, 191, 184, 50),

                          ),
                          height: 48,
                          width: 100,

                          child: Center(child: Text("Friday",style: TextStyle(fontSize: 12,color:aListForDays[5]? Colors.black:Colors.white),)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            aListForDays[6]=!aListForDays[6];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: aListForDays[6]? Colors.grey:Color.fromRGBO(0, 191, 184, 50),

                          ),
                          height: 48,
                          width: 100,

                          child: Center(child: Text("Saturday",style: TextStyle(fontSize: 12,color:aListForDays[6]? Colors.black:Colors.white),)),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            )),
            Divider(height: 0.1,thickness: 0.3),
            Expanded(
                child: Padding(
                  padding:   EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 1,),
                      Text("Add Break Time",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 13,
                            backgroundColor: Colors.grey.shade200,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  aListForRadio=[!aListForRadio[0],false];
                                  // displayBreakTimeTable();


                                });
                              },
                              child: CircleAvatar(
                                backgroundColor:aListForRadio[0]? Colors.cyanAccent.shade700:Colors.grey.shade200,
                                child: aListForRadio[0]? Icon(Icons.check,color: Colors.white,):CircleAvatar(backgroundColor: Colors.grey.shade200,),


                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("Yes",style: TextStyle(fontSize: 15),),
                          SizedBox(width: 5,),

                          CircleAvatar(
                            radius: 13,
                            backgroundColor: Colors.grey.shade200,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  aListForRadio=[false,!aListForRadio[1]];

                                });
                              },
                              child: CircleAvatar(
                                backgroundColor:aListForRadio[1]? Colors.cyanAccent.shade700:Colors.grey.shade200,
                                child: aListForRadio[1]? Icon(Icons.check,color: Colors.white,):CircleAvatar(backgroundColor: Colors.grey.shade200,),


                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("No",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                      if(aListForRadio[0])
                        displayBreakTimeTable()

                    ],
                  ),
                )),
            // Expanded(child: Text("ok")),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: customMaterialButtonWidget(onTap: (){
                if(!aListForDays.firstWhere((element) => element==false)){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ServicesSetUpScreen();
                  },));


                }else{
                  print(">>>>>>>>>>>>>>>>>dfvsv");
                }
              },content:"Continue",width: 350),
            )
          ],
        ),
      ),
    );
  }
  Widget displayBreakTimeTable(){
    return  Column(
      children: [
        SizedBox(height: 6,),
        Row(
          children: [
            Text("Start",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500,color: Colors.green),),
            SizedBox(width: 18,),
            Container(
                 height: 48,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1)
              ),

              child: ListTile(
                onTap: () async{
                  TimeOfDay? breakStart=await showTimePicker(context: context, initialTime: TimeOfDay.now());
                  setState(() {
                    aListForClosingOpeaning[2]="${breakStart?.hour}:${breakStart?.minute}";
                  });

                },
                title: Text("${aListForClosingOpeaning[2]}"),
                trailing:  Column(
                  children: [
                    Container(height: 18,width: 20,
                      child: Icon(Icons.keyboard_arrow_up),
                    ),
                    SizedBox(height: 1,),
                    Container(height: 18,width: 20,
                      child: Icon(Icons.keyboard_arrow_down),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 8,),
            Text("&",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w500),),
          ],
        ),
        SizedBox(height: 10,),
        Row(children: [
          Text("End",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500,color: Colors.red),),
          SizedBox(width: 18,),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1)
            ),

            child: ListTile(
              onTap: () async{
                TimeOfDay? breakEnd=await showTimePicker(context: context, initialTime: TimeOfDay.now());
                setState(() {
                  aListForClosingOpeaning[3]="${breakEnd?.hour}:${breakEnd?.minute}";
                });
              },
              title: Text("${aListForClosingOpeaning[3]}"),
              trailing:  Column(
                children: [
                  Container(height: 18,width: 20,
                    child: Icon(Icons.keyboard_arrow_up),
                  ),
                  SizedBox(height: 1,),
                  Container(height: 18,width: 20,
                    child: Icon(Icons.keyboard_arrow_down),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
          Text("Timing.",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w500),),



        ],)
      ],
    );
  }
}
