import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void getExitDialog() {
  Get.defaultDialog(
    title: 'Exit',
    content: const Text('Are you sure you want to exit?'),
    confirm: ElevatedButton(
      child: const Text('Yes'),
      onPressed: () {
        exit(0);
      },
    ),
    cancel: ElevatedButton(
      child: const Text('No'),
      onPressed: () {
        Get.back();
      },
    ),
  );
}

void getProgressDialog() {
  Get.defaultDialog(
    title: 'Please Wait',
    content: const Center(
      child: CircularProgressIndicator(),
    ),
  );
}

void sendingOTPDialog() {
  Get.defaultDialog(
    title: 'Sending Code...',
    content: const Center(
      child: CircularProgressIndicator(),
    ),
  );
}

void getSimpleDialog(String title, String content,
    {Function()? onPressed, bool barrierDismissible = true}) {
  Get.defaultDialog(
      barrierDismissible: barrierDismissible,
      titlePadding: const EdgeInsets.only(top: 16),
      title: title,
      content: Text(content, textAlign: TextAlign.center),
      actions: [
        ElevatedButton(
          child: const Text('Okay'),
          onPressed: onPressed ??
                  () {
                Get.back();
              },
        )
      ]);
}
