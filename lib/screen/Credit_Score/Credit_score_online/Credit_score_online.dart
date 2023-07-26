import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';

import '../../../MEDIA_SIZE.dart';

class Credit_score_online_1 extends StatefulWidget {
  const Credit_score_online_1({Key? key}) : super(key: key);

  @override
  State<Credit_score_online_1> createState() => _Credit_score_online_1State();
}

class _Credit_score_online_1State extends State<Credit_score_online_1> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Credit_score_online_1', ''),
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: controllerapp.getbar(() {
            backbuttoncontroller.showBackbuttonad(
                context, '/Credit_score_online_1', '');
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
                        width: ScreenSize.horizontalBlockSize! * 88,
                      )),
                    ),
                    SizedBox(height: ScreenSize.fSize_25()),
                    ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: image.length,
                      itemBuilder: (context, index) {
                        return controllervalid.getvalid(context, () {
                          controller.showbuttonad(
                              context,
                              '/Credit_score_online_2',
                              '/Credit_score_online_1',
                              [score[index]]);
                        }, image[index], text[index], discrip[index]);
                      },
                    ),
                    controllervalid.getvalid(context, () {
                      controller.showbuttonad(context, '/online_faqs',
                          '/Credit_score_online_1', '');
                    }, 'asset/image/Icons/faqs-icon.png', 'Faqs',
                        'Check your Faqs credit score'),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
              banner.getBN('/Credit_score_online_1')
            ],
          )),
    );
  }
}

List image = [
  'asset/image/Icons/home-icon.png',
  'asset/image/Icons/buy-icon.png',
  'asset/image/Icons/company-icon.png',
  'asset/image/Icons/calculator-icon.png',
  'asset/image/Icons/media-icon.png',
  'asset/image/Icons/dispute-icon.png',
  'asset/image/Icons/credit mantri - icon.png',
];
List text = [
  "Home",
  "Buy",
  "Company",
  "Calculator",
  "Media",
  "Dispute",
  "Credit Mantri",
];
List discrip = [
  "Check your Home credit score",
  "Check your Buy credit score",
  "Check your Company credit score",
  "Check your Calculator credit score",
  "Check your Media credit score",
  "Check your Dispute credit score",
  "Check your credit mantri",
];
List score = [
  "655",
  "845",
  "665",
  "784",
  "900",
  "550",
  "845",
];
List Score = [
  60,
  80,
  60,
  70,
  90,
  50,
  80,
];
int index = 1;
double slider = Score[index];
