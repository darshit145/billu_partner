import 'package:billu_partners/auth/mobileno_textinput_screen.dart';
import 'package:flutter/material.dart';
import 'package:billu_partners/pages/home_page_screem_billu.dart';

class StartPageScreen extends StatefulWidget {
  const StartPageScreen({super.key});

  @override
  State<StartPageScreen> createState() => _StartPageScreenState();
}

class _StartPageScreenState extends State<StartPageScreen> {
  bool opacityD = true;

  List opacityShow = ["One Destination", "For All Indian", "Selons"];
  var opacity = 1.0;
  List detailsInEnglish = ["One Destination", "For All Indian", "Selons"];
  List detailsInHindi = ["एक गंतव्य", "सभी भारतीयों के लिए", "सेलोन"];

  @override
  Widget build(BuildContext context) {
    // print(">>>>>>>>Bulid");
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.pink.shade900,
                // Colors.pink.shade200,
                Colors.purpleAccent.shade400,
              ]),
        ),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  height: 250,
                  width: 250,
                  child:
                      Image.asset("image/billulogo.png", color: Colors.white),
                )),
            Expanded(
              flex: 2,
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        height: 150,
                        width: 120,
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                height: 80,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage("image/billulogo.png"),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                            RichText(
                                text: const TextSpan(
                                    text: "\n",
                                    style: TextStyle(color: Colors.black),
                                    children: [
                                  TextSpan(text: "Buy"),
                                  TextSpan(
                                      text: " Beauty &",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic)),
                                  TextSpan(
                                      text: "\n Wellness",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic)),
                                  TextSpan(
                                      text: "\n Products",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic))
                                ]))
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Container(
                              height: 57,
                              width: 100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("image/bimg.png"),
                                      fit: BoxFit.fill)),
                            ),
                            const Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Center(child: Text("Manage")),
                                    Center(
                                        child: Text(
                                      "servicces,Staff",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic),
                                    )),
                                    Center(
                                        child: Text(
                                      "Booking &",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic),
                                    )),
                                    Center(
                                        child: Text(
                                      "Prices.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic),
                                    )),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: Container(
                                  height: 80,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("image/billulogo.png"),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                            ),
                            const Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Center(child: Text("Create your")),
                                    Center(
                                        child: Text(
                                      "own Deals &",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic),
                                    )),
                                    Center(
                                        child: Text(
                                      "Coupons.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic),
                                    )),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: Container(
                                  height: 80,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("image/billulogo.png"),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                            ),
                            const Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Center(child: Text("Billu")),
                                    Center(
                                        child: Text(
                                      "Sponsored",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic),
                                    )),
                                    Center(
                                        child: Text(
                                      "Offers.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic),
                                    )),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Container(
                              height: 55,
                              width: 100,
                              child: const Icon(
                                Icons.mic_none_sharp,
                                color: Color.fromRGBO(232, 10, 142, 100),
                                size: 50,
                              ),
                            ),
                            const Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Center(child: Text("Send offers")),
                                    Center(child: Text("through")),
                                    Center(
                                        child: Text(
                                      "notification",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic),
                                    )),
                                    Center(
                                        child: Text(
                                      "service.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic),
                                    )),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Container(
                              height: 55,
                              width: 100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("image/billulogo.png"),
                                      fit: BoxFit.fill)),
                            ),
                            const Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Center(child: Text("in 30 Sec")),
                                    Center(child: Text("booking done")),
                                    Center(
                                        child: Text(
                                      "for Online &",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic),
                                    )),
                                    Center(
                                        child: Text(
                                      "Walk-ins.",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontStyle: FontStyle.italic),
                                    )),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    RichText(
                        text: const TextSpan(
                            text: "Multiple",
                            style: TextStyle(fontSize: 15),
                            children: [
                          TextSpan(
                              text: " Payment Options.",
                              style: TextStyle(fontStyle: FontStyle.italic))
                        ])),
                    Card(
                      child: Container(
                        height: 30,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(width: 1, color: Colors.white),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Colors.pink, Colors.pinkAccent]),
                            image: const DecorationImage(
                                image: AssetImage("image/payment.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    RichText(
                        text: const TextSpan(
                            text: "Free Registration, ",
                            style: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 18),
                            children: [
                          TextSpan(
                              text: "no sign-up fees.",
                              style: TextStyle(fontStyle: FontStyle.normal))
                        ]))
                  ],
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(seconds: 1),
                      opacity: opacityD ? 1.0 : 0.0,
                      // alwaysIncludeSemantics: true,
                      child: Center(
                          child: Text(
                        "${opacityShow[0]}",
                        style: TextStyle(
                            fontSize: 34,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      )),
                    ),
                    AnimatedOpacity(
                      duration: Duration(seconds: 1),
                      opacity: opacityD ? 1.0 : 0.0,
                      child: Center(
                          child: Text(
                        "${opacityShow[1]}",
                        style: TextStyle(
                            fontSize: 34,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      )),
                    ),
                    AnimatedOpacity(
                      opacity: opacityD ? 1.0 : 0.0,
                      duration: Duration(seconds: 1),
                      child: Center(
                          child: Text(
                        "${opacityShow[2]}",
                        style: TextStyle(
                            fontSize: 34,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      )),
                    )
                  ],
                )),
            MaterialButton(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  gapPadding: 1,
                  borderSide: BorderSide.none),
              height: 35,
              color: Colors.white,
              minWidth: 280,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    // return MobileNoInputScreen();
                    return HomePage();
                  },
                ));
              },
              child: const Text(
                "Lets Start",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    print("InitSate");
    super.initState();
    opacityReturn().listen((event) {
      setState(() {
        if (event) {
          opacityShow = [];
          opacityShow = detailsInHindi;
        } else {
          opacityShow = [];
          opacityShow = detailsInEnglish;
        }
      });
    });
    forOpacityController().listen((event) {
      setState(() {
        opacityD = event;
      });
    });
  }

  Stream<bool> forOpacityController() {
    return Stream.periodic(const Duration(seconds: 1), (val) {
      return val.isOdd;
    });
  }

  Stream<bool> opacityReturn() {
    return Stream.periodic(Duration(seconds: 2), (value) {
      return value.isOdd;
    });
  }
}
