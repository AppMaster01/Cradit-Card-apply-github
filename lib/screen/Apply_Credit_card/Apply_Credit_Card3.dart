// ignore_for_file: camel_case_types

import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../../MEDIA_SIZE.dart';
import '../../widget_page/widget.dart';

class Apply_Credit_Card3 extends StatelessWidget {
  const Apply_Credit_Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Apply_Credit_Card3', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/Apply_Credit_Card3', '');
        }, "Apply Credit Card", true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  native.getNT(context, "/Apply_Credit_Card3", 'listTile'),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xff0D1318),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          border: GradientBoxBorder(
                            width: 1.5,
                            gradient: LinearGradient(
                                colors: [Color(0xff2BEBC8), Color(0xff123a38)]),
                          )),
                      child: Column(
                        children: [
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto2(
                            context,
                            'asset/image/Icons/bank-icon.png',
                            """The person need to have an active bank account.""",
                          ),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto2(
                              context,
                              'asset/image/Icons/phone-icon.png',
                              """The customer have to have an lively phone number."""),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto2(
                              context,
                              'asset/image/Icons/money-icon.png',
                              """The person have to have a everyday supply of income with full-time employment."""),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto2(
                              context,
                              'asset/image/Icons/person-icon.png',
                              """The person need to be at least 18 years of age."""),
                          SizedBox(
                              height: ScreenSize.horizontalBlockSize! * 5.560),
                          controllerphoto2.getphoto2(
                              context,
                              'asset/image/Icons/credit card-icon.png',
                              """The applicant have to all of the required documents to use for the credit card."""),
                          SizedBox(height: ScreenSize.fSize_50()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_50()),
                  controllernext.getnext(context, () {
                    controller.showbuttonad(context, '/Apply_Credit_Card4',
                        '/Apply_Credit_Card3', '');
                  }, 'Next'),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Apply_Credit_Card3')
          ],
        ),
      ),
    );
  }
}
