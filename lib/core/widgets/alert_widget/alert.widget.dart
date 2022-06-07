import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_flutter/core/widgets/dialog_widget/dialog_widget.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({
    Key? key,
    this.title,
    this.content,
    this.actions,
  }) : super(key: key);

  final List<Widget>? actions;
  final Widget? content;
  final Widget? title;

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Theme.of(context).platform == TargetPlatform.iOS
          ? CupertinoAlertDialog(
              title: widget.title,
              content: widget.content,
              actions: widget.actions!,
            )
          : AlertDialog(
              title: widget.title,
              content: widget.content,
              actions: widget.actions!.reversed.toList(),
              shape: theme.cardTheme.shape,
            ),
    );
  }
}

Future showAlertDialog(
    {bool barrierDismissible = true,
    Function? onOk,
    required String title,
    required String message,
    String? buttonTitle}) async {
  if (Get.context == null) {
    return;
  }

  try {
    await showAdaptiveDialog(
      context: Get.context!,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return AlertDialog(
          title: title == null ? const SizedBox() : Text(title),
          content: SingleChildScrollView(
            child: Text(message),
          ),
          actions: <Widget>[
            DialogActionWidget(
              child: Text(buttonTitle ?? 'Close'),
              onPressed: () {
                if (onOk == null) {
                  Navigator.of(context).pop();
                }
                return;
              },
            )
          ],
        );
      },
    );
  } on FlutterError catch (error) {
    if (kDebugMode) {
      print(error);
    }
  }
}

// Future showAlertDialog(String title, String message, BuildContext context,
//     {bool barrierDismissible = true,
//     Function? onOk,
//     String? buttonTitle}) async {
//   if (Get.context == null) {
//     return;
//   }
//
//   try {
//     await showAdaptiveDialog(
//       context: context,
//       barrierDismissible: barrierDismissible,
//       builder: (context) {
//         return AlertDialogWidget(
//           title: title == null ? const SizedBox() : Text(title),
//           content: SingleChildScrollView(
//             child: Text(message),
//           ),
//           actions: [
//             DialogActionWidget(
//               onPressed: () {
//                 if (onOk == null) {
//                   Navigator.of(context).pop();
//                 }
//                 return;
//               },
//               child: Text(buttonTitle ?? 'Close'),
//             )
//           ],
//         );
//       },
//     );
//   } on FlutterError catch (error) {
//     if (kDebugMode) {
//       print(error);
//     }
//   }
// }
