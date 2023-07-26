import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../MEDIA_SIZE.dart';
import 'Credit_score_online.dart';
import 'Credit_score_online_2.dart';

class online_faqs extends StatefulWidget {
  const online_faqs({Key? key}) : super(key: key);

  @override
  State<online_faqs> createState() => _online_faqsState();
}

class _online_faqsState extends State<online_faqs> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/online_faqs', ''),child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(context, '/online_faqs', '');
        }, 'Credit Score Online', true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_180()),
                  Container(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: name.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: ScreenSize.horizontalBlockSize! * 75,
                            decoration: BoxDecoration(
                                color: Color(0xff0D1318),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                border: GradientBoxBorder(
                                  gradient: LinearGradient(colors: [
                                    Color(0xff2BEBC8),
                                    Color(0xff123a38)
                                  ]),
                                )),
                            child: Column(children: [
                              Container(
                                  height: ScreenSize.horizontalBlockSize! * 18,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff10292a),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40),
                                        topLeft: Radius.circular(40)),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: ScreenSize.fSize_18(),
                                            top: ScreenSize.horizontalBlockSize! *
                                                3),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Text(name[index],
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: ScreenSize
                                                          .horizontalBlockSize! *
                                                      4.5)),
                                        ),
                                      ),
                                    ],
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Container(
                                  child: Text(Textdiscrip[index],
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize:
                                              ScreenSize.horizontalBlockSize! *
                                                  3.2)),
                                ),
                              ),
                            ]),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              child:
              native.getNT(context, '/online_faqs', 'listTile'),
            ),
            banner.getBN('/online_faqs')
          ],
        ),
      ),
    );
  }
}

List name = [
  'What is CIBIL?',
  """How does your CIBIL score/ report matter?""",
  """Who prepares the CIBIL score or report?""",
  """Who prepares the CIBIL score or report?""",
];
