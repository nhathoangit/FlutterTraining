import 'package:flutter/material.dart';

import 'custom_dialog.dart';
import 'onclick_listener.dart';

class MessageDialog {
  information(BuildContext context, String title, String message,
      ConfirmListener listener) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => CustomDialog(
            title: "Success",
            message:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            buttonText: "Okay",
            listener: listener,
          ),
    );
  }
}
