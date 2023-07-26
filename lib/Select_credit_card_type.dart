import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';

import 'MEDIA_SIZE.dart';

class Select_credit_card_type extends StatefulWidget {
  const Select_credit_card_type({Key? key}) : super(key: key);

  @override
  State<Select_credit_card_type> createState() =>
      _Select_credit_card_typeState();
}

class _Select_credit_card_typeState extends State<Select_credit_card_type> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, "/Select_credit_card_type", ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, "/Select_credit_card_type", '');
        }, "Select Your Type", true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  controllerChekcontainer.getbar(() {
                    controller.showbuttonad(context, '/Credit_Card_Validator',
                        '/Select_credit_card_type', '');
                  },
                      context,
                      'asset/image/Icons/credit card validator img.png',
                      "Credit Card Validator",
                      """It is a long established fact that
a reader will be distracted by 
the readable content of a page.""",
                      "Check Now"),
                  SizedBox(height: ScreenSize.fSize_15()),
                  native.getNT(
                      context, "/Select_credit_card_type", "listTileMedium"),
                  controllerChekcontainer.getbar(() {
                    controller.showbuttonad(context, '/Credit_Score',
                        '/Select_credit_card_type', '');
                  },
                      context,
                      'asset/image/Icons/Credit score img.png',
                      "Credit Score",
                      """It is a long established fact that
a reader will be distracted by 
the readable content of a page.""",
                      "Check Now"),
                  SizedBox(height: ScreenSize.fSize_15()),
                  controllerChekcontainer.getbar(() {
                    controller.showbuttonad(context, "/Apply_Credit_card1",
                        "/Select_credit_card_type", '');
                  },
                      context,
                      'asset/image/Icons/Apply credit card img.png',
                      "Apply For Credit Card",
                      """It is a long established fact that
a reader will be distracted by 
the readable content of a page.""",
                      "Check Now"),
                  SizedBox(height: ScreenSize.fSize_15()),
                  controllerChekcontainer.getbar(() {
                    controller.showbuttonad(context, '/Information_1',
                        '/Select_credit_card_type', '');
                  },
                      context,
                      'asset/image/Icons/introduction img.png',
                      "Introduction",
                      """It is a long established fact that
a reader will be distracted by 
the readable content of a page.""",
                      "Check Now"),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Select_credit_card_type')
          ],
        ),
      ),
    );
  }
}
