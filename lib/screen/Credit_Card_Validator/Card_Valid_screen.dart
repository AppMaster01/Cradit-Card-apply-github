import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../../MEDIA_SIZE.dart';

class Card_Valid_screen extends StatefulWidget {
  const Card_Valid_screen({Key? key}) : super(key: key);

  @override
  State<Card_Valid_screen> createState() => _Card_Valid_screenState();
}

class _Card_Valid_screenState extends State<Card_Valid_screen> {
  // late List<Data> abc;

  @override
  Widget build(BuildContext context) {
    // print('ooo${abc[0]}');
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Card_Valid_screen', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/Card_Valid_screen', '');
        }, 'Credit Card Validator', true),
        body: Stack(
          children: [
            Column(
              children: [
                native.getNT(context, '/Card_Valid_screen', 'listTile'),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: controllerContainer.getContainer(
                      context,
                      double.infinity,
                      Column(
                        children: [
                          Container(
                            height: ScreenSize.fSize_140(),
                            width: ScreenSize.fSize_140(),
                            child: Column(
                              children: [
                                Lottie.network(
                                  'https://assets5.lottiefiles.com/packages/lf20_Zh0KGoPMzl.json',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: ScreenSize.fSize_10()),
                          controllerText.gettext(
                              "CONGRATULATIONS",
                              GoogleFonts.poppins(
                                  color: Color(0xff2BEBC8),
                                  fontWeight: FontWeight.w600,
                                  fontSize: ScreenSize.fSize_17())),
                          SizedBox(height: ScreenSize.fSize_10()),
                          controllerText.gettext(
                              'Your Card is Valid',
                              GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: ScreenSize.fSize_13())),
                          SizedBox(height: ScreenSize.fSize_28()),
                        ],
                      )),
                ),
              ],
            ),
            banner.getBN('/Card_Valid_screen')
          ],
        ),
      ),
    );
  }
}
