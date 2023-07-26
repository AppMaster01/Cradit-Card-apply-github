import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/screen/Credit_Card_Validator/model_class.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Controller_Page/Google_Ads.dart';
import '../../MEDIA_SIZE.dart';
import 'Bin_Checker.dart';

class Credit_card_history extends StatefulWidget {
  const Credit_card_history({Key? key}) : super(key: key);

  @override
  State<Credit_card_history> createState() => _Credit_card_historyState();
}

class _Credit_card_historyState extends State<Credit_card_history> {
  // late List<Data> abc;

  @override
  void initState() {
    super.initState();
    // abc = Get.arguments;
    getValue();
    namevalue.value;
    // setState(() {});
  }

  getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getname = prefs.getStringList("name");
    namevalue.value = getname!;
    var GETNAME = prefs.getStringList("NAME");
    abc.value = GETNAME!;
    print('abcd${prefs}');
    // setState(() {});
  }

  delete(int index) async {
    namevalue.removeAt(index);
    abc.value.removeAt(index);
    var prefs = await SharedPreferences.getInstance();
    // prefs.remove('name');
    prefs.setStringList("name", namevalue.value);
    prefs.setStringList("NAME", abc.value.toString() as List<String>);
    // prefs.remove("NAME");
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print('aaa${namevalue.value}');
    print('aaa${abc.value}');
    // print('aaaa${abc[0].scheme}');
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(
          context, '/Credit_card_history', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/Credit_card_history', '');
        }, 'Credit Card History', true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Obx(
                () => Column(
                  children: [
                    namevalue.value.length > 1
                        ? ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            reverse: true,
                            itemCount: namevalue.value.length,
                            itemBuilder: (BuildContext context, int index) {
                              return index != 0
                                  ? Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Container(
                                          height:
                                              ScreenSize.verticalBlockSize! *
                                                  20,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: Color(0xff0D1318),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              border: GradientBoxBorder(
                                                gradient: LinearGradient(
                                                    colors: [
                                                      Color(0xff2BEBC8),
                                                      Color(0xff123a38)
                                                    ]),
                                              )),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Image(
                                                        image: AssetImage(
                                                            'asset/image/Icons/bin cheker icon.png'),
                                                        width: ScreenSize
                                                            .fSize_50(),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        width: ScreenSize
                                                            .fSize_6()),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        controllerText.gettext(
                                                          '${namevalue.value[index]} XXXX XXXX',
                                                          GoogleFonts.poppins(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: ScreenSize
                                                                  .fSize_16(),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        SizedBox(
                                                            height: ScreenSize
                                                                .fSize_2()),
                                                        controllerText.gettext(
                                                          // abc.value[index] == null
                                                          abc.value[index],
                                                          // "l".toString(),
                                                          // 'abc',
                                                          GoogleFonts.poppins(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: ScreenSize
                                                                  .fSize_12(),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  delete(index);
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image(
                                                    image: AssetImage(
                                                        'asset/image/Icons/cancel.png'),
                                                    width:
                                                        ScreenSize.fSize_28(),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                    )
                                  : Container();
                            },
                          )
                        : Column(
                            children: [
                              SizedBox(height: ScreenSize.fSize_130()),
                              Padding(
                                padding: const EdgeInsets.all(35),
                                child: Center(
                                  child: Image(
                                      image: AssetImage(
                                          'asset/image/vector images/no date found vector.png')),
                                ),
                              ),
                              controllerText.gettext(
                                  'No Data Found',
                                  GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ScreenSize.fSize_25(),
                                      color: Color(0xff2BEBC8)))
                            ],
                          ),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
            ),
            banner.getBN('/Credit_card_history')
          ],
        ),
      ),
    );
  }
}
