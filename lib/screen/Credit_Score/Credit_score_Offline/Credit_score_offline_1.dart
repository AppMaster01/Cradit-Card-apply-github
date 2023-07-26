import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../MEDIA_SIZE.dart';

var report = 0.0.obs;
var CreditCards = 0.0.obs;
var Mortgages = 0.0.obs;
var RetailFinances = 0.0.obs;
var AutoLoans = 0.0.obs;
var StudentLoans = 0.0.obs;
var OtherLoans = 0.0.obs;

class Credit_score_offline_1 extends StatefulWidget {
  const Credit_score_offline_1({Key? key}) : super(key: key);

  @override
  State<Credit_score_offline_1> createState() => _Credit_score_offline_1State();
}

class _Credit_score_offline_1State extends State<Credit_score_offline_1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Credit_score_offline_1', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/Credit_score_offline_1', '');
        }, 'Credit Score Offline', true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Obx(
                () => Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff0D1318),
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [Color(0xff2BEBC8), Color(0xff123a38)]),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: controllerText.gettext(
                                    'When was the last negative item on your credit report? ',
                                    GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: ScreenSize.fSize_16(),
                                        fontWeight: FontWeight.w300))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                controllerText.gettext(
                                    'Never',
                                    GoogleFonts.poppins(
                                        color: Color(0xffCCCCCC),
                                        fontSize: ScreenSize.fSize_16(),
                                        fontWeight: FontWeight.w400)),
                                Column(
                                  children: [
                                    SizedBox(
                                      width:
                                          ScreenSize.horizontalBlockSize! * 80,
                                      child: SliderTheme(
                                        data: SliderThemeData(
                                            trackHeight: 2,
                                            activeTickMarkColor:
                                                Color(0xff2BEBC8),
                                            tickMarkShape:
                                                RoundSliderTickMarkShape(
                                                    tickMarkRadius: ScreenSize
                                                            .horizontalBlockSize! *
                                                        1.56)),
                                        child: Slider(
                                          activeColor: Color(0xff47A896),
                                          value: report.value,
                                          min: 0,
                                          max: 7,
                                          thumbColor: Colors.transparent,
                                          onChanged: (value) {
                                            report.value = value;
                                          },
                                          divisions: 7,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "01234567",
                                      style: GoogleFonts.poppins(
                                          letterSpacing:
                                              ScreenSize.horizontalBlockSize! *
                                                  7.4,
                                          color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: ScreenSize.fSize_10()),
                            controllerText.gettext(
                                'Never',
                                GoogleFonts.poppins(
                                    color: Color(0xffCCCCCC),
                                    fontSize: ScreenSize.fSize_16(),
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_20()),
                    Padding(
                        padding: EdgeInsets.all(8),
                        child: controllerContainer.getContainer(
                          context,
                          double.infinity,
                          Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              children: [
                                controllerText.gettext(
                                    """How many of the following accounts (open and closed) do you have listed on your credit report?""",
                                    GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: ScreenSize.fSize_15(),
                                        fontWeight: FontWeight.w400)),
                                SizedBox(height: ScreenSize.fSize_20()),
                                controllerslider.getslider(
                                    context, 'Credit Cards', CreditCards.value,
                                    (value) {
                                  CreditCards.value = value;
                                }, CreditCards.value.round().toString()),
                                SizedBox(height: ScreenSize.fSize_10()),
                                Obx(() => controllerslider.getslider(
                                        context, 'Mortgages', Mortgages.value,
                                        (value) {
                                      Mortgages.value = value;
                                    }, Mortgages.value.round().toString())),
                                SizedBox(height: ScreenSize.fSize_10()),
                                controllerslider.getslider(
                                    context,
                                    'Retail  Finances',
                                    RetailFinances.value, (value) {
                                  RetailFinances.value = value;
                                }, RetailFinances.value.round().toString()),
                                SizedBox(height: ScreenSize.fSize_10()),
                                controllerslider.getslider(
                                    context, 'Auto Loans', AutoLoans.value,
                                    (value) {
                                  AutoLoans.value = value;
                                }, AutoLoans.value.round().toString()),
                                SizedBox(height: ScreenSize.fSize_10()),
                                controllerslider.getslider(
                                    context,
                                    'Student Loans',
                                    StudentLoans.value, (value) {
                                  StudentLoans.value = value;
                                }, StudentLoans.value.round().toString()),
                                SizedBox(height: ScreenSize.fSize_10()),
                                controllerslider.getslider(
                                    context, 'Other Loans', OtherLoans.value,
                                    (value) {
                                  OtherLoans.value = value;
                                }, OtherLoans.value.round().toString()),
                              ],
                            ),
                          ),
                        )),
                    SizedBox(height: ScreenSize.fSize_60()),
                    controllernext.getnext(context, () {
                      controller.showbuttonad(
                          context,
                          '/Credit_score_offline_2',
                          '/Credit_score_offline_1',
                          '');
                    }, 'Next'),
                    SizedBox(height: ScreenSize.fSize_90()),
                  ],
                ),
              ),
            ),
            banner.getBN('/Credit_score_offline_1')
          ],
        ),
      ),
    );
  }
}
