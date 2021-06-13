import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final userIdController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final userIdFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  @override
  void onInit() {
    userIdController().text = '';
    passwordController().text = '';
    super.onInit();
  }
}
