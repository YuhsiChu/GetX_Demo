import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import 'test_controller.dart';

class TestPage extends GetView<TestController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TestPage'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  child: Text('使用 Get.back()'), onPressed: () => Get.back()),
            )
          ],
        ),
      ),
    );
  }
}
