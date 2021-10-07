import 'package:flutter/material.dart';

import '../../utils/responsive/size_config.dart';

class Dimens {
  Dimens._();

  /// SizedBox Space vertical
  // vertical
  static SizedBox widthBoxS = SizedBox(width: 1 * SizeConfig.heightMultiplier);
  static SizedBox widthBoxM = SizedBox(width: 2 * SizeConfig.heightMultiplier);
  static SizedBox widthBoxL = SizedBox(width: 3 * SizeConfig.heightMultiplier);
  static SizedBox widthBoxXL = SizedBox(width: 4 * SizeConfig.heightMultiplier);
  static SizedBox widthBoxXXL =
      SizedBox(width: 5 * SizeConfig.heightMultiplier);
  static SizedBox widthBoxXXXL =
      SizedBox(width: 6 * SizeConfig.heightMultiplier);

  // horezantale
  static SizedBox heightBoxS =
      SizedBox(height: 1 * SizeConfig.heightMultiplier);
  static SizedBox heightBoxM =
      SizedBox(height: 2 * SizeConfig.heightMultiplier);
  static SizedBox heightBoxL =
      SizedBox(height: 3 * SizeConfig.heightMultiplier);
  static SizedBox heightBoxXL =
      SizedBox(height: 4 * SizeConfig.heightMultiplier);
  static SizedBox heightBoxXXL =
      SizedBox(height: 5 * SizeConfig.heightMultiplier);
  static SizedBox heightBoxXXXL =
      SizedBox(height: 6 * SizeConfig.heightMultiplier);
  static SizedBox heightBoxXXXXL =
      SizedBox(height: 8 * SizeConfig.heightMultiplier);

  ///  Font size
  static double size_s = 1.3 * SizeConfig.textMultiplier;
  static double size_m = 1.7 * SizeConfig.textMultiplier;
  static double size_l = 1.8 * SizeConfig.textMultiplier;
  static double size_xl = 2 * SizeConfig.textMultiplier;
  static double size_xxl = 2.5 * SizeConfig.textMultiplier;
  static double size_xxxl = 3 * SizeConfig.textMultiplier;

  static double size_m1 = 1.5 * SizeConfig.textMultiplier;

  /// Padding && Margin
  static double phS = 1 * SizeConfig.heightMultiplier;
  static double phM = 2 * SizeConfig.heightMultiplier;
  static double phL = 3 * SizeConfig.heightMultiplier;
  static double phXL = 4 * SizeConfig.heightMultiplier;
  static double phXXL = 5 * SizeConfig.heightMultiplier;

  static double pwS = 1 * SizeConfig.widthMultiplier;
  static double pwM = 2 * SizeConfig.widthMultiplier;
  static double pwL = 3 * SizeConfig.widthMultiplier;
  static double pwXL = 4 * SizeConfig.widthMultiplier;
  static double pwXXL = 5 * SizeConfig.widthMultiplier;

  /// Web
  // static const double maxScreenWidth = 1232.0;
  static double maxScreenWidth = 80 * SizeConfig.heightMultiplier;
  static double minScreenWidth = 80 * SizeConfig.heightMultiplier;
}
