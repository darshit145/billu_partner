
import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

customSwitchButton({required onTap,required bool isItOn}){
  return InkResponse(
  // splashColor: Color(customColor("e50a8c")),
    radius: 24,
    highlightColor: Color(customColor("e50a8c")),
    onTap: onTap,

    child: Container(
      height: 20,
      width: 35,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              color:  Color(customColor("ffebf7")),
            ),
          ),
          AnimatedAlign(alignment:isItOn? Alignment.centerRight:Alignment.centerLeft, duration: Duration(milliseconds: 200),
            child: Container(
              height: 25,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:isItOn? Color(customColor("e50a8c")):Color(customColor("5f5f5f"))
              ),
            ),
          )
        ],
      ),

    ),
  );
}