// ignore_for_file: avoid_unnecessary_containers

import 'package:cradit_card_apply/Controller_Page/Button_controller/Main_Controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import 'Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'MEDIA_SIZE.dart';

enum SingingCharacter { english, hindi }

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  final List locale = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'हिंदी', 'locale': const Locale('hi', 'IN')},
  ];

  //
  updateLanguage(Locale locale) {
    Get.updateLocale(locale);
  }

  SingingCharacter? _character = SingingCharacter.english;

  final FlutterLocalization _localization = FlutterLocalization.instance;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Language', ''),
      child: Scaffold(
        backgroundColor: const Color(0xff000000),
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          )),
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          actions: [
            Row(
              children: [
                Center(
                    child: GestureDetector(
                  onTap: () {
                    controller.showbuttonad(context, "/Select_credit_card_type",
                        "/Language", 'arg');
                  },
                  child: Image(
                    image: const AssetImage('asset/image/Icons/ticksquare.png'),
                    height: ScreenSize.fSize_30(),
                  ),
                )),
                SizedBox(width: ScreenSize.fSize_6()),
              ],
            )
          ],
          backgroundColor: const Color(0xFF0B0F12),
          title: Text("Select Language",
              style: GoogleFonts.poppins(
                  fontSize: ScreenSize.horizontalBlockSize! * 5.5,
                  fontWeight: FontWeight.w500)),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Text(
                      'Current language is: ${_localization.getLanguageName()}',
                      style: const TextStyle(color: Colors.white)),
                  GestureDetector(
                    onTap: () {
                      // _localization.translate('en');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: ScreenSize.fSize_50(),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color(0xff0D1318),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                Color(0xff2BEBC8),
                                Color(0xff123a38)
                              ]),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Center(
                                      child: Image(
                                          image: const AssetImage(
                                              'asset/image/Icons/united-kingdom.png'),
                                          height: ScreenSize.fSize_40()),
                                    ),
                                  ),
                                  SizedBox(width: ScreenSize.fSize_20()),
                                  controllerText.gettext(
                                      'English',
                                      GoogleFonts.poppins(
                                          fontSize: ScreenSize.fSize_15(),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            Transform.scale(
                              scale: 1.4,
                              child: Radio(
                                  activeColor: const Color(0xFF2BEBC8),
                                  value: SingingCharacter.english,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter? value) {
                                    // setState(() {
                                    //   updateLanguage(locale[1]['locale']);
                                    //   _localization.translate('en');
                                    //   _character = value;
                                    // });
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // _localization.translate('hi');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: ScreenSize.fSize_50(),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color(0xff0D1318),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            border: GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                Color(0xff2BEBC8),
                                Color(0xff123a38)
                              ]),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  const Center(
                                    child: Image(
                                        image: AssetImage(
                                            'asset/image/Icons/india.png')),
                                  ),
                                  SizedBox(width: ScreenSize.fSize_20()),
                                  controllerText.gettext(
                                      'Hindi',
                                      GoogleFonts.poppins(
                                          fontSize: ScreenSize.fSize_15(),
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ),
                            Transform.scale(
                              scale: 1.4,
                              child: Radio(
                                  activeColor: const Color(0xFF2BEBC8),
                                  value: SingingCharacter.hindi,
                                  groupValue: _character,
                                  onChanged: (SingingCharacter? value) {
                                    // setState(() {
                                    //   updateLanguage(locale[1]['locale']);
                                    //   _localization.translate('hi');
                                    //   _character = value;
                                    // });
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            banner.getBN('/Language')
          ],
        ),
      ),
    );
  }
}
