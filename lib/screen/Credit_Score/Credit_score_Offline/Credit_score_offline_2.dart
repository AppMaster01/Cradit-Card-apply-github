import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Controller_Page/Google_Ads.dart';
import '../../../MEDIA_SIZE.dart';

var Slidervalue = 0.0.obs;
var Slidervalue1 = 0.0.obs;

class Credit_score_offline_2 extends StatefulWidget {
  const Credit_score_offline_2({Key? key}) : super(key: key);

  @override
  State<Credit_score_offline_2> createState() => _Credit_score_offline_2State();
}

class _Credit_score_offline_2State extends State<Credit_score_offline_2> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Credit_score_offline_2', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/Credit_score_offline_2', '');
        }, 'Credit Score Offline', true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Obx(
                () => Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: controllerContainer.getContainer(
                          context,
                          double.infinity,
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: ScreenSize.fSize_20(),
                                    right: ScreenSize.fSize_15(),
                                    left: ScreenSize.fSize_15()),
                                child: controllerText.gettext(
                                    """Add up all credit limits o your open credit cards:""",
                                    GoogleFonts.poppins(
                                        fontSize: ScreenSize.fSize_15(),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(width: ScreenSize.fSize_20()),
                                  controllerText.gettext(
                                    '₹0',
                                    GoogleFonts.poppins(
                                        color: Color(0xffCCCCCC),
                                        fontSize: ScreenSize.fSize_15(),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Container(
                                    child: SliderTheme(
                                      data: SliderThemeData(
                                        trackHeight: 4,
                                        thumbShape: RoundSliderThumbShape(
                                            enabledThumbRadius: ScreenSize
                                                    .horizontalBlockSize! *
                                                2.2),
                                        thumbColor: Color(0xff2BEBC8),
                                        inactiveTrackColor: Color(0xff304B46),
                                        activeTrackColor: Color(0xff47A896),
                                      ),
                                      child: Slider(
                                        value: Slidervalue.value,
                                        min: 0,
                                        max: 100000,
                                        onChanged: (value) {
                                          Slidervalue.value = value;
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.yellow,
                                    height: ScreenSize.fSize_23(),
                                    width: ScreenSize.fSize_80(),
                                    child: Center(
                                      child: Text(
                                        '₹100000+',
                                        style: GoogleFonts.poppins(
                                            fontSize: ScreenSize.fSize_15(),
                                            color: Color(0xffCCCCCC),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              controllerText.gettext(
                                  '\₹${Slidervalue.round().toString()}',
                                  GoogleFonts.poppins(
                                    fontSize: ScreenSize.fSize_15(),
                                    color: Color(0xffCCCCCC),
                                  )),
                              SizedBox(height: ScreenSize.fSize_20()),
                            ],
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: controllerContainer.getContainer(
                          context,
                          double.infinity,
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: ScreenSize.fSize_20(),
                                    right: ScreenSize.fSize_15(),
                                    left: ScreenSize.fSize_15()),
                                child: controllerText.gettext(
                                    """Add up all the most recent statement balances on your credit card accounts:""",
                                    GoogleFonts.poppins(
                                        fontSize: ScreenSize.fSize_15(),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(width: ScreenSize.fSize_20()),
                                  controllerText.gettext(
                                    '₹0',
                                    GoogleFonts.poppins(
                                        color: Color(0xffCCCCCC),
                                        fontSize: ScreenSize.fSize_15(),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Container(
                                    child: SliderTheme(
                                      data: SliderThemeData(
                                        trackHeight: 4,
                                        thumbShape: RoundSliderThumbShape(
                                            enabledThumbRadius: ScreenSize
                                                    .horizontalBlockSize! *
                                                2.2),
                                        thumbColor: Color(0xff2BEBC8),
                                        inactiveTrackColor: Color(0xff304B46),
                                        activeTrackColor: Color(0xff47A896),
                                      ),
                                      child: Slider(
                                        value: Slidervalue1.value,
                                        min: 0,
                                        max: 100000,
                                        onChanged: (value) {
                                          Slidervalue1.value = value;
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.yellow,
                                    height: ScreenSize.fSize_23(),
                                    width: ScreenSize.fSize_80(),
                                    child: Center(
                                      child: Text(
                                        '₹100000+',
                                        style: GoogleFonts.poppins(
                                            fontSize: ScreenSize.fSize_15(),
                                            color: Color(0xffCCCCCC),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              controllerText.gettext(
                                  '\₹${Slidervalue1.round().toString()}',
                                  GoogleFonts.poppins(
                                    fontSize: ScreenSize.fSize_15(),
                                    color: Color(0xffCCCCCC),
                                  )),
                              SizedBox(height: ScreenSize.fSize_20()),
                            ],
                          ),
                        )),
                    SizedBox(height: ScreenSize.fSize_20()),
                    Center(
                        child: Image(
                      image: AssetImage(
                          'asset/image/vector images/Credit Score Online Vector.png'),
                      height: ScreenSize.horizontalBlockSize! * 58,
                    )),
                    SizedBox(height: ScreenSize.fSize_40()),
                    controllernext.getnext(context, () {
                      controller.showbuttonad(
                          context,
                          '/Credit_score_offline_3',
                          '/Credit_score_offline_2',
                          '');
                    }, 'Next'),
                    SizedBox(height: ScreenSize.fSize_90()),
                  ],
                ),
              ),
            ),
            banner.getBN('/Credit_score_offline_2')
          ],
        ),
      ),
    );
  }
}
