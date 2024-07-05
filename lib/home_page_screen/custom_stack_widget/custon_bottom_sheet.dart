import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';
import "package:flutter/material.dart";
class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}
List li=[true,true,true,true,true,true];
class _CustomBottomSheetState extends State<CustomBottomSheet> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      // color: Colors.red,
      child: StatefulBuilder(builder: (context, setState) {
        return SizedBox(

          child: Container(
            // color: Colors.red,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Center(
                    child: Text("Temporary closed for",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
              
                  ),
                  SizedBox(height: 20,),
                  Divider(),
                  dataForSheetCustom(numberForHour: 2,indexOfList: 0),
                  dataForSheetCustom(numberForHour: 4,indexOfList: 1),
                  dataForSheetCustom(numberForHour: 8,indexOfList: 2),
                  dataForSheetCustom(numberForHour: 12,indexOfList: 3),
                  dataForSheetCustom(numberForHour: 24,indexOfList: 4),
                  dataForSheetCustom(numberForHour: 48,indexOfList: 5),

                  Row(
                    children: [
                      SizedBox(width: 25,),
                      Expanded(child: customMaterialButtonWidget2(content: Text("Calcel"), buttonColor: Colors.white,onTap: (){})),
                      SizedBox(width: 5,),
                      Expanded(child: customMaterialButtonWidget2(content: Text("Ok",style: TextStyle(color: Colors.white),),onTap: (){})),
                      SizedBox(width: 25,),

                    ],
                  )
              
              
              
                ],
              ),
            ),
          ),
        );
      },),
    );
  }
  dataForSheetCustom({required int numberForHour,required int indexOfList}){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              li=List.generate(li.length, (index) => true
              );
              print(">>>>>>>>>>>>");
                 setState(() {
                   li[indexOfList]=!li[indexOfList];
                 });
            },
            child: StatefulBuilder(builder: (context, setState) {
              return  Row(
                children: [
                  CircleAvatar(
                    backgroundColor:li[indexOfList]? Colors.black:Color(customColor("ea0a8e")),
                    radius: 10,
                    child: li[indexOfList]? CircleAvatar(
                      radius: 9,
                      backgroundColor: Colors.white,
                    ):Icon(Icons.check,size: 19,color: Colors.white,),
                  ),
                  SizedBox(width: 15,),
                  Text("$numberForHour Hours")
                ],
              );
            },
             // child:,
            ),
          ),
          SizedBox(height: 9,),
          Divider()
        ],
      ),
    );
  }
}
