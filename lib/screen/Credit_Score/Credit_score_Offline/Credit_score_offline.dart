import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:share_plus/share_plus.dart';
import '../../../MEDIA_SIZE.dart';
import 'Credit_score_offline_1.dart';
import 'Credit_score_offline_2.dart';
import 'Credit_score_offline_3.dart';
import 'Credit_score_offline_4.dart';

List<String> passing = [
  'Report              : ${report.round().toString()}\n',
  'Report              : ${report.round().toString()}\n',
  'CreditCards         : ${CreditCards.round().toString()}\n',
  'Mortgages           : ${Mortgages.round().toString()}\n',
  'RetailFinances      : ${RetailFinances.round().toString()}\n',
  'AutoLoans4          : ${AutoLoans.round().toString()}\n',
  'StudentLoans        : ${StudentLoans.round().toString()}\n',
  'OtherLoans          : ${OtherLoans.round().toString()}\n',
  'Slidervalue         : ${Slidervalue.round().toString()}\n',
  'Slidervalue1        : ${Slidervalue1.round().toString()}\n',
  'Slidervalue3        : ${Slidervalue3.round().toString()}\n',
  'Slidervalue4        : ${Slidervalue4.round().toString()}\n',
  'loanamountsliderval : ${loanamountsliderval.round().toString()}\n'
];
final str = passing.toString();

class Credit_score_offline extends StatefulWidget {
  const Credit_score_offline({Key? key}) : super(key: key);

  @override
  State<Credit_score_offline> createState() => _Credit_score_offlineState();
}

class _Credit_score_offlineState extends State<Credit_score_offline> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Credit_score_offline', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/Credit_score_offline', '');
        }, 'Report', true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_180()),
                    controllerFeature2.getFeature2(
                      context,
                      """When was the last negative item on your credit report?""",
                    ),
                    controllerfiled.getfiled(
                        context, report.round().toString()),
                    //================================================================
                    SizedBox(height: ScreenSize.fSize_6()),
                    controllerFeature2.getFeature2(context,
                        """How many of the following accounts (open and closed) do you have listed on your credit report?"""),
                    SizedBox(height: ScreenSize.fSize_15()),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff0D1318),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                Color(0xff2BEBC8),
                                Color(0xff123a38)
                              ]),
                            )),
                        child: Column(
                          children: [
                            SizedBox(height: ScreenSize.fSize_15()),
                            controllertextbox.gettextbox(context,
                                'Credit Cards', CreditCards.round().toString()),
                            SizedBox(height: ScreenSize.fSize_10()),
                            controllertextbox.gettextbox(context, 'Mortgages',
                                Mortgages.round().toString()),
                            SizedBox(height: ScreenSize.fSize_10()),
                            controllertextbox.gettextbox(
                                context,
                                'Retail  Finances',
                                RetailFinances.round().toString()),
                            SizedBox(height: ScreenSize.fSize_10()),
                            controllertextbox.gettextbox(context, 'Auto Loans',
                                AutoLoans.round().toString()),
                            SizedBox(height: ScreenSize.fSize_10()),
                            controllertextbox.gettextbox(
                                context,
                                'Student Loans',
                                StudentLoans.round().toString()),
                            SizedBox(height: ScreenSize.fSize_10()),
                            controllertextbox.gettextbox(context, 'Other Loans',
                                OtherLoans.round().toString()),
                            SizedBox(height: ScreenSize.fSize_15()),
                          ],
                        ),
                      ),
                    ),
//================================================================
                    SizedBox(height: ScreenSize.fSize_10()),
                    controllerFeature2.getFeature2(context,
                        """Add up all credit limits on your open credit cards :"""),
                    controllerfiled.getfiled(
                        context, Slidervalue.round().toString()),
                    //================================================================
                    SizedBox(height: ScreenSize.fSize_10()),
                    controllerFeature2.getFeature2(context,
                        """Add up all credit limits on your open credit cards :"""),
                    controllerfiled.getfiled(
                        context, Slidervalue1.round().toString()),
//==================  ==========================================================
                    SizedBox(height: ScreenSize.fSize_10()),
                    controllerFeature2.getFeature2(context,
                        """How many times have you applied for credit in the last 6 month?"""),
                    controllerfiled.getfiled(
                        context, Slidervalue3.round().toString()),
//================== ==========================================================
                    SizedBox(height: ScreenSize.fSize_10()),
                    controllerFeature2.getFeature2(context,
                        """When did you first open your oldest active credit or loan account?"""),
                    controllerfiled.getfiled(
                        context, Slidervalue4.round().toString()),
                    SizedBox(height: ScreenSize.fSize_23()),
                    Container(
                        height: ScreenSize.horizontalBlockSize! * 21,
                        width: ScreenSize.horizontalBlockSize! * 68,
                        decoration: BoxDecoration(
                            color: Color(0xff0D1318),
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            border: GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                Color(0xff2BEBC8),
                                Color(0xff123a38)
                              ]),
                            )),
                        child: Center(
                          child: controllerText.gettext(
                              "Your Credit Score : ${abc}",
                              GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: ScreenSize.fSize_16())),
                        )),
                    SizedBox(height: ScreenSize.fSize_23()),
                    GestureDetector(
                      onTap: () {
                        Share.share(str);
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
                              "Save & Share",
                              GoogleFonts.poppins(
                                  fontSize: ScreenSize.fSize_15(),
                                  color: Color(0xff2BEBC8),
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black,
              width: double.maxFinite,
              child:
                  native.getNT(context, '/Credit_score_offline', '/listTile'),
            ),
            banner.getBN('/Credit_score_offline')
          ],
        ),
      ),
    );
  }
}
