import 'package:flutter/material.dart';
import 'package:vpn/common/mytext.dart';

SnackBar mySnackBar(String content) { 
  return
  SnackBar(
    backgroundColor: Colors.blue,
    duration: const Duration(milliseconds: 1000),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    content: Text(
      content,
      style: bodyStyle.copyWith(color: Colors.white),
      textAlign: TextAlign.center,
    ));
}