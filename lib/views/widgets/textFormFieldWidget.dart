import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String title;
  final String hint;
  final int? minLines;
  final int? maxLines;
  const TextFormFieldWidget(
      {Key? key,
      required this.title,
      required this.hint,
      this.minLines,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyles.cairoSize_m(context),
        ),
        Dimens.heightBoxS,
        TextFormField(
          onChanged: (value) {},
          style: TextStyles.cairoSize_m(context),
          decoration: kInputDecoration.copyWith(hintText: hint),
          minLines: minLines,
          maxLines: maxLines,
        ),
      ],
    );
  }
}
