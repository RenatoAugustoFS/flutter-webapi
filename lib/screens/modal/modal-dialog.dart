import 'package:flutter/material.dart';

Future<dynamic> showConfirmationDialog(BuildContext context,
    {String title = 'Alert', String content = 'Are you sure'}) {

  return showDialog(context: context, builder: (context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: const Text('Confirm', style: TextStyle(fontSize: 15))
        ),
        TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: const Text('Cancel', style: TextStyle(fontSize: 15))
        ),
      ],
    );
  });
}