// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:cradit_card_apply/Controller_Page/Button_controller/Back_Butoon_controller.dart';
import 'package:cradit_card_apply/widget_page/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../MEDIA_SIZE.dart';

class In_App_Browser extends StatefulWidget {
  const In_App_Browser({Key? key}) : super(key: key);

  @override
  State<In_App_Browser> createState() => _In_App_BrowserState();
}

class _In_App_BrowserState extends State<In_App_Browser> {
  var _process = 0.0.obs;
  late InAppWebViewController webView;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/In_App_Browser', ''),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: controllerapp.getbar(() {
          backbuttoncontroller.showBackbuttonad(context, '/In_App_Browser', '');
        }, 'Youtube', true),
        body: Obx(
          () => Stack(
            children: [
              InAppWebView(
                initialUrlRequest: URLRequest(url: Uri.parse('youtube.com')),
                onWebViewCreated: (InAppWebViewController controller) {
                  webView = controller;
                },
                onProgressChanged:
                    (InAppWebViewController controller, int process) {
                  _process.value = (process / 100);
                },
              ),
              _process.value < 1
                  ? Center(
                      child: Container(
                        height: ScreenSize.fSize_100(),
                        width: ScreenSize.fSize_100(),
                        child: Column(
                          children: [
                            Container(
                              height: ScreenSize.fSize_40(),
                              width: ScreenSize.fSize_40(),
                              child: CircularProgressIndicator(
                                strokeWidth: ScreenSize.fSize_4(),
                                value: _process.value,
                              ),
                            ),
                            SizedBox(
                              height: ScreenSize.fSize_10(),
                            ),
                            Text('Loading...',
                                style:
                                    TextStyle(fontSize: ScreenSize.fSize_18())),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
