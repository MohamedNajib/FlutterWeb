import 'package:flutter/material.dart';

import 'utils.dart';

const kInputDecoration = InputDecoration(
  isDense: true,
  hintText: "Enter Your Name",
  hintStyle: TextStyle(color: AppColors.borderColor),
  filled: true,
  fillColor: AppColors.darkModeScaffoldColor,
  contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
  border: kOutlineInputBorder,
  focusedBorder: kOutlineInputBorder,
  disabledBorder: kOutlineInputBorder,
  enabledBorder: kOutlineInputBorder,
  errorBorder: kOutlineInputBorder,
  focusedErrorBorder: kOutlineInputBorder,
);

const kOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10.0),
  ),
  borderSide: BorderSide(
    color: AppColors.borderColor,
    width: 1,
    style: BorderStyle.solid,
  ),
);
