// ignore_for_file: camel_case_types

import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Controller_Page/Google_Ads.dart';
import 'MEDIA_SIZE.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResult = await _showExitBottomSheet(context);
    return exitResult ?? false;
  }

  Future<bool?> _showExitBottomSheet(BuildContext context) async {
    return await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.transparent,
          width: double.infinity,
          child: _buildBottomSheet(context),
        );
      },
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
            bottom: ScreenSize.horizontalBlockSize! * 4,
            child: Stack(
              children: [
                Container(
                  height: ScreenSize.horizontalBlockSize! * 78,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: ScreenSize.fSize_10()),
                        Container(
                          height: ScreenSize.horizontalBlockSize! * 60,
                          width: ScreenSize.horizontalBlockSize! * 85,
                          decoration: const BoxDecoration(
                              color: Color(0xff0D1318),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              border: GradientBoxBorder(
                                width: 1.5,
                                gradient: LinearGradient(colors: [
                                  Color(0xff2BEBC8),
                                  Color(0xff123a38)
                                ]),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(height: ScreenSize.fSize_30()),
                              Text(
                                'Are you sure you want to exit?',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: ScreenSize.fSize_15(),
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(height: ScreenSize.fSize_30()),
                                  GestureDetector(
                                    onTap: () =>
                                        Navigator.of(context).pop(false),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xffB5DCD5),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: ScreenSize.fSize_40(),
                                      width: ScreenSize.fSize_100(),
                                      child: Center(
                                          child: Text('No',
                                              style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                                  fontSize:
                                                      ScreenSize.fSize_15(),
                                                  fontWeight:
                                                      FontWeight.w700))),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => SystemNavigator.pop(),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xff2BEBC8),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: ScreenSize.fSize_40(),
                                      width: ScreenSize.fSize_100(),
                                      child: Center(
                                          child: Text('Yes',
                                              style: GoogleFonts.poppins(
                                                  color: Colors.black,
                                                  fontSize:
                                                      ScreenSize.fSize_15(),
                                                  fontWeight:
                                                      FontWeight.w700))),
                                    ),
                                  ),
                                  SizedBox(height: ScreenSize.fSize_30()),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: ScreenSize.fSize_150(),
                  top: ScreenSize.fSize_15(),
                  child: Container(
                      height: ScreenSize.fSize_50(),
                      width: ScreenSize.fSize_50(),
                      decoration: BoxDecoration(
                          color: const Color(0xff2BEBC8),
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Image(
                            height: ScreenSize.fSize_28(),
                            image: const AssetImage(
                                'asset/image/Icons/exit-icon.png')),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ScreenSize.sizerInit(context);
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: ScreenSize.fSize_60()),
                        Image(
                            image: const AssetImage('asset/image/vector images/'
                                'homescreen-vector.png'),
                            height: ScreenSize.horizontalBlockSize! * 60),
                        SizedBox(height: ScreenSize.fSize_40()),
                        controllerText.gettext(
                            "Credit Card Online",
                            GoogleFonts.poppins(
                                color: const Color(0xff2BEBC8),
                                fontSize: ScreenSize.horizontalBlockSize! * 6.8,
                                fontWeight: FontWeight.w600)),
                        SizedBox(height: ScreenSize.fSize_30()),
                        GestureDetector(
                          onTap: () {
                            controller.showbuttonad(
                                context, '/Language', '/Home_Screen', '');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              height: ScreenSize.horizontalBlockSize! * 38,
                              // width: ScreenSize.horizontalBlockSize! * 90,
                              decoration: const BoxDecoration(
                                color: Color(0xff0D1318),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                border: GradientBoxBorder(
                                  gradient: LinearGradient(colors: [
                                    Color(0xff2BEBC8),
                                    Color(0xff123a38)
                                  ]),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: ScreenSize.fSize_15()),
                                    child: Image(
                                      image: const AssetImage(
                                          'asset/image/Icons/creditcardonline img.png'),
                                      height:
                                          ScreenSize.horizontalBlockSize! * 25,
                                    ),
                                  ),
                                  SizedBox(width: ScreenSize.fSize_15()),
                                  Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          controllerText.gettext(
                                              "Credit Card Online",
                                              GoogleFonts.poppins(
                                                  color:
                                                      const Color(0xff2BEBC8),
                                                  fontSize: ScreenSize
                                                          .horizontalBlockSize! *
                                                      3.5,
                                                  fontWeight: FontWeight.w400)),
                                          SizedBox(
                                              height: ScreenSize.fSize_6()),
                                          Container(
                                            child: controllerText.gettext(
                                                """Check credit card information and find 
public date by using credit card BIN""",
                                                GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: ScreenSize
                                                            .horizontalBlockSize! *
                                                        2.8,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ),
                                          SizedBox(
                                              height: ScreenSize.fSize_10()),
                                          Row(
                                            children: [
                                              Text(
                                                textAlign: TextAlign.start,
                                                "Click Here",
                                                style: GoogleFonts.poppins(
                                                    color:
                                                        const Color(0xff2BEBC8),
                                                    fontSize: ScreenSize
                                                            .horizontalBlockSize! *
                                                        4.5,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              SizedBox(
                                                  width: ScreenSize.fSize_6()),
                                              Image(
                                                  height: ScreenSize.fSize_20(),
                                                  image: const AssetImage(
                                                      'asset/image/Icons/arrowright.png'))
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: ScreenSize.fSize_15()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            controllerminicontainer.getmini(context, _shareURL,
                                "asset/image/Icons/share.png", "Share"),
                            controllerminicontainer.getmini(context, _shareURL,
                                "asset/image/Icons/rateus.png", "Rate Us"),
                            controllerminicontainer.getmini(context, () {
                              controller.showbuttonad(context,
                                  '/In_App_Browser', '/Home_Screen', '');
                            }, "asset/image/Icons/privacypolicy.png",
                                "Privacy Policy")
                          ],
                        ),
                        SizedBox(height: ScreenSize.fSize_80()),
                      ],
                    ),
                  ),
                ),
                banner.getBN('/Home_Screen')
              ],
            )),
      ),
    );
  }
}

_shareURL() async {
  const url = 'https://in.linkedin.com/company/infinitizi?trk=ppro_cprof';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
