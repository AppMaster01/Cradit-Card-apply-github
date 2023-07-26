import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../MEDIA_SIZE.dart';

class Apply_Credit_Card5 extends StatefulWidget {
  const Apply_Credit_Card5({Key? key}) : super(key: key);

  @override
  State<Apply_Credit_Card5> createState() => _Apply_Credit_Card5State();
}

class _Apply_Credit_Card5State extends State<Apply_Credit_Card5> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Apply_Credit_Card5', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/Apply_Credit_Card5', '');
        }, 'Apply Credit Card', true),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Image(
                    height: ScreenSize.horizontalBlockSize! * 65,
                    image: AssetImage(
                        'asset/image/vector images/application done vector.png')),
              ),
            ),
            SizedBox(height: ScreenSize.fSize_20()),
            Text(
              textAlign: TextAlign.center,
              """Your online credit card application has been submitted""",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_15(),
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(height: ScreenSize.fSize_15()),
            Padding(
                padding: EdgeInsets.all(12),
                child: controllerContainer.getContainer(
                  context,
                  double.infinity,
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        SizedBox(height: ScreenSize.fSize_10()),
                        controllerText.gettext(
                            """Your form submission confirmation message may seem like a tiny detail to you, yet it has a big potential for your lead generation strategy.""",
                            GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: ScreenSize.fSize_13(),
                                fontWeight: FontWeight.w300)),
                        SizedBox(height: ScreenSize.fSize_10()),
                      ],
                    ),
                  ),
                ))
            // Padding(
            //   padding: EdgeInsets.all(5),
            //   child: controllerText.gettext(
            //       """Your online credit card application has been submitted""",
            //       Colors.white,
            //       ScreenSize.fSize_15(),
            //       FontWeight.w500),
            // )
          ],
        ),
      ),
    );
  }
}
