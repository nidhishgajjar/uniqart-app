import 'package:flutter/material.dart';
import 'package:test/miscellaneous/localizations/loc.dart';
import 'package:test/utilities/dialogs/generic_dialog.dart';

Future<void> showChangePasswordDialog(BuildContext context) {
  return showGenericDialog<void>(
    context: context,
    title: context.loc.change_password,
    content: context.loc.change_password_dialog_prompt,
    optionsBuilder: () => {
      context.loc.ok: null,
    },
  );
}