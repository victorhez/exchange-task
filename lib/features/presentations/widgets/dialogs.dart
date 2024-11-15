import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class CustomDialogs {


  static Future<T?> showBottomSheet<T>(BuildContext context, Widget child,
      {Color? barrierColor}) {
    return showModalBottomSheet<T>(
        backgroundColor: Colors.transparent,
        context: context,
        barrierColor: barrierColor ?? Color(0xFF0E0E0E),
        useRootNavigator: true,
        isScrollControlled: true,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: child,
          );
        });
  }



  static void showCustomDialog(Widget child, BuildContext context,
      {String title = 'loading...',
        VoidCallback? onYes,
        bool? useRootNavigator = false,
        bool? barrierDismissible = true}) async {
    final dialog = Dialog(
      backgroundColor: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(borderRadius: BorderRadius.circular(20), child: child),
    );

    await showDialog(
      context: context,
      useRootNavigator: useRootNavigator!,
      builder: (BuildContext context) => dialog,
      barrierDismissible: barrierDismissible!,
      barrierColor: Colors.black.withOpacity(0.2),
    );
  }






}

