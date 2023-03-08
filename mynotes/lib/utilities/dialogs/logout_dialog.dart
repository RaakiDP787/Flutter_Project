import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialog.dart';

Future<bool> showLogOutDialog(BuildContext context) {
  return showGenericDialog<bool>(
          context: context,
          title: 'Logout',
          Content: 'Are you sure u want to logout',
          optionsBuilder: () => {'Cancel': false, 'Log out': true})
      .then((value) => value ?? false);
}
