import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'utils/binding.dart';
import 'utils/langs/translation.dart';
import 'views/homePage/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle(
  //     statusBarColor: AppColors.primaryColor,
  //   ),
  // );
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  ).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      translations: Translation(),
      locale: Locale(LocalStorage().language),
      fallbackLocale: Locale('ar'),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: AppTheme.appTheme,
      home: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
          SizeConfig().init(constraints, orientation);
          //print('?????????????????${MediaQuery.of(context).size.width}');
          return HomePage();
        });
      }),
    );
  }
}
