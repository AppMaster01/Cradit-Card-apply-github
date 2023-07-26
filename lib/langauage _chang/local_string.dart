import 'package:get/get.dart';

class LocaleString extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    //ENGLISH LANGUAGE
    'en_US':{
      'Credit Card Validator':'Credit Card Validator',
      'Credit Score':'Credit Score',
      'Apply For Credit Card':'Apply For Credit Card',
      'Introduction':'Introduction',
      'message':'Welcome to Proto Coders Point',
      'title':'Select Language',
      'sub':'Subscribe Now',
      'changelang':'Change Language'
    },
    //HINDI LANGUAGE
    'hi_IN':{
      'Credit Card Validator': 'क्रेडिट कार्ड सत्यापनकर्ता',
      'Credit Score': 'विश्वस्तता की परख',
      'Apply For Credit Card': 'क्रेडिट कार्ड के लिए आवेदन करें',
      'Introduction': 'परिचय',
      'message':'प्रोटो कोडर प्वाइंट में आपका स्वागत है',
      'title':'भाषा चुने',
      'subscribe':'सब्सक्राइब',
      'changelang':'भाषा बदलो'
    },
    //KANNADA LANGUAGE

  };

}