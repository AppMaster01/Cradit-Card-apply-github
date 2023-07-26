// ignore_for_file: file_names
import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../../Controller_Page/Google_Ads.dart';
import '../../MEDIA_SIZE.dart';
import '../../widget_page/widget.dart';

class Apply_Credit_card2 extends StatelessWidget {
  const Apply_Credit_card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, "/Apply_Credit_card2", ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, "/Apply_Credit_card2", '');
        }, 'Apply Credit Card', true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      // height: ScreenSize.verticalBlockSize! * 18,
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
                          SizedBox(height: ScreenSize.fSize_20()),
                          controllerFeature.getFeature(
                            context,
                            'DOCUMENTATION',
                            """Ensure all your latest documents are submitted with correct information, for a hassle-free process. For getting a loan you share the latest copies of all the required documents.""",
                          ),
                          SizedBox(height: ScreenSize.fSize_10()),
                          controllerFeature.getFeature(
                            context,
                            'IDENTIFY YOUR NEEDS',
                            """Understand the optimal amount of loan you need based on your requirements and your repayment capability Figure out why yoneed a Loan and how much you need.""",
                          ),
                          SizedBox(height: ScreenSize.fSize_20()),
                          controllerFeature.getFeature(
                            context,
                            'DISBURSAL AND RE-PAYMENT',
                            """Once you receive the disbursal. ensuring that your monthly EMI is paid on time is extremely important. Once all formalities are complete, you will receive disbursal in your account""",
                          ),
                          SizedBox(height: ScreenSize.fSize_10()),
                          controllerFeature.getFeature(
                            context,
                            'CHECK ELIGIBILITY',
                            """Understand the amount of monthly EMI you can afford based on your current monthly income. Choose the loan amount for which you can easily pay EMI after considering your regular expenses.""",
                          ),
                          SizedBox(height: ScreenSize.fSize_40()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_40()),
                  controllernext.getnext(context, () {
                    controller.showbuttonad(context, "/Apply_Credit_Card3",
                        "/Apply_Credit_card2", '');
                  }, 'Next'),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Apply_Credit_card2')
          ],
        ),
      ),
    );
  }
}
