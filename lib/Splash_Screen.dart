// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:cradit_card_apply/Home.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'MEDIA_SIZE.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Get.to(() => Home_Screen());
    // Navigator.of(context).push(
    //   MaterialPageRoute(builder: (_) => Home_Screen()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    // ScreenSize.sizerInit(context);
    return Scaffold(
      // backgroundColor: Colors.black,
      body: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Colors.black,
        pages: [
          PageViewModel(
            decoration: PageDecoration(
                imageFlex: 3,
                bodyFlex: 2,
                titleTextStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_25(),
                    color: const Color(0xff2BEBC8)),
                bodyTextStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: ScreenSize.fSize_15(),
                    color: Colors.white)),
            title: """One App for all your credit card Needs""",
            body: """Discover-Explore-Enable best
Credit Card potion""",
            image: Image(
                image: const AssetImage(
                    'asset/image/vector images/splashscreen 1-vector.png'),
                height: ScreenSize.horizontalBlockSize! * 60),
          ),
          PageViewModel(
            decoration: PageDecoration(
                bodyAlignment: Alignment.center,
                imageFlex: 3,
                bodyFlex: 2,
                titleTextStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_23(),
                    color: const Color(0xff2BEBC8)),
                bodyTextStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: ScreenSize.fSize_15(),
                    color: Colors.white)),
            title:
                """Discover Which Credit Card You’re Eligible for one place""",
            body: """Explore & compare Credit cards by
features, rewad & bank""",
            image: Image(
                height: ScreenSize.horizontalBlockSize! * 52,
                image: const AssetImage(
                    'asset/image/vector images/splashscreen 2-vector.png')),
          ),
          PageViewModel(
            decoration: PageDecoration(
              bodyAlignment: Alignment.center,
              imageFlex: 3,
              bodyFlex: 2,
              titleTextStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_24(),
                  color: const Color(0xff2BEBC8)),
              imagePadding: const EdgeInsets.all(1),
              bodyTextStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: ScreenSize.fSize_14(),
                  color: Colors.white),
            ),
            title: """Enable a Credit Cards
 that’s right for You""",
            body: """Apply for a Credit Card of your 
Choice minuter""",
            image: Image(
                image: const AssetImage(
                    'asset/image/vector images/splashscreen 3-vector.png'),
                height: ScreenSize.horizontalBlockSize! * 60),
          ),
        ],
        onDone: () => _onIntroEnd(context),
        showSkipButton: true,
        skip: controllerskip.getnext(
            context, ScreenSize.fSize_40(), ScreenSize.fSize_90(), 'SKIP'),
        next: controllerskip.getnext(
            context, ScreenSize.fSize_40(), ScreenSize.fSize_90(), 'NEXT'),
        done: controllerskip.getnext(
            context, ScreenSize.fSize_40(), ScreenSize.fSize_90(), 'NEXT'),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          activeColor: Color(0xff2BEBC8),
          color: Colors.white,
          activeSize: Size(25.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}
