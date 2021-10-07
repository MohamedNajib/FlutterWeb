import 'package:get/get.dart';

import 'langs_file/ar.dart';
import 'langs_file/en.dart';

class Translation extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en': en,
    'ar': ar,
  };

}