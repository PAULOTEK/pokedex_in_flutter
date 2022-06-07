import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_flutter/core/widgets/dialog_widget/dialog_widget.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    Key? key,
    this.size = 20,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return theme.platform == TargetPlatform.iOS
        ? CupertinoActivityIndicator(
            radius: size / 2,
          )
        : Center(
            child: SizedBox(
              width: size,
              height: size,
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
              ),
            ),
          );
  }
}

Future showLoadingIndicator(BuildContext context) async {
  showAdaptiveDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) {
      return WillPopScope(
        onWillPop: () => Future.value(false),
        child: const Center(
          child: IndicatorWidget(),
        ),
      );
    },
  );
}
