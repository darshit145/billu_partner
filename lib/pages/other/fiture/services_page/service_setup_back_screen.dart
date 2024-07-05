import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:flutter/material.dart';
import 'package:billu_partners/pages/other/fiture/services_page/services_setup_screen.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_teftformfield_function.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';

List dataForBottomSheetForMale = [
  "Hair Cut & Style",
  "Hair Color",
  "Hair Chemical",
  "Hair Treatments",
  "Spa & Massage",
  "Mani Pedi & Hygine",
  "Skin Care",
  "Makeup",
  "Pre Groom"
];
List dataForBottomSheetForFemale = [
  "Spa & Massage",
  "Hair Treatments",
  "Hair Chemical",
  "Hair Color",
  "Hair Cut & Style",
  "Mani Pedi & Hygine",
  "Skin Care",
  "MakeUp",
  "Pre Bridal",
  "Nail Art"
];

class AddServiceScreen extends StatefulWidget {
  const AddServiceScreen({super.key});

  @override
  State<AddServiceScreen> createState() => AddServiceScreenState();
}

class AddServiceScreenState extends State<AddServiceScreen> {
  bool snackBar = true;
  final GlobalKey<FormState> aKeyForTextForm = GlobalKey();
  final TextEditingController myControllerForFild = TextEditingController();
  final TextEditingController myControllerForFildforPricing =
      TextEditingController();
  final TextEditingController myControllerForFildforPricing2 =
      TextEditingController();
  List maleFemaleData = genderForThisStage[1]
      ? dataForBottomSheetForMale
      : dataForBottomSheetForFemale;
  String BuydefaultTiime = "0 Hr";
  List dataForPriceTypr = ["Starting", "Fixed"];
  List dataForDiscount = [1, 2, 3, 4, 5, 6, 7];

  String currentData = genderForThisStage[1]
      ? dataForBottomSheetForMale[0]
      : dataForBottomSheetForFemale[0];
  List byDefaultDataHrMinute = [
    genderForThisStage[1]
        ? dataForBottomSheetForMale[0]
        : dataForBottomSheetForFemale[0],
    "0 Hr",
    "5 Min",
    "Starting",
    "3"
  ];
  List byDefaultIndexe = [0, 0, 0, 0, 3];

  List dataforBottomSheetInHour =
      List.generate(13, (index) => index.toString());
  List dataForBottomSheetInMin = List.generate(12, (index) => 5 * (index + 1));

  String currentContent =
      genderForThisStage[1] ? "Add Female Services" : "Add Male Services";
  @override
  void initState() {
    super.initState();
  }

