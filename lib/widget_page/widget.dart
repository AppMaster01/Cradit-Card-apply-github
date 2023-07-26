
// ignore_for_file: non_constant_identifier_names, camel_case_types, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../MEDIA_SIZE.dart';

final controllerText = Get.put(TextController());
final controllerContainer = Get.put(ContainerController());
final controllerskip = Get.put(skipController());
final controllerminicontainer = Get.put(miniController());
final controllerapp = Get.put(appbarController());
final controllerChekcontainer = Get.put(ChekController());
final controllervalid = Get.put(validController());
final controllernext = Get.put(nextController());
final controllerphoto = Get.put(photoController());
final controllerFeature = Get.put(FeatureController());
final controllerFeature2 = Get.put(Feature2Controller());
final controllerphoto2 = Get.put(photo2Controller());
final controllerwifi = Get.put(wifiController());
final controllerslider = Get.put(sliderController());
final controllerfiled = Get.put(TextfiledController());
final controllertextbox = Get.put(textboxController());
final controllerscore = Get.put(scoreController());
String CopyText = "https://www.cibil.com/";

class TextController extends GetxController {
  gettext(String name, style) {
    return Text(
      textAlign: TextAlign.start,
      name,
      style: style,
    );
  }
}

class ContainerController extends GetxController {
  getContainer(context, wight, widgt) {
    return Container(
      width: wight,
      decoration: const BoxDecoration(
          color: Color(0xff0D1318),
          borderRadius: BorderRadius.all(Radius.circular(35)),
          border: GradientBoxBorder(
            gradient:
                LinearGradient(colors: [Color(0xff2BEBC8), Color(0xff123a38)]),
          )),
      child: widgt,
    );
  }
}

class skipController extends GetxController {
  getnext(context, hight, width, text) {
    return Container(
      height: hight,
      width: width,
      decoration: const BoxDecoration(
          color: Color(0xff0D1318),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: GradientBoxBorder(
            gradient:
                LinearGradient(colors: [Color(0xff2BEBC8), Color(0xff123a38)]),
          )),
      child: Center(
          child: Text(text,
              style: GoogleFonts.poppins(
                  color: const Color(0xff2BEBC8),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenSize.fSize_18()))),
    );
  }
}

class miniController extends GetxController {
  getmini(context, onTap, image, text) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: ScreenSize.verticalBlockSize! * 32,
          width: ScreenSize.horizontalBlockSize! * 28,
          decoration: const BoxDecoration(
              color: Color(0xff0D1318),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: GradientBoxBorder(
                gradient: LinearGradient(
                    colors: [Color(0xff2BEBC8), Color(0xff123a38)]),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: ScreenSize.fSize_45(),
                      width: ScreenSize.fSize_45(),
                      decoration: const BoxDecoration(
                          color: Color(0xff0D1318),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [Color(0xff2BEBC8), Color(0xff123a38)]),
                          )),
                      child: Center(
                          child: Image(
                        image: AssetImage(image),
                        height: ScreenSize.fSize_34(),
                      )),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: ScreenSize.fSize_10()),
                  controllerText.gettext(
                    text,
                    GoogleFonts.poppins(
                        color: const Color(0xff2BEBC8),
                        fontSize: ScreenSize.fSize_10(),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

class appbarController extends GetxController {
  getbar(onTap, String name, tital) {
    return AppBar(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(20),
      )),
      leading: GestureDetector(
          onTap: onTap,
          child: Center(
              child: Image(
            height: ScreenSize.horizontalBlockSize! * 7.5,
            image: const AssetImage('asset/image/Icons/arrowsquareleft.png'),
          ))),
      elevation: 0,
      backgroundColor: const Color(0xFF0B0F12),
      centerTitle: tital,
      title: Text(name,
          style: GoogleFonts.nunito(
              fontSize: ScreenSize.horizontalBlockSize! * 5,
              fontWeight: FontWeight.w600)),
    );
  }
}

