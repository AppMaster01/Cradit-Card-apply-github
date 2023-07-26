import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../MEDIA_SIZE.dart';

class Validate_credit_card extends StatefulWidget {
  const Validate_credit_card({Key? key}) : super(key: key);

  @override
  State<Validate_credit_card> createState() => _Validate_credit_cardState();
}

class _Validate_credit_cardState extends State<Validate_credit_card> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Validate_credit_card', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/Validate_credit_card', '');
        }, 'Validate Credit Card', true),
        body: Stack(
          children: [
            Column(
              children: [
                Image(image: AssetImage('asset/image/Icons/Group 77.png')),
                SizedBox(height: ScreenSize.fSize_10()),
                controllernext.getnext(context, () {
                  controller.showbuttonad(
                      context, '/Bin_Checker', '/Validate_credit_card', '');
                }, 'Check'),
                SizedBox(height: ScreenSize.fSize_30()),
                controllerContainer.getContainer(
                    context,
                    double.infinity,
                    Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: controllerText.gettext(
                                """Please enter your credit or debit card number, Our app will check and validate card number is valid or not using Luhn algorithm (also called modulo 10 or mod 10)
is a checksum formula for numbers/ digits
used with credit card.""",
                                GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: ScreenSize.fSize_14())))
                      ],
                    ))
              ],
            ),
            banner.getBN('/Validate_credit_card')
          ],
        ),
      ),
    );
  }
}
