import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:flutter/material.dart';
import '../../Controller_Page/Button_controller/Back_Butoon_controller.dart';
import '../../Controller_Page/Google_Ads.dart';
import '../../MEDIA_SIZE.dart';
import '../../widget_page/widget.dart';

class Credit_Card_Validator extends StatefulWidget {
  const Credit_Card_Validator({Key? key}) : super(key: key);

  @override
  State<Credit_Card_Validator> createState() => _Credit_Card_ValidatorState();
}

class _Credit_Card_ValidatorState extends State<Credit_Card_Validator> {
  // var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    // print('DD${abc}');
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Credit_Card_Validator', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/Credit_Card_Validator', '');
        }, 'Credit Card Validator', true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  controllerChekcontainer.getbar(() {
                    controller.showbuttonad(context, '/Credit_Card_Information',
                        '/Credit_Card_Validator', '');
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
                      context, "/Credit_Card_Validator", "listTileMedium"),
                  controllervalid.getvalid(context, () {
                    controller.showbuttonad(
                        context, '/Bin_Checker', '/Credit_Card_Validator', '');
                  }, "asset/image/Icons/bin cheker icon.png",
                      "Free Bin Checker", "Check Your Card Validate"),
                  controllervalid.getvalid(context, () {
                    controller.showbuttonad(context, '/Credit_card_history',
                        '/Credit_Card_Validator', '');
                  }, "asset/image/Icons/credit card history icon.png",
                      "Credit Card History", "Check Your Card History"),
                  controllervalid.getvalid(context, () {
                    controller.showbuttonad(context, '/Information_1',
                        '/Credit_Card_Validator', '');
                  }, "asset/image/Icons/bin cheker icon.png",
                      "Credit Card Information", "Check Your Card Information"),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Credit_Card_Validator')
          ],
        ),
      ),
    );
  }
}