  void forStetState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        padding: EdgeInsets.only(left: 10, bottom: 20, right: 10),
        child: customMaterialButtonWidget(
            onTap: () {
              if (aKeyForTextForm.currentState!.validate()) {}
            },
            content: "Submit"),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "$currentContent",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                backgroundColor: Color(customColor("ee42a7")),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.headset_mic_sharp,
                      color: Colors.white,
                    ))),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    onTap: () {
                      List forBottomSheet = genderForThisStage[1]
                          ? dataForBottomSheetForMale
                          : dataForBottomSheetForFemale;
                      showMyCustomBottomSheet(forBottomSheet);
                    },
                    keyboardType: TextInputType.none,
                    showCursor: false,
                    style: TextStyle(height: 3),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 12),
                      enabled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: byDefaultDataHrMinute[0],
                      suffix: Column(
                        children: [
                          Container(
                            height: 10,
                            width: 20,
                            child: Icon(Icons.keyboard_arrow_up),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            height: 10,
                            width: 20,
                            child: Icon(Icons.keyboard_arrow_down),
                          )
                        ],
                      ),
                      label: Text(
                        "Chhose Catagory",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(
                              width: 0.9, color: Color(customColor("e2e2e2")))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide:
                              BorderSide(width: 0.9, color: Colors.black)),
                    ),
                  ),
                ),
              ),
              Form(
                  key: aKeyForTextForm,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 45,
                        child: TextFormField(
                          validator: (value) {
                            final msg = SnackBar(
                              content: Text(
                                "Please  Enter Service Name",
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.red,
                            );
                            if (value!.isEmpty && snackBar) {
                              snackBar = false;

                              ScaffoldMessenger.of(context).showSnackBar(msg);
                            } else {
                              snackBar = true;
                            }
                            return null;
                          },
                          controller: myControllerForFild,
                          cursorColor: Colors.black,
                          cursorHeight: 25,
                          decoration: InputDecoration(
                            enabled: true,
                            suffixIcon: IconButton(
                              onPressed: () {
                                myControllerForFild.clear();
                              },
                              icon: Icon(Icons.clear),
                            ),
                            label: Text(
                              "Service Name",
                              style: TextStyle(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                    width: 0.9,
                                    color: Color(customColor("e2e2e2")))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                    width: 0.9, color: Colors.black)),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 4.99, horizontal: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "Service Duration",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 11),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: TextFormField(
                                onTap: () {
                                  showMyCustomBottomSheet(
                                      dataforBottomSheetInHour, true, 1);
                                },

                                keyboardType: TextInputType.none,
                                // cursorHeight: 20,
                                showCursor: false,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(fontSize: 12),
                                    enabled: true,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    hintText: "${byDefaultDataHrMinute[1]}",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 4.99, horizontal: 18),
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                            width: 0.9,
                                            color:
                                                Color(customColor("e2e2e2")))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                            width: 0.9, color: Colors.black)),
                                    label: Text(
                                      "Hours",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    suffix: Column(
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
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 38,
                              child: TextFormField(
                                onTap: () {
                                  showMyCustomBottomSheet(
                                      dataForBottomSheetInMin, true, 2);
                                },

                                keyboardType: TextInputType.none,
                                // cursorHeight: 20,
                                showCursor: false,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(fontSize: 12),
                                    enabled: true,
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    hintText: "${byDefaultDataHrMinute[2]}",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 4.99, horizontal: 18),
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                            width: 0.9,
                                            color:
                                                Color(customColor("e2e2e2")))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                            width: 0.9, color: Colors.black)),
                                    label: Text(
                                      "Minutes",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    suffix: Column(
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
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Pricing",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 11),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          // customFormField(0,label: "Price Type"),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: TextFormField(
                                onTap: () {
                                  showMyCustomBottomSheet(
                                      dataForPriceTypr, true, 3);
                                },
                                keyboardType: TextInputType.none,
                                cursorHeight: 20,
                                cursorColor: Colors.black,
                                style: TextStyle(height: 1),
                                showCursor: false,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(fontSize: 12),
                                    hintText: "${byDefaultDataHrMinute[3]}",

                                    // enabled: true,

                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,

                                    // hintText: "Hintdata",
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 4.99, horizontal: 18),
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                            width: 0.9,
                                            color:
                                                Color(customColor("e2e2e2")))),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                            width: 0.9, color: Colors.black)),
                                    label: Text(
                                      "Price Type",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    suffix: Column(
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
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: customFormField(
                              1,
                              myControllerForFildforPricing,
                              label: "Price",
                              validatorFun: (value) {
                                final msg = SnackBar(
                                  content: Text(
                                    "Please  Enter Price",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  backgroundColor: Colors.red,
                                );
                                if (value!.isEmpty && snackBar) {
                                  snackBar = false;
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(msg);
                                } else {
                                  snackBar = true;
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      customFormField(1, null,
                          label: "Special Price", validatorFun: (val) {}),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Note : Max 25% Special Discount Allowed.",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 11.5),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 45,
                        child: TextField(
                          onTap: () {
                            showMyCustomBottomSheet(dataForDiscount, true, 4);
                          },
                          keyboardType: TextInputType.none,
                          showCursor: false,
                          style: TextStyle(height: 3),
                          decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 12),
                              enabled: true,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              hintText: byDefaultDataHrMinute[4],
                              suffix: Column(
                                children: [
                                  Container(
                                    height: 10,
                                    width: 20,
                                    child: Icon(Icons.keyboard_arrow_up),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    height: 10,
                                    width: 20,
                                    child: Icon(Icons.keyboard_arrow_down),
                                  )
                                ],
                              ),
                              label: Text(
                                "Max.Service  Quantity",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 0.9,
                                      color: Color(customColor("e2e2e2")))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 0.9, color: Colors.black))),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 86,
                        width: double.infinity,
                        child: TextField(
                          maxLines: 10,
                          decoration: InputDecoration(
                              label: Text(
                                "Service Description",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600),
                              ),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 0.9,
                                      color: Color(customColor("e2e2e2")))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      width: 0.9, color: Colors.black))),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  showMyCustomBottomSheet(List dataForSheet,
      [bool controll = false, int indexarForSheet = 0]) {
    List bottomSheetHeader = [
      "CHOOSE CATEGORY",
      "Service Duration In Hrs",
      "Service Duration in Mins",
      "PRICE TYPE",
      "Select Maximum Quantity",
    ];
    List listForValue = List.generate(dataForSheet.length, (index) => true);
    // listForValue[lastIndex]=false;
    listForValue[byDefaultIndexe[indexarForSheet]] = false;

    return showModalBottomSheet(
      backgroundColor: Color(customColor("ffffff")),
      isDismissible: true,
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Column(
              children: [
                Container(
                  height: 45,
                  width: double.infinity,
                  color: Color(customColor("f2f2f2")),
                  child: Center(
                    child: Text(
                      "${bottomSheetHeader[indexarForSheet]}",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: dataForSheet.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          listForValue = List.generate(
                              listForValue.length, (index) => true);
                          listForValue[index] = !listForValue[index];

                          if (indexarForSheet == 0) {
                            byDefaultIndexe[indexarForSheet] = index;
                            byDefaultDataHrMinute[indexarForSheet] =maleFemaleData[index];
                          } else if (indexarForSheet == 1) {
                            byDefaultIndexe[indexarForSheet] = index;

                            byDefaultDataHrMinute[indexarForSheet] =
                                "${dataforBottomSheetInHour[index]} Hr";
                          } else if (indexarForSheet == 2) {
                            byDefaultIndexe[indexarForSheet] = index;

                            byDefaultDataHrMinute[indexarForSheet] =
                                "${dataForBottomSheetInMin[index]} Min";
                          } else if (indexarForSheet == 3) {
                            byDefaultIndexe[indexarForSheet] = index;

                            byDefaultDataHrMinute[indexarForSheet] =
                                "${dataForPriceTypr[index]}";
                          } else if (indexarForSheet == 4) {
                            byDefaultIndexe[indexarForSheet] = index;
                            byDefaultDataHrMinute[indexarForSheet] =
                                "${dataForDiscount[index]}";
                          }

                          // print(listForValue);
                        });
                        setState(() {
                          Navigator.pop(context);
                          forStetState();
                        });
                      },
                      child: Container(
                        height: 49,
                        decoration: BoxDecoration(
                            color: listForValue[index]
                                ? Color(customColor("ffffff"))
                                : Color(customColor("8c8b87")),
                            border: Border(
                                bottom: BorderSide(
                                    width: 1,
                                    color: Color(customColor("f2f2f2"))))),
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "${dataForSheet[index]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ))
              ],
            );
          },
        );
      },
    );
  }
}
