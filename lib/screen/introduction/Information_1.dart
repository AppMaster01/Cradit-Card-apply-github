import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';

import '../../MEDIA_SIZE.dart';

class Information_1 extends StatefulWidget {
  const Information_1({Key? key}) : super(key: key);

  @override
  State<Information_1> createState() => _Information_1State();
}

class _Information_1State extends State<Information_1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Information_1', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(context, '/Information_1', '');
        }, 'Credit Card Information', true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_10()),
                  controllerFeature2.getFeature2(context,
                      """Free Credit Card Number Validator is free application allow you to check your card number and specify the type of card. The algorithm used to process the Luhn algorithm or Luhn formula, also known as the modulus 10 or mod 10 algorithm, is a simple checksum formula used to validate a variety of identification numbers."""),
                  SizedBox(height: ScreenSize.fSize_15()),
                  controllerFeature2.getFeature2(context,
                      """Free Credit Card BIN checker userful application to find credit card details such as Card type, Country Issue Bank etc using BIN number(first 6 digit of card)"""),
                  SizedBox(height: ScreenSize.fSize_15()),
                  controllerFeature2.getFeature2(context,
                      """This tool is used to Verify Credit Card using Lubin’ss algorithm, also known as the modulus 10 or modi 10 algorithm."""),
                  SizedBox(height: ScreenSize.fSize_15()),
                  controllerFeature2.getFeature2(context,
                      """We do not represent any financial institution od bank!"""),
                  SizedBox(height: ScreenSize.fSize_15()),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage(
                          'asset/image/vector images/Credit Card Information Image.png'),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Information_1')
          ],
        ),
      ),
    );
  }
}
