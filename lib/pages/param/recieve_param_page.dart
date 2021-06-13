import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'recieve_param_controller.dart';

class RecieveParamPage extends GetView<RecieveParamController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RecieveParamPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                'name: ${Get.parameters['name']} , age: ${Get.parameters['age']}',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text('something: ${Get.parameters['something']}',
                  style: TextStyle(fontSize: 20)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text('arguments: ${Get.arguments}',
                  style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
