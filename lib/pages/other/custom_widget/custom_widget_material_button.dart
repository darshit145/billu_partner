//maaterial Button
import 'package:flutter/material.dart';

Widget customMaterialButtonWidget({double width=100,textColor=Colors.white,buttonColor=Colors.black,customFontSize=12.0,double height=40,double redius=4,required  content,required Function()? onTap}){

  return MaterialButton(
    height: height,
    minWidth: width,
    color: buttonColor,
    onPressed: onTap,
    shape: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink),
      borderRadius: BorderRadius.circular(redius),

    ),
    child: Text("$content",style: TextStyle(fontSize: customFontSize,color:  textColor),),



  );
}

Widget customMaterialButtonWidget2({double width=100,buttonColor=Colors.black,customFontSize=12.0,double height=40,double redius=4,required  content,required Function()? onTap}){

  return MaterialButton(
    // padding: EdgeInsets.all(1),

    height: height,
    minWidth: width,
    color: buttonColor,
    onPressed: onTap,
    shape: OutlineInputBorder(
      borderRadius: BorderRadius.circular(redius),
      borderSide: BorderSide.none

    ),
    child: content,



  );
}