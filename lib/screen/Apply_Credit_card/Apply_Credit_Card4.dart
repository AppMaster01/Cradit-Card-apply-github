// ignore_for_file: camel_case_types

import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../../MEDIA_SIZE.dart';
import '../../widget_page/widget.dart';

class Apply_Credit_Card4 extends StatelessWidget {
  const Apply_Credit_Card4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, "/Apply_Credit_Card4", ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, "'/Apply_Credit_Card4", '');
        }, "Apply Credit Card", true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  native.getNT(context, "/Apply_Credit_Card4", 'listTile'),
                  Padding(
                    padding: const EdgeInsets.all(8),
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
                          SizedBox(height: ScreenSize.fSize_10()),
                          controllerphoto2.getphoto2(
                            context,
                            'asset/image/Icons/age-icon.png',
                            """Age proof""",
                          ),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto2(
                              context,
                              'asset/image/Icons/letter-icon.png',
                              """Letter from the employer organisation"""),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto2(
                              context,
                              'asset/image/Icons/addressproof-icon.png',
                              """Proof of address such as Passport, Voters ID, Driving License, Utility bills, etc."""),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto2(
                              context,
                              'asset/image/Icons/identity-icon.png',
                              """Proof of identity such as Driving License, Voter ID, Passport, etc."""),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          controllerphoto2.getphoto2(
                              context,
                              'asset/image/Icons/income-icon.png',
                              """Proof of income"""),
                          SizedBox(height: ScreenSize.fSize_10()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_50()),
                  controllernext.getnext(context, () {
                    controller.showbuttonad(context, '/Apply_Credit_Card5',
                        '/Apply_Credit_Card4', '');
                  }, 'Next'),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Apply_Credit_Card4')
          ],
        ),
      ),
    );
  }
}
