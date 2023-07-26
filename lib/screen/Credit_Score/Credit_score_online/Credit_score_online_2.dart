import 'dart:math';

import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../MEDIA_SIZE.dart';
import '../../../widget_page/widget.dart';

class Credit_score_online_2 extends StatefulWidget {
  const Credit_score_online_2({Key? key}) : super(key: key);

  @override
  State<Credit_score_online_2> createState() => _Credit_score_online_2State();
}

class _Credit_score_online_2State extends State<Credit_score_online_2> {
  double width = 15;
  double _progress = 80;
  var abc = Get.arguments;
  Random random = Random();
  int randomNumber = Random().nextInt(150) + 700;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Credit_score_online_2', ''),
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: controllerapp.getbar(() {
            backbuttoncontroller.showBackbuttonad(
                context, '/Credit_score_online_2', '');
          }, 'Credit Score Online', true),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_20()),
                    Container(
                      height: ScreenSize.horizontalBlockSize! * 65,
                      child: CircularSeekBar(
                        width: double.infinity,
                        height: 250,
                        progress: randomNumber / 13,
                        startAngle: 45,
                        sweepAngle: 270,
                        strokeCap: StrokeCap.round,
                        // width: double.infinity,
                        // height: ScreenSize.fSize_250(),
                        // progress: randomNumber / 13,
                        // barWidth: ScreenSize.fSize_11(),
                        // startAngle: ScreenSize.horizontalBlockSize! * 14,
                        // sweepAngle: ScreenSize.horizontalBlockSize! * 75,
                        // strokeCap: StrokeCap.round,
                        interactive: false,
                        dashWidth: 30,
                        dashGap: 10,
                        animation: true,
                        innerThumbColor: Color(0xffCAFFF5),
                        innerThumbRadius: ScreenSize.fSize_10(),
                        trackGradientColors: [
                          Color(0xff02BC4D),
                          Color(0xff00F336),
                          Color(0xffFF9900),
                          Color(0xffFF6B00),
                          Color(0xffFA2222),
                          Color(0xffC00000),
                        ],
                        progressGradientColors: [
                          Color(0xff02BC4D),
                          Color(0xff00F336),
                          Color(0xffFF9900),
                          Color(0xffFF6B00),
                          Color(0xffFA2222),
                          Color(0xffC00000),
                        ],

                        child: Padding(
                          padding: EdgeInsets.only(top: ScreenSize.fSize_50()),
                          child: Column(
                            children: [
                              Text(
                                'Score',
                                style: GoogleFonts.poppins(
                                    color: Color(0xff2BEBC8),
                                    fontSize: ScreenSize.fSize_15(),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(randomNumber.toString(),
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize:
                                          ScreenSize.horizontalBlockSize! * 12,
                                      fontWeight: FontWeight.w600)),
                              Text('Best',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize:
                                          ScreenSize.horizontalBlockSize! * 6,
                                      fontWeight: FontWeight.w300)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Color(0xff2BEBC8),
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    SizedBox(height: ScreenSize.fSize_20()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff0D1318),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                              border: GradientBoxBorder(
                                gradient: LinearGradient(colors: [
                                  Color(0xff2BEBC8),
                                  Color(0xff123a38)
                                ]),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(22),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                    height: ScreenSize.fSize_23(),
                                    color: Color(0xff2BEBC8),
                                    image: AssetImage(
                                        "asset/image/Icons/bullet-point 1.png")),
                                SizedBox(width: ScreenSize.fSize_8()),
                                Container(
                                  width: ScreenSize.horizontalBlockSize! * 74,
                                  // color: Colors.blue,
                                  child: Text(
                                      """Unlimited Access : You can check your CIBIL Score & Report every 24 hours within your subscription period (1 month, 6 months, 12 months) 1010 Here is what members get : Unlimited Access Loan Offers Credit, Monitoring, Dispute Resolution and more.""",
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize:
                                              ScreenSize.horizontalBlockSize! *
                                                  3.7,
                                          fontWeight: FontWeight.w300)),
                                ),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(height: ScreenSize.fSize_15()),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: double.infinity,
                        height: ScreenSize.fSize_50(),
                        decoration: BoxDecoration(
                            color: Color(0xff0D1318),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                Color(0xff2BEBC8),
                                Color(0xff123a38)
                              ]),
                            )),
                        child: Row(
                          children: [
                            SizedBox(width: ScreenSize.fSize_10()),
                            Text('https://www.cibil.com/',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_60()),
                    controllernext.getnext(context, () {
                      Clipboard.setData(ClipboardData(text: CopyText));
                      Fluttertoast.showToast(
                        msg: "Link copied",
                        toastLength: Toast.LENGTH_LONG,
                        timeInSecForIosWeb: 3,
                        textColor: Color(0xff2BEBC8),
                        gravity: ToastGravity.SNACKBAR,
                        backgroundColor: Color(0xff0D1318),
                        fontSize: 15,
                      );
                    }, 'Copy Link'),
                    SizedBox(height: ScreenSize.fSize_90()),
                  ],
                ),
              ),
              banner.getBN('/Credit_score_online_2')
            ],
          )),
    );
  }
}

List Textdiscrip = [
  """TransUnion CIBIL Limited (or CIBIL – Credit Information Bureau India Limited CIBIL) is one of the foremost credit bureaus licensed to operate by the Reserve Bank of India (RBI). CIBIL gathers and preserves records of an individual’s payments pertaining to credit cards and loans.""",
  """CIBIL score or report plays a very important role in an individual’s financial life. So much so that lenders totally rely on the reports to assess the credit worthiness and as to how much credit they can give you. So it’s always better to be on the higher side of the credit score because there will be brighter chances of getting credit approvals or else they would not trust you with their lending. A higher score will also help in getting some of the best interest rates.""",
  """The report is obviously prepared by Credit Information Bureau (India) Limited. The report is prepared based on the financial behavior of a customer. Hence, the bureau receives information from financial institutions or banks about your credit behavior patterns which will then decide the scores and those will help in creating credit report.""",
  """Ans:-There was a recent update from RBI stating the customers should be given proper access to their reports as in when requested. One can contact CIBIL through their website contact details and can check for any sort of mistakes in it."""
];