class ChekController extends GetxController {
  getbar(onTap, context, image, hedline, discrip, buttontext) {
    return Container(
      height: ScreenSize.horizontalBlockSize! * 53,
      // color: Colors.white,
      child: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: ScreenSize.horizontalBlockSize! * 46,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xff0D1318),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: GradientBoxBorder(
                      gradient: LinearGradient(
                          colors: [Color(0xff2BEBC8), Color(0xff123a38)]),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(children: [
                      SizedBox(width: ScreenSize.fSize_20()),
                      Center(
                        child: Image(
                            image: AssetImage(image),
                            width: ScreenSize.fSize_90()),
                      ),
                      SizedBox(width: ScreenSize.fSize_30()),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              controllerText.gettext(
                                hedline,
                                GoogleFonts.poppins(
                                    color: const Color(0xff2BEBC8),
                                    fontSize: ScreenSize.fSize_15(),
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: ScreenSize.fSize_10()),
                              controllerText.gettext(
                                discrip,
                                GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: ScreenSize.fSize_10(),
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                    SizedBox(height: ScreenSize.fSize_20()),
                  ],
                ),
              )),
          Positioned(
            bottom: 0,
            right: ScreenSize.fSize_120(),
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                height: ScreenSize.horizontalBlockSize! * 14,
                width: ScreenSize.horizontalBlockSize! * 38,
                decoration: const BoxDecoration(
                    color: Color(0xff0D1318),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: GradientBoxBorder(
                      gradient: LinearGradient(
                          colors: [Color(0xff123a38), Color(0xff2BEBC8)]),
                    )),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: controllerText.gettext(
                        buttontext,
                        // 'Check Now',
                        GoogleFonts.poppins(
                            color: const Color(0xff2BEBC8),
                            fontSize: ScreenSize.fSize_16(),
                            fontWeight: FontWeight.w600),
                      ))
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class validController extends GetxController {
  getvalid(context, onTap, image, text, discrip) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            height: ScreenSize.verticalBlockSize! * 18,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xff0D1318),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: GradientBoxBorder(
                  gradient: LinearGradient(
                      colors: [Color(0xff2BEBC8), Color(0xff123a38)]),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image(
                          image: AssetImage(image),
                          width: ScreenSize.fSize_50(),
                        ),
                      ),
                      SizedBox(width: ScreenSize.fSize_6()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          controllerText.gettext(
                            text,
                            GoogleFonts.poppins(
                                color: const Color(0xff2BEBC8),
                                fontSize: ScreenSize.fSize_14(),
                                fontWeight: FontWeight.w600),
                          ),
                          controllerText.gettext(
                            discrip,
                            GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: ScreenSize.fSize_10(),
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: const AssetImage('asset/image/Icons/RightOutlined.png'),
                    width: ScreenSize.fSize_28(),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class nextController extends GetxController {
  getnext(context, ontap, Next) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: ScreenSize.horizontalBlockSize! * 12,
        width: ScreenSize.horizontalBlockSize! * 36,
        decoration: const BoxDecoration(
            color: Color(0xff0D1318),
            borderRadius: BorderRadius.all(Radius.circular(40)),
            border: GradientBoxBorder(
              gradient: LinearGradient(
                  colors: [Color(0xff2BEBC8), Color(0xff123a38)]),
            )),
        child: Center(
            child: Text(Next,
                style: GoogleFonts.poppins(
                    color: const Color(0xff2BEBC8),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.fSize_18()))),
      ),
    );
  }
}

class photoController extends GetxController {
  getphoto(context, String photo, String discrip) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          SizedBox(width: ScreenSize.fSize_28()),
          Image(height: ScreenSize.fSize_24(), image: AssetImage(photo)),
          SizedBox(width: ScreenSize.fSize_15()),
          Text(discrip,
              style: GoogleFonts.poppins(
                  fontSize: ScreenSize.horizontalBlockSize! * 3.6,
                  color: Colors.white,
                  fontWeight: FontWeight.w300)),
        ],
      ),
    );
  }
}

