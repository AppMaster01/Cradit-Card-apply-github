import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller_Page/Button_controller/Main_Controller.dart';
import '../../MEDIA_SIZE.dart';

class Credit_Card_Information extends StatefulWidget {
  const Credit_Card_Information({Key? key}) : super(key: key);

  @override
  State<Credit_Card_Information> createState() =>
      _Credit_Card_InformationState();
}

class _Credit_Card_InformationState extends State<Credit_Card_Information> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Credit_Card_Information', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/Credit_Card_Information', '');
        }, "Credit Card Validator", true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image(
                      image: AssetImage(
                          'asset/image/vector images/Credit Card Information Image.png')),
                ),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: controllerContainer.getContainer(
                      context,
                      double.infinity,
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: controllerText.gettext(
                          """The card number is one of the most important of credit card. It identifies your account with the card issuer and they provides the digits you need to make purchases online or by phone. It’s typically 16 digits, though some manufactures use as little as 14 and as many as 19 digits.""",
                          GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_13(),
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    )),
                SizedBox(height: ScreenSize.fSize_30()),
                controllernext.getnext(context, () {
                  controller.showbuttonad(context, '/Validate_credit_card',
                      '/Credit_Card_Information', '');
                }, 'Next')
              ]),
            ),
            banner.getBN('/Credit_Card_Information')
          ],
        ),
      ),
    );
  }
}
