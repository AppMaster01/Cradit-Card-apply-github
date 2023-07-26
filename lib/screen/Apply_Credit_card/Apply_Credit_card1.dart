import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../../Controller_Page/Google_Ads.dart';
import '../../MEDIA_SIZE.dart';
import '../../widget_page/widget.dart';

class Apply_Credit_card1 extends StatelessWidget {
  const Apply_Credit_card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, "/Apply_Credit_card1", ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, "/Apply_Credit_card1", '');
        }, 'Apply Credit Card', true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  native.getNT(context, "/Apply_Credit_card1", "listTile"),
                  SizedBox(height: ScreenSize.fSize_10()),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: ScreenSize.horizontalBlockSize! * 58,
                      decoration: BoxDecoration(
                          color: Color(0xff0D1318),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [Color(0xff2BEBC8), Color(0xff123a38)]),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              controllerphoto.getphoto(
                                context,
                                'asset/image/Icons/speed 1.png',
                                'Quick approval and disbursal',
                              )
                            ],
                          ),
                          SizedBox(height: ScreenSize.fSize_10()),
                          Column(
                            children: [
                              controllerphoto.getphoto(
                                context,
                                'asset/image/Icons/safety & security.png',
                                'Safety and Security',
                              )
                            ],
                          ),
                          SizedBox(height: ScreenSize.fSize_10()),
                          Column(
                            children: [
                              controllerphoto.getphoto(
                                context,
                                'asset/image/Icons/timer .png',
                                'Lesser time and effort',
                              )
                            ],
                          ),
                          SizedBox(height: ScreenSize.fSize_10()),
                          Column(
                            children: [
                              controllerphoto.getphoto(
                                context,
                                'asset/image/Icons/money 1.png',
                                r'Credit limit up to $5000',
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenSize.fSize_120(),
                  ),
                  controllernext.getnext(context, () {
                    controller.showbuttonad(context, "/Apply_Credit_card2",
                        "/Apply_Credit_card1", '');
                  }, 'Next'),
                ],
              ),
            ),
            banner.getBN('/Apply_Credit_card1')
          ],
        ),
      ),
    );
  }
}
