import 'package:flutter/material.dart';
import 'package:vyld/core/utils/szie_utils.dart';
import 'package:vyld/widgets/custom_image_view.dart';
import 'package:vyld/widgets/custom_outlined_botton.dart';

import '../../core/utils/image_const.dart';

// ignore: must_be_immutable
class AppbarButton extends StatelessWidget {
  AppbarButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomOutlinedButton(
          width: 78.0,
          text: "Join",
          leftIcon: Container(
            margin: const EdgeInsets.only(right: 6.0),
            child: CustomImageView(
              imagePath: ImageConstant.imgUserGray900,
              height: 20.0,
              width: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
