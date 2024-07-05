import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:billu_partners/pages/other/fiture2/create_deal_screen.dart';
import 'package:billu_partners/pages/other/fiture/services_page/services_setup_screen.dart';

class SlonServices extends StatefulWidget {
  const SlonServices({super.key});

  @override
  State<SlonServices> createState() => _SlonServicesState();
}

List finalData = [];
List aListForGender = [true, false];

class _SlonServicesState extends State<SlonServices> {
  @override
  void initState() {
    super.initState();
    finalData =aListForGender[0]? dataForFemale.keys.toList():dataForMale.keys.toList();
  }
  void stateSetter(){
    setState(() {
      finalData =aListForGender[0]? dataForFemale.keys.toList():dataForMale.keys.toList();


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
            size: 40,
          ),
        ),
        title: Text(
          "Services",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        actions: [helpMenuButton()],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: LinearProgressIndicator(
            value: 0.3,
            minHeight: 1,
            color: Color(customColor("00bfb8")),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    aListForGender = [false, true];
                    stateSetter();
                  });
                },
                child: customRadio(value: aListForGender[0]),
              ),
              SizedBox(
                width: 60,
                child: Text(" Male"),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    aListForGender = [true, false];
                    stateSetter();
                  });
                },
                child: customRadio(value: aListForGender[1]),
              ),
              SizedBox(
                width: 60,
                child: Text(" FeMale"),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // color: Colors.black,
                // child:
                child: Scrollbar(
                  thickness: 5,
                  radius: Radius.circular(10),
                  interactive: true,
                  // trackVisibility: true,
                  thumbVisibility: true,
                  // showTrackOnHover: true,
                  child: GridView.count(crossAxisCount: 2,
                      dragStartBehavior: DragStartBehavior.down,
                  
                      mainAxisSpacing: 13,
                      crossAxisSpacing: 13,
                      children: [
                    maleServices(contentText: finalData[0], buttonContent: "View More",data: "1 Active/0 In Review"),
                    maleServices(contentText: finalData[1], buttonContent: "View More",data: "1 Active/0 In Review"),
                    maleServices(contentText: finalData[2], buttonContent: "View More",data: "1 Active/0 In Review"),
                    maleServices(contentText: finalData[3], buttonContent: "View More",data: "1 Active/0 In Review"),
                    maleServices(contentText: finalData[4], buttonContent: "View More",data: "1 Active/0 In Review"),
                    maleServices(contentText: finalData[5], buttonContent: "View More",data: "1 Active/0 In Review"),
                    maleServices(contentText: finalData[6], buttonContent: "View More",data: "1 Active/0 In Review"),
                    maleServices(contentText: finalData[7], buttonContent: "View More",data: "1 Active/0 In Review"),
                    maleServices(contentText: finalData[8], buttonContent: "View More",data: "1 Active/0 In Review"),
                    maleServices(contentText: finalData[9], buttonContent: "View More",data: "1 Active/0 In Review"),
                  ]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget maleServices(
      {required String contentText,
      required String buttonContent,
      String data = ""}) {
    double withOfButton = 11.0 * (buttonContent.length);
    return Container(
      color: Color(customColor("f2f2f2")),
      height: 160,
      width: 160,
      margin: EdgeInsets.all(1),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 3),
            child: CircleAvatar(
              radius: 33,
            ),
          ),
          SizedBox(
              height: 22,
              child: Text(
                "$contentText",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              )),
          SizedBox(
            height: 3,
          ),
          SizedBox(
              height: 26,
              width: withOfButton,
              child: customMaterialButtonWidget2(
                  buttonColor: Colors.black,
                  content: Text(
                    buttonContent,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  height: 25,
                  onTap: () {})),
          SizedBox(
            height: 6,
          ),
          Text(
            data,
            style: TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }
}

Widget customRadio({required bool value}) {
  return CircleAvatar(
    radius: 16,
    backgroundColor: value ? Colors.black : Color(customColor("ea0a8e")),
    child: value
        ? CircleAvatar(
            radius: 15,
            backgroundColor: Colors.white,
          )
        : Icon(
            Icons.check,
            color: Colors.white,
            size: 27,
          ),
  );
}
// Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//                       maleServices(
//                           contentText: finalData[0],
//                           buttonContent: "View More",
//                           data: "2 Active/0 in Review"),
//                       SizedBox(height: 5,),
//
//                       maleServices(
//                           contentText: finalData[2],
//                           buttonContent: "View More",
//                           data: "2 Active/0 in Review"),
//                       SizedBox(height: 5,),
//                       maleServices(
//                           contentText: finalData[4],
//                           buttonContent: "View More",
//                           data: "2 Active/0 in Review"),
//                       SizedBox(height: 5,),
//                       maleServices(
//                           contentText: finalData[4],
//                           buttonContent: "View More",
//                           data: "2 Active/0 in Review"),
//                       SizedBox(height: 5,),
//
//
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       maleServices(
//                           contentText: finalData[1],
//                           buttonContent: "View More",
//                           data: "2 Active/0 in Review"),
//                       SizedBox(height: 5,),
//                       maleServices(
//                           contentText: finalData[3],
//                           buttonContent: "View More",
//                           data: "2 Active/0 in Review"),
//                       SizedBox(height: 5,),
//                       maleServices(
//                           contentText: finalData[5],
//                           buttonContent: "View More",
//                           data: "2 Active/0 in Review"),
//                       SizedBox(height: 5,),
//
//
//                     ],
//                   ),
//                 )
//               ],
//             ),
