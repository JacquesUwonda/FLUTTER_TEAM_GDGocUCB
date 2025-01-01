import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class Alerts {
  static void showSuccess(BuildContext context, String name) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.topSlide,
      title: 'Success',
      desc: 'You are following $name !',
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
      width: 280,
      buttonsBorderRadius: const BorderRadius.all(
        Radius.circular(2),
      ),
      dismissOnTouchOutside: true,
      dismissOnBackKeyPress: false,
      headerAnimationLoop: false,
      animType: AnimType.bottomSlide,
      title: 'ROAD TO MENTOR',
      desc:
          'This template is built by Jacques Uwonda. Tt is the first project challenge for #RoadToMentor FLUTTER TEAM | GDGocUCB, Directed by BENEDICT LUBEMBELA (Flutter team Mentor-GDGocUCB). ',
      showCloseIcon: true,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }
}
