import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dart_exercice/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Alerts {
  static void showSuccess(BuildContext context, String name) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.topSlide,
      borderSide: const BorderSide(
        color: AppColors.successColor,
        width: 2,
      ),
      title: 'Success',
      desc: 'You are following $name !',
      headerAnimationLoop: false,
      btnOkOnPress: () {},
    ).show();
  }

  static void showInfo(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.info,
      borderSide: const BorderSide(
        color: Colors.green,
        width: 2,
      ),
      width: 330,
      buttonsBorderRadius: const BorderRadius.all(
        Radius.circular(2),
      ),
      dismissOnTouchOutside: true,
      dismissOnBackKeyPress: false,
      headerAnimationLoop: false,
      animType: AnimType.bottomSlide,
      title: 'ROAD TO MENTOR',
      desc:
          'This template is built by Jacques Uwonda. It is the first project challenge for #RoadToMentor FLUTTER TEAM | GDGocUCB, Directed by BENEDICT LUBEMBELA (Flutter team Mentor-GDGocUCB). ',
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }
}
