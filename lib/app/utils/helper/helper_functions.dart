import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HelperFunctions {
  static void showSuccess(String message) {
    Get.snackbar(
      'Success',
      message,
      backgroundColor: Colors.green.shade100,
    );
  }

  static void showError({required String message}) {
    Get.snackbar(
      'Error',
      message,
      backgroundColor: Colors.red.shade50,
    );
  }

  static void customDialog({
    required String title,
    required String message,
    String? sub,
    required void Function()? onPressed,
  }) {
    Get.dialog(
      AlertDialog(
        alignment: Alignment.center,
        title: Center(
          child: Text(title),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SelectableText(message),
            const SizedBox(height: 10),
            SelectableText(sub ?? ''),
          ],
        ),
        actions: <Widget>[
          Center(
            child: TextButton(
              onPressed: onPressed,
              child: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }

  static String countryCodeToEmoji(String countryCode) {
    final int firstLetter =
        countryCode.toUpperCase().codeUnitAt(0) - 0x41 + 0x1F1E6;
    final int secondLetter =
        countryCode.toUpperCase().codeUnitAt(1) - 0x41 + 0x1F1E6;
    return String.fromCharCode(firstLetter) + String.fromCharCode(secondLetter);
  }

  static Future<void> launchUrl(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      // Handle the case where the URL can't be launched
      debugPrint('Error launching URL: $url');
    }
  }
}
