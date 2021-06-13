import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'obx_controller.dart';

class ObxPage extends GetView<ObxController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ObxPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<ObxController>(
              builder: (controller) => Text(controller.count().toString(),
                  style: TextStyle(fontSize: 25)),
            ),
            ElevatedButton(
              child: Text(
                '輕輕點我',
                style: TextStyle(fontSize: 15),
              ),
              onPressed: () => controller.add(),
            )
          ],
        ),
      ),
    );
  }
}
