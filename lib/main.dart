// ignore_for_file: non_constant_identifier_names, equal_keys_in_map, constant_identifier_names
import 'package:cradit_card_apply/Home.dart';
import 'package:cradit_card_apply/logo.dart';
import 'package:cradit_card_apply/screen/Apply_Credit_card/Apply_Credit_Card3.dart';
import 'package:cradit_card_apply/screen/Apply_Credit_card/Apply_Credit_Card4.dart';
import 'package:cradit_card_apply/screen/Apply_Credit_card/Apply_Credit_Card5.dart';
import 'package:cradit_card_apply/screen/Apply_Credit_card/Apply_Credit_card1.dart';
import 'package:cradit_card_apply/screen/Apply_Credit_card/Apply_Credit_card2.dart';
import 'package:cradit_card_apply/screen/Credit_Card_Validator/Bin_Checker.dart';
import 'package:cradit_card_apply/screen/Credit_Card_Validator/Card_Valid_screen.dart';
import 'package:cradit_card_apply/screen/Credit_Card_Validator/Credit_Card_Information.dart';
import 'package:cradit_card_apply/screen/Credit_Card_Validator/Credit_Card_Validator.dart';
import 'package:cradit_card_apply/screen/Credit_Card_Validator/Credit_card_history.dart';
import 'package:cradit_card_apply/screen/introduction/Information_1.dart';
import 'package:cradit_card_apply/Select_credit_card_type.dart';
import 'package:cradit_card_apply/screen/Credit_Card_Validator/Validate_credit_card.dart';
import 'package:cradit_card_apply/screen/Credit_Score/Credit_Score.dart';
import 'package:cradit_card_apply/screen/Credit_Score/Credit_score_Offline/Credit_score_offline.dart';
import 'package:cradit_card_apply/screen/Credit_Score/Credit_score_Offline/Credit_score_offline_1.dart';
import 'package:cradit_card_apply/screen/Credit_Score/Credit_score_Offline/Credit_score_offline_2.dart';
import 'package:cradit_card_apply/screen/Credit_Score/Credit_score_Offline/Credit_score_offline_3.dart';
import 'package:cradit_card_apply/screen/Credit_Score/Credit_score_Offline/Credit_score_offline_4.dart';
import 'package:cradit_card_apply/screen/Credit_Score/Credit_score_online/Credit_score_online.dart';
import 'package:cradit_card_apply/screen/Credit_Score/Credit_score_online/Credit_score_online_2.dart';
import 'package:cradit_card_apply/screen/Credit_Score/Credit_score_online/online_faqs.dart';
import 'package:cradit_card_apply/select_language%20_Screen.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'Controller_Page/My_Controller.dart';

import 'in_app_web_view/view.dart';
import 'langauage _chang/local_string.dart';

MyAppController myAppController = Get.put(MyAppController());

final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
RxMap Cradit = {}.obs;

Future initConfig() async {
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 1),
    minimumFetchInterval: const Duration(seconds: 10),
  ));
  await remoteConfig.fetchAndActivate();
}

AppOpenAd? appOpenAd;

loadAd() {
  AppOpenAd.load(
    adUnitId: Cradit.value['APPOPEN'],
    orientation: AppOpenAd.orientationPortrait,
    request: const AdManagerAdRequest(),
    adLoadCallback: AppOpenAdLoadCallback(
      onAdLoaded: (ad) {
        appOpenAd = ad;
        // isLoaded=true;
        ad.show();
      },
      onAdFailedToLoad: (error) {},
    ),
  );
}

AndroidNotificationChannel channel = const AndroidNotificationChannel(
    "Hello ", "Rohan",
    playSound: true, importance: Importance.high);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  tz.initializeTimeZones();
  MobileAds.instance.initialize();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  initConfig().whenComplete(() {
    Cradit.value = json.decode(remoteConfig.getString('CraditAds'));
    loadAd();
  });

  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterLocalization _localization = FlutterLocalization.instance;

  @override
  void initState() {
    _localization.init(
      mapLocales: [
        const MapLocale('en', AppLocale.EN),
        const MapLocale('hi', AppLocale.hi),
      ],
      initLanguageCode: 'en',
    );
    _localization.onTranslatedLanguage = _onTranslatedLanguage;
    super.initState();
  }

  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocaleString(),
      locale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      supportedLocales: _localization.supportedLocales,
      localizationsDelegates: _localization.localizationsDelegates,
      initialRoute: '/',
      routes: {
          '/': (context) => const Logo(),
        '/Home_Screen': (context) => Home_Screen(),
        '/In_App_Browser': (context) => const In_App_Browser(),
        '/Language': (context) => const Language(),
        '/Select_credit_card_type': (context) =>
            const Select_credit_card_type(),
        '/Credit_Card_Validator': (context) => const Credit_Card_Validator(),
        '/Credit_Card_Information': (context) =>
            const Credit_Card_Information(),
        '/Apply_Credit_card1': (context) => const Apply_Credit_card1(),
        '/Apply_Credit_card2': (context) => const Apply_Credit_card2(),
        '/Apply_Credit_Card3': (context) => const Apply_Credit_Card3(),
        '/Apply_Credit_Card4': (context) => const Apply_Credit_Card4(),
        '/Apply_Credit_Card5': (context) => const Apply_Credit_Card5(),
        '/Credit_Score': (context) => const Credit_Score(),
        '/Credit_score_offline_1': (context) => const Credit_score_offline_1(),
        '/Credit_score_offline_2': (context) => const Credit_score_offline_2(),
        '/Credit_score_offline_3': (context) => const Credit_score_offline_3(),
        '/Credit_score_offline_4': (context) => const Credit_score_offline_4(),
        '/Credit_score_offline': (context) => const Credit_score_offline(),
        '/Credit_score_online_1': (context) => const Credit_score_online_1(),
        '/Credit_score_online_2': (context) => const Credit_score_online_2(),
        '/online_faqs': (context) => const online_faqs(),
        '/Information_1': (context) => const Information_1(),
        '/Credit_card_history': (context) => const Credit_card_history(),
        '/Bin_Checker': (context) => const Bin_Checker(),
        '/Card_Valid_screen': (context) => const Card_Valid_screen(),
        '/Validate_credit_card': (context) => const Validate_credit_card(),
      },
      // home: LocalStorageData(),
    );
  }
}

mixin AppLocale {
  static const String title = 'title';
  static const Map<String, dynamic> EN = {title: 'abc'};
  static const Map<String, dynamic> hi = {title: 'Hindi'};
}
