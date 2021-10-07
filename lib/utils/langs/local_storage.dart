import 'package:get_storage/get_storage.dart';

const String LANGUAGE_STORAGE_KEY = 'lang';
const String MODE_STORAGE_KEY = 'mode';
const String LANGUAGE = 'LANGUAGE';
const String LOCATION = 'LOCATION';

class LocalStorage {
  /// Write
  void saveLanguageToDisk(String? language) async {
    await GetStorage().write(LANGUAGE_STORAGE_KEY, language);
  }

  /// Read
  Future<String> get languageSelected async {
    return await GetStorage().read(LANGUAGE_STORAGE_KEY) ?? 'ar';
  }

  /// Write
  set language(String? language) {
    GetStorage().write(LANGUAGE, language);
  }

  /// Read
  String get language {
    return GetStorage().read(LANGUAGE) ?? 'ar';
  }

  /// Write
  void saveModeToDisk(bool mode) async {
    await GetStorage().write(MODE_STORAGE_KEY, mode);
  }

  /// Read
  Future<bool> get modeSelected async {
    return await GetStorage().read(MODE_STORAGE_KEY) ?? true;
  }

  // bool get isDarkMode {
  //   return GetStorage().read(MODE_STORAGE_KEY) ?? false;
  // }
}
