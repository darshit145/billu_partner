import 'package:flutter/material.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:billu_partners/pages/other/fiture/services_page/service_setup_back_screen.dart';

Widget customFormField(int indexer, TextEditingController? controllers,
    {required String label, required validatorFun}) {
  return SizedBox(
    height: 40,
    child: TextFormField(
      validator: validatorFun,
      controller: controllers,
      keyboardType: indexer == 1 ? TextInputType.number : TextInputType.none,
      cursorHeight: 20,
      cursorColor: Colors.black,
      style: TextStyle(height: 1),
      showCursor: indexer == 1 ? true : false,
      decoration: InputDecoration(
          suffixIcon: indexer == 1
              ? IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    controllers?.clear();
                    print("ok");
                  },
                )
              : null,
          // enabled: true,

          prefixIcon: indexer == 1 ? Padding(
            padding: const EdgeInsets.only(top: 10),
            child: const Text("₹",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w300),),
          ) : null,
          enabled: true,
          floatingLabelBehavior: FloatingLabelBehavior.always,

          // hintText: "Hintdata",
          contentPadding: EdgeInsets.symmetric(vertical: 4.99, horizontal: 18),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide:
                  BorderSide(width: 0.9, color: Color(customColor("e2e2e2")))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(width: 0.9, color: Colors.black)),
          label: Text(
            "$label",
            style: TextStyle(color: Colors.black),
          ),
          suffix: indexer == 1
              ? null
              : Column(
                  children: [
                    SizedBox(
                        height: 16,
                        child: Icon(
                          Icons.keyboard_arrow_up,
                        )),
                    SizedBox(
                        height: 20,
                        child: Icon(
                          Icons.keyboard_arrow_down,
                        )),
                  ],
                )),
    ),
  );
}