class FeatureController extends GetxController {
  getFeature(context, String line, String discrip) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: ScreenSize.fSize_15()),
            Padding(
              padding: EdgeInsets.only(top: ScreenSize.fSize_4()),
              child: Image(
                  height: ScreenSize.fSize_23(),
                  color: const Color(0xff2BEBC8),
                  image: const AssetImage("asset/image/Icons/bullet-point 1.png")),
            ),
            SizedBox(width: ScreenSize.fSize_15()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(line,
                    style: GoogleFonts.poppins(
                        color: const Color(0xff2BEBC8),
                        fontSize: ScreenSize.fSize_16(),
                        fontWeight: FontWeight.w400)),
                SizedBox(height: ScreenSize.fSize_6()),
                Container(
                  width: ScreenSize.horizontalBlockSize! * 70,
                  height: ScreenSize.horizontalBlockSize! * 25,
                  // color: Colors.black12,
                  child: Text(discrip,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 3.1,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class Feature2Controller extends GetxController {
  getFeature2(context, String discrip) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: ScreenSize.fSize_15()),
            Padding(
              padding: EdgeInsets.only(top: ScreenSize.fSize_4()),
              child: Image(
                  height: ScreenSize.fSize_23(),
                  color: const Color(0xff2BEBC8),
                  image: const AssetImage("asset/image/Icons/bullet-point 1.png")),
            ),
            SizedBox(width: ScreenSize.fSize_13()),
            Column(
              children: [
                SizedBox(height: ScreenSize.fSize_4()),
                Container(
                  width: ScreenSize.horizontalBlockSize! * 80,
                  // color: Colors.blueGrey,
                  child: Text(discrip,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 3.7,
                          fontWeight: FontWeight.w300)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class TextfiledController extends GetxController {
  getfiled(context, name) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: double.infinity,
        height: ScreenSize.fSize_50(),
        decoration: const BoxDecoration(
            color: Color(0xff0D1318),
            borderRadius: BorderRadius.all(Radius.circular(15)),
            border: GradientBoxBorder(
              gradient: LinearGradient(
                  colors: [Color(0xff2BEBC8), Color(0xff123a38)]),
            )),
        child: Center(
            child: controllerText.gettext(
                name, GoogleFonts.poppins(color: Colors.white))),

        // Padding(
        //   padding: EdgeInsets.only(left: ScreenSize.fSize_20()),
        //   child: TextField(
        //     textInputAction: TextInputAction.next,
        //     style: GoogleFonts.poppins(color: Color(0xff2BEBC8)),
        //     cursorColor: Color(0xff2BEBC8),
        //     decoration: InputDecoration(border: InputBorder.none),
        //   ),
        // ),
      ),
    );
  }
}

class photo2Controller extends GetxController {
  getphoto2(context, String photo, String discrip) {
    return Row(
      children: [
        SizedBox(width: ScreenSize.fSize_28()),
        Image(
            height: ScreenSize.fSize_28(),
            color: const Color(0xFF2BEBC8),
            image: AssetImage(photo)),
        SizedBox(width: ScreenSize.fSize_13()),
        Column(
          children: [
            Container(
              width: ScreenSize.horizontalBlockSize! * 68,
              height: ScreenSize.horizontalBlockSize! * 18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(discrip,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: ScreenSize.fSize_13(),
                          fontWeight: FontWeight.w300)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class wifiController extends GetxController {
  getwifi(context, ontap, String photo, String text) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            height: ScreenSize.verticalBlockSize! * 18,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xff0D1318),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: GradientBoxBorder(
                  gradient: LinearGradient(
                      colors: [Color(0xff2BEBC8), Color(0xff123a38)]),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Center(
                          child: Image(
                            image: AssetImage(photo),
                            width: ScreenSize.fSize_45(),
                          ),
                        ),
                      ),
                      SizedBox(width: ScreenSize.fSize_6()),
                      controllerText.gettext(
                        text,
                        GoogleFonts.poppins(
                            color: const Color(0xff2BEBC8),
                            fontSize: ScreenSize.fSize_16(),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: const AssetImage('asset/image/Icons/RightOutlined.png'),
                    width: ScreenSize.fSize_28(),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class sliderController extends GetxController {
  getslider(context, text, value, change, valuetext) {
    return Row(
      children: [
        Container(
            width: ScreenSize.horizontalBlockSize! * 30,
            child: controllerText.gettext(
              text,
              GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_13(),
                  fontWeight: FontWeight.w400),
            )),
        Container(
          width: ScreenSize.fSize_170(),
          height: ScreenSize.fSize_20(),
          child: SliderTheme(
            data: SliderThemeData(
              trackHeight: 4,
              thumbShape: RoundSliderThumbShape(
                  enabledThumbRadius: ScreenSize.horizontalBlockSize! * 2.2),
              thumbColor: const Color(0xff2BEBC8),
              inactiveTrackColor: const Color(0xff304B46),
              activeTrackColor: const Color(0xff47A896),
            ),
            child: Slider(value: value, min: 0, max: 10, onChanged: change),
          ),
        ),
        Container(
          width: ScreenSize.fSize_25(),
          height: ScreenSize.fSize_20(),
          // color: Colors.grey,
          child: Center(
            child: Text(
              valuetext,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_15()),
            ),
          ),
        )
      ],
    );
  }
}

class textboxController extends GetxController {
  gettextbox(context, text, value) {
    return Row(
      children: [
        SizedBox(width: ScreenSize.fSize_34()),
        Container(
          width: ScreenSize.horizontalBlockSize! * 35,
          child: Text(
            text,
            style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: ScreenSize.fSize_13(),
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(width: ScreenSize.fSize_34()),
        const Text(':',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        SizedBox(width: ScreenSize.fSize_15()),
        Text(
          value,
          style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: ScreenSize.fSize_13(),
              fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}

class scoreController extends GetxController {
  getscore(context, text1, text2, color1) {
    return Column(
      children: [
        Text(text1,
            style: GoogleFonts.poppins(
                color: color1,
                fontWeight: FontWeight.w600,
                fontSize: ScreenSize.horizontalBlockSize!*2.2)),
        Text(text2,
            style: GoogleFonts.poppins(
                color: color1,
                fontWeight: FontWeight.w600,
                fontSize: ScreenSize.horizontalBlockSize!*2.1)),
      ],
    );
  }
}
