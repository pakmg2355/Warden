import 'package:flutter/material.dart';

Future<String?> showResetNameDialog(BuildContext context) async {
  final controller = TextEditingController();

  return showDialog<String?>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: const Text('Reset player'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'This will erase all progress.\n'
              'Enter the new player name:',
            ),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
              autofocus: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Player name',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, null),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              final name = controller.text.trim();
              Navigator.pop(context, name.isEmpty ? null : name);
            },
            child: const Text('Confirm'),
          ),
        ],
      );
    },
  );
}
