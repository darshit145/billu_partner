import 'package:flutter/cupertino.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:flutter/material.dart';

Widget customStackWidget({required String leadData, required String contentData}){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2))
    ),
    color: Color(customColor("f5f9fc")),
    elevation: 1,
    child: Container(
      width: double.infinity,
      height: 110,
      child: Stack(
        children: [
          Positioned(
            top: 7,
              left: 7,
              child: Text(leadData,style: TextStyle(fontWeight: FontWeight.w600),)),
          Positioned(
            top: 30,
              left: 7,
              child: Text(contentData,maxLines: 2, style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),)),
          Positioned(
            top: 10,
              right: 6,
              child: Icon(Icons.arrow_circle_right_outlined,size: 29,color: Color(customColor("116aea")),))
        ],
      ),
    ),
  );
}