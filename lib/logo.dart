import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Controller_Page/My_Controller.dart';
import 'MEDIA_SIZE.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  MyAppController myAppController = Get.put(MyAppController());

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
              child: Image(
            image: const AssetImage('asset/image/logo/logo.png'),
            height: ScreenSize.horizontalBlockSize! * 40,
          )),
          SizedBox(height: ScreenSize.horizontalBlockSize! * 45),
          Text(
            textAlign: TextAlign.center,
            """Apply For
Credit Card Online""",
            style: GoogleFonts.poppins(
                color: const Color(0xff2BEBC8),
                fontSize: ScreenSize.horizontalBlockSize! * 7.5,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: ScreenSize.horizontalBlockSize! * 14),
        ],
      ),
    );
  }
}
