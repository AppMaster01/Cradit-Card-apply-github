import 'dart:convert';
import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/Controller_Page/Google_Ads.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../Controller_Page/Button_controller/Main_Controller.dart';
import '../../MEDIA_SIZE.dart';
import '../../widget_page/widget.dart';
import 'model_class.dart';

Data? ddd;
RxList<String> namevalue = ['XXXX XXXX'].obs;
RxList<String> abc = [''].obs;

class Bin_Checker extends StatefulWidget {
  const Bin_Checker({Key? key}) : super(key: key);

  @override
  State<Bin_Checker> createState() => _Bin_CheckerState();
}

class _Bin_CheckerState extends State<Bin_Checker> {
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();
  static const String KEYNAME = "name";
  final ACnum = TextEditingController();
  final List<Data> notes = <Data>[];
  var Notes = <Data>[];
  var aaaaaaaaa;

  Future<List<Data>> fetchUsers() async {
    var url = "https://lookup.binlist.net/${ACnum.text.replaceAll(" ", "")}";
    var response = await http.get(Uri.parse(url));
    aaaaaaaaa = response.statusCode;
    print('GHFH${aaaaaaaaa}');
    if (response.statusCode == 200) {
      var notesjson = json.decode(response.body);
      Notes.add(Data.fromJson(notesjson));
      abc.value.add(Notes[0].scheme.toString());
    } else {
      print('DATA NOT FOUND');
    }
    return Notes;
  }

  List<Data> data = [];

  @override
  Widget build(BuildContext context) {
    // print('objecttttt${notes}');
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(
              context, '/Bin_Checker', abc.value),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() async {
          // fetchUsers();
          // List<Data> abc = await fetchUsers();
          // String? bbbb = abc[0].scheme;
          backbuttoncontroller.showBackbuttonad(
              context, '/Bin_Checker', abc.value);
          // controller.showbuttonad(
          //     context, '/Credit_Card_Validator', '/Bin_Checker', abc);
        }, 'Check Credit Card(BIN)', true),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Image(
                            image:
                            AssetImage('asset/image/Icons/Group 83.png')),
                        Padding(
                          padding: EdgeInsets.only(
                              top: ScreenSize.horizontalBlockSize! * 37.5,
                              left: ScreenSize.horizontalBlockSize! * 13),
                          child: TextField(
                              controller: ACnum,
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                CardNumberFormatter(),
                              ],
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.white,
                              maxLength: 15,
                              decoration:
                              InputDecoration.collapsed(hintText: '')),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_70()),
                  Bounceable(
                    onTap: () async {
                      if (ACnum.text.isEmpty) {
                        Fluttertoast.showToast(
                          msg: "𝗣𝗟𝗘𝗔𝗦𝗘 𝗘𝗡𝗧𝗘𝗥 𝗡𝗨𝗠𝗕𝗘𝗥",
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 3,
                          textColor: Colors.white,
                          gravity: ToastGravity.SNACKBAR,
                          backgroundColor: Colors.red,
                        );
                      } else {
                        fetchUsers().then((value) async {
                          if (aaaaaaaaa != 200) {
                            Fluttertoast.showToast(
                              msg: "𝐈𝐍𝐕𝐀𝐋𝐈𝐃 𝐍𝐔𝐌𝐁𝐄𝐑",
                              toastLength: Toast.LENGTH_SHORT,
                              textColor: Colors.white,
                              fontSize: ScreenSize.fSize_15(),
                              gravity: ToastGravity.SNACKBAR,
                              backgroundColor: Colors.red,
                            );
                            print('200${aaaaaaaaa}');
                          } else {
                            print('DDDD${abc.value}');
                            controller.showbuttonad(
                                context,
                                '/Card_Valid_screen',
                                '/Bin_Checker',
                                [namevalue.value, abc.value]);
                            var prefs = await SharedPreferences.getInstance();
                            prefs.setStringList(KEYNAME, namevalue.value);
                            var getname = prefs.getStringList(KEYNAME);
                            namevalue.value = getname!;
                            namevalue.value.add(ACnum.text.toString());
                            var GETNAME = prefs.getStringList("NAME");
                            abc.value = GETNAME!;
                          }
                        });
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                          image: AssetImage(
                              'asset/image/Icons/Credit Card Image.png')),
                    ),
                  ),
                ],
              ),
            ),
            banner.getBN('/Bin_Checker')
          ],
        ),
      ),
    );
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue previousValue,
      TextEditingValue nextValue,) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write('         ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
