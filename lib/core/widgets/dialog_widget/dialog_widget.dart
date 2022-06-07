import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogActionWidget extends StatelessWidget {
  const DialogActionWidget({
    Key? key,
    required this.child,
    this.isDefaultAction = false,
    this.isDestructiveAction = false,
    required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final bool? isDefaultAction;
  final bool? isDestructiveAction;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return theme.platform == TargetPlatform.iOS
        ? CupertinoDialogAction(
            onPressed: onPressed,
            isDestructiveAction: isDestructiveAction!,
            isDefaultAction: isDefaultAction!,
            child: child,
          )
        : FlatButton(
            textColor: isDestructiveAction!
                ? theme.colorScheme.error
                : theme.buttonColor,
            shape: theme.buttonTheme.shape,
            onPressed: onPressed,
            child: child,
          );
  }
}

Future<T?> showAdaptiveDialog<T>({
  required BuildContext context,
  bool barrierDismissible = true,
  required WidgetBuilder builder,
}) {
  return Theme.of(context).platform == TargetPlatform.iOS
      ? showCupertinoDialog<T>(
          context: context,
          builder: builder,
        )
      : showDialog<T>(
          context: context,
          barrierDismissible: barrierDismissible,
          builder: builder,
        );
}

Future<T?> showAdaptiveSimpleDialog<T>({
  required BuildContext context,
  bool barrierDismissible = true,
  required WidgetBuilder builder,
}) {
  return Theme.of(context).platform == TargetPlatform.iOS
      ? showCupertinoModalPopup<T>(
          context: context,
          builder: builder,
        )
      : showDialog<T>(
          context: context,
          barrierDismissible: barrierDismissible,
          builder: builder,
        );
}
