import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'error_controller.dart';

class ErrorPage extends GetView<ErrorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ErrorPage'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  child: Text('使用 Ｇet.back()'), onPressed: () => Get.back()),
            )
          ],
        ),
      ),
    );
  }
}
