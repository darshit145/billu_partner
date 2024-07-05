import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:flutter/material.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';
import 'package:billu_partners/pages/other/fiture/services_page/services_setup_screen.dart';
import 'package:billu_partners/pages/other/fiture//upload_image_screen.dart';

customModdleBottomSheet(context, {required bool gender}) {
  showModalBottomSheet(
    showDragHandle: true,
    shape: Border(right: BorderSide.none),
    context: context,
    builder: (context) {
      return Container(
        height: 290,
        child: StatefulBuilder(
          builder: (context, setState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 38,
                  backgroundColor: Color(customColor("00bfb8")),
                  child: Center(
                    child: Icon(
                      weight: 70,
                      Icons.add,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text(
                    gender ? "Add Male Services" : "Add Female Services",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "We're glade you added male  services, let's set up female services as we",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customMaterialButtonWidget2(
                      onTap: () {
                        if (liForAmount.isEmpty) {
                          final msg = SnackBar(
                              content: Text("Please add at List one item"));
                          ScaffoldMessenger.of(context).showSnackBar(msg);
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => UploadImageScreen(),
                              ));
                        }
                      },
                      content: Text(
                        "Skip",
                        style: TextStyle(color: Colors.black),
                      ),
                      width: 160,
                      height: 45,
                      buttonColor: Colors.white,
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    customMaterialButtonWidget2(
                      onTap: () {},
                      content: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      ),
                      width: 160,
                      height: 45,
                      buttonColor: Colors.black,
                    )
                  ],
                )
              ],
            );
          },
        ),
      );
    },
  );
}
