import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/home/home_page.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!FocusScope.of(context).hasPrimaryFocus) {
          FocusScope.of(context).unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('LoginPage'),
          centerTitle: true,
        ),
        body: Obx(
          () => Center(
              child: SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text('帳號  '),
                    Expanded(
                      child: TextField(
                        controller: controller.userIdController(),
                        focusNode: controller.userIdFocusNode,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('密碼  '),
                    Expanded(
                      child: TextField(
                        controller: controller.passwordController(),
                        focusNode: controller.passwordFocusNode,
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: ElevatedButton(
                    child: Text('登入'),
                    onPressed: () => Get.offAll(() => HomePage()),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
