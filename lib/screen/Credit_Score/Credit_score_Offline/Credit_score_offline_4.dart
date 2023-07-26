import 'dart:developer';
import 'dart:math';

import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../MEDIA_SIZE.dart';
import 'Credit_score_offline_1.dart';

double loanamountsliderval = report.value;

class Credit_score_offline_4 extends StatefulWidget {
  const Credit_score_offline_4({Key? key}) : super(key: key);

  @override
  State<Credit_score_offline_4> createState() => _Credit_score_offline_4State();
}

class _Credit_score_offline_4State extends State<Credit_score_offline_4> {
  var abc = Get.arguments;

  int index = 0;
  Random random = Random();
  int randomNumber = Random().nextInt(150) + 700;
  double progres = 50;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Credit_score_offline_4', ''),
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: controllerapp.getbar(() {
            backbuttoncontroller.showBackbuttonad(
                context, '/Credit_score_offline_4', '');
          }, 'Credit Score Offline', true),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_15()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff0D1318),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            border: GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                Color(0xff2BEBC8),
                                Color(0xff123a38)
                              ]),
                            )),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: ScreenSize.horizontalBlockSize! * 6),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      controllerscore.getscore(
                                          context,
                                          '721 - 880',
                                          'FAIR',
                                          Color(0xffFFB800)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: ScreenSize.horizontalBlockSize! * 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      controllerscore.getscore(
                                          context,
                                          '561 - 720',
                                          'POOR',
                                          Color(0xffFE7B1C)),
                                      SizedBox(
                                          width:
                                              ScreenSize.horizontalBlockSize! *
                                                  10),
                                      controllerscore.getscore(
                                          context,
                                          '881 - 960',
                                          'GOOD',
                                          Color(0xffADC900)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top:
                                          ScreenSize.horizontalBlockSize! * 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      controllerscore.getscore(
                                          context,
                                          '0 - 560',
                                          'VERY POOR',
                                          Color(0xffD80000)),
                                      SizedBox(
                                          width:
                                              ScreenSize.horizontalBlockSize! *
                                                  60),
                                      controllerscore.getscore(
                                          context,
                                          '961 - 999',
                                          'EXCELLENT',
                                          Color(0xff038200)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: ScreenSize.fSize_60()),
                                    child: CircularSeekBar(
                                      width: double.infinity,
                                      height: ScreenSize.fSize_250(),
                                      progress: (randomNumber) / 13,
                                      barWidth: ScreenSize.fSize_12(),
                                      // startAngle:
                                      //     ScreenSize.horizontalBlockSize! *
                                      //         24.5,
                                      // sweepAngle:
                                      //     ScreenSize.horizontalBlockSize! * 50,
                                      startAngle: 90,
                                      sweepAngle: 180,
                                      strokeCap: StrokeCap.round,
                                      // dashWidth: ScreenSize.fSize_30(),
                                      // dashGap:
                                      //     ScreenSize.horizontalBlockSize! * 1.8,
                                      dashWidth: 30,
                                      dashGap: 7,
                                      outerThumbStrokeWidth:
                                          ScreenSize.horizontalBlockSize! * 1,
                                      innerThumbRadius:
                                          ScreenSize.horizontalBlockSize! * 2.5,
                                      outerThumbRadius: ScreenSize.fSize_11(),
                                      outerThumbColor: Colors.white,
                                      innerThumbColor: Color(0xff455A64),
                                      animation: true,
                                      trackGradientColors: [
                                        Color(0xffD80000),
                                        Color(0xffFE7B1C),
                                        Color(0xffFFB800),
                                        Color(0xffADC900),
                                        Color(0xff038200),
                                      ],
                                      progressGradientColors: [
                                        Color(0xffD80000),
                                        Color(0xffFE7B1C),
                                        Color(0xffFFB800),
                                        Color(0xffADC900),
                                        Color(0xff038200),
                                      ],
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: ScreenSize.fSize_70()),
                                            child: Column(
                                              children: [
                                                Text("GOOD",
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: ScreenSize
                                                            .fSize_20(),
                                                        color:
                                                            Color(0xff2BEBC8))),
                                                Text(randomNumber.toString(),
                                                    style: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: ScreenSize
                                                            .fSize_23(),
                                                        color: Colors.white)),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      '0  ',
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color: Color(
                                                                  0xff2BEBC8),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    ),
                                                    SizedBox(
                                                        width: ScreenSize
                                                            .fSize_12()),
                                                    Text(
                                                      '900',
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color: Color(
                                                                  0xff2BEBC8),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_40()),
                    controllerText.gettext(
                        "Your Credit Score",
                        GoogleFonts.poppins(
                            color: Color(0xff2BEBC8),
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenSize.fSize_25())),
                    SizedBox(height: ScreenSize.fSize_50()),
                    Container(
                        width: ScreenSize.fSize_130(),
                        height: ScreenSize.fSize_70(),
                        decoration: BoxDecoration(
                            color: Color(0xff0D1318),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                Color(0xff2BEBC8),
                                Color(0xff123a38)
                              ]),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          // children: [
                          //   if (Slidervalue3.round() == 0) ...[
                          //     Text("Chek Score",
                          //         style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: ScreenSize.fSize_18(),
                          //             color: Color(0xff2BEBC8)))
                          //   ] else if (Slidervalue3.round() == 1) ...[
                          //     Text("788",
                          //         style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: ScreenSize.fSize_40(),
                          //             color: Color(0xff2BEBC8))),
                          //   ] else if (Slidervalue3.round() == 2) ...[
                          //     Text("854",
                          //         style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: ScreenSize.fSize_40(),
                          //             color: Color(0xff2BEBC8))),
                          //   ] else if (Slidervalue3.round() == 3) ...[
                          //     Text("955",
                          //         style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: ScreenSize.fSize_40(),
                          //             color: Color(0xff2BEBC8))),
                          //   ] else if (Slidervalue3.round() == 4) ...[
                          //     Text("755",
                          //         style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: ScreenSize.fSize_40(),
                          //             color: Color(0xff2BEBC8))),
                          //   ] else if (Slidervalue3.round() == 5) ...[
                          //     Text("877",
                          //         style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: ScreenSize.fSize_40(),
                          //             color: Color(0xff2BEBC8))),
                          //   ] else if (Slidervalue3.round() == 6) ...[
                          //     Text("957",
                          //         style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: ScreenSize.fSize_40(),
                          //             color: Color(0xff2BEBC8))),
                          //   ] else if (Slidervalue3.round() == 7) ...[
                          //     Text("875",
                          //         style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: ScreenSize.fSize_40(),
                          //             color: Color(0xff2BEBC8))),
                          //   ] else if (Slidervalue3.round() == 8) ...[
                          //     Text("687",
                          //         style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: ScreenSize.fSize_40(),
                          //             color: Color(0xff2BEBC8))),
                          //   ] else if (Slidervalue3.round() == 9) ...[
                          //     Text("787",
                          //         style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: ScreenSize.fSize_40(),
                          //             color: Color(0xff2BEBC8))),
                          //   ] else if (Slidervalue3.round() == 10) ...[
                          //     Text("887",
                          //         style: GoogleFonts.poppins(
                          //             fontWeight: FontWeight.w600,
                          //             fontSize: ScreenSize.fSize_40(),
                          //             color: Color(0xff2BEBC8))),
                          //   ]
                          // ],
                          children: [
                            Text(randomNumber.toString(),
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: ScreenSize.fSize_34(),
                                    color: Color(0xff2BEBC8)))
                          ],
                        )),
                    SizedBox(height: ScreenSize.fSize_70()),
                    GestureDetector(
                      onTap: () {
                        controller.showbuttonad(
                            context,
                            '/Credit_score_offline',
                            '/Credit_score_offline_4',
                            randomNumber.toString());
                      },
                      child: Container(
                        width: ScreenSize.horizontalBlockSize! * 50,
                        height: ScreenSize.horizontalBlockSize! * 12,
                        decoration: BoxDecoration(
                            color: Color(0xff0D1318),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            border: GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                Color(0xff2BEBC8),
                                Color(0xff123a38)
                              ]),
                            )),
                        child: Center(
                          child: controllerText.gettext(
                              "See Full Report",
                              GoogleFonts.poppins(
                                  fontSize: ScreenSize.fSize_15(),
                                  color: Color(0xff2BEBC8),
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_100()),
                  ],
                ),
              ),
              banner.getBN('/Credit_score_offline_4')
            ],
          )),
    );
  }
}

List score = [
  "788",
  "655",
  "648",
  "945",
  "845",
  "665",
  "784",
  "900",
  "550",
  "656",
  "845",
];
List scoreresult = [
  "FAIR",
  "POOR",
  "POOR",
  "GOOD",
  "GOOD",
  "POOR",
  "FAIR",
  "GOOD",
  "EXCELLENT",
  "VERY POOR",
  "GOOD",
];
// if (num == 1) {
// print("VERY POOR");
// } else if (num == 2) {
// print("POOR");
// } else if (num == 3) {
// print("FAIR");
// } else if (num == 4) {
// print("GOOD");
// } else if (num == 5) {
// print("EXCELLENT");
// },
