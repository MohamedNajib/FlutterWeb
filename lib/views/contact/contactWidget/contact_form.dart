import 'package:flutter/material.dart';
import 'package:flutter_web/utils/utils.dart';
import 'package:flutter_web/views/widgets/textFormFieldWidget.dart';
import 'package:get/get.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormFieldWidget(
                  title: Strings.Name.tr,
                  hint: Strings.YourName.tr,
                ),
              ),
              Dimens.widthBoxL,
              Expanded(
                child: TextFormFieldWidget(
                  title: Strings.Email.tr,
                  hint: Strings.EnterYourEmail.tr,
                ),
              ),
            ],
          ),
          Dimens.heightBoxM,
          TextFormFieldWidget(
            title: Strings.Message.tr,
            hint: '',
            maxLines: 5,
            minLines: 3,
          ),
          Dimens.heightBoxM,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.yloColor, width: 1),
            ),
            child: MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
              child: Text(
                Strings.SubmitNow.tr,
                style: TextStyles.cairoSize_m(context)
                    .copyWith(color: AppColors.yloColor),
              ),
            ),
          ).moveUpOnHover,
        ],
      ),
    );
  }
}
