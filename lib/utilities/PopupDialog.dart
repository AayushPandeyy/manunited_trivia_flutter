import 'package:flutter/material.dart';

Future<void> displayAlert(BuildContext context, String message) {
  return showDialog<String>(
      context: context,
      builder: ((context) => AlertDialog(
            title: Text(message),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Next Question"))
            ],
          )));
}
