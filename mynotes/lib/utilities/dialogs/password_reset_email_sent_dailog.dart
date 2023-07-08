import 'package:flutter/widgets.dart';
import 'package:mynotes/utilities/dialogs/generic_dialog.dart';

Future<void> showPasswordResetSentDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Password Reset',
    Content: 'We have sent password rest email, Please check',
    optionsBuilder: () => {'OK': null},
  );
}
