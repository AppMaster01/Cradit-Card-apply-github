import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../MEDIA_SIZE.dart';

class Credit_Score extends StatefulWidget {
  const Credit_Score({Key? key}) : super(key: key);

  @override
  State<Credit_Score> createState() => _Credit_ScoreState();
}

class _Credit_ScoreState extends State<Credit_Score> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Credit_Score', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(context, '/Credit_Score', '');
        }, 'Credit Score Type', true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Image(
                          image: AssetImage(
                              'asset/image/vector images/Credit Score Vector.png'),
                          height: ScreenSize.horizontalBlockSize! * 55),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_30()),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: controllerContainer.getContainer(
                        context,
                        double.infinity,
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              controllerText.gettext(
                                  """The card number is one of the most important of credit card. It identifies your account with the card issuer and they provides the digits you need to make purchases online or by phone. It’s typically 16 digits, though some manufactures use as little as 14 and as many as 19 digits.""",
                                  GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: ScreenSize.fSize_14(),
                                      fontWeight: FontWeight.w300))
                            ],
                          ),
                        ),
                      )),
                  controllerwifi.getwifi(
                    context,
                    () {
                      controller.showbuttonad(context,
                          '/Credit_score_offline_1', '/Credit_Score', '');
                    },
                    "asset/image/Icons/offline score check icon.png",
                    "Offline Score Check",
                  ),
                  controllerwifi.getwifi(
                    context,
                    () {
                      controller.showbuttonad(context, '/Credit_score_online_1',
                          '/Credit_Score', '');
                    },
                    "asset/image/Icons/Online score check icon.png",
                    "Online Score Check",
                  ),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Credit_Score')
          ],
        ),
      ),
    );
  }
}
