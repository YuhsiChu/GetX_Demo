import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'param_controller.dart';

class ParamPage extends GetView<ParamController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ParamPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                child: Text('queryString傳參'),
                onPressed: () => Get.toNamed('/recieveParam?name=Alex&age=27'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                child: Text('path傳參'),
                onPressed: () => Get.toNamed('/recieveParam/6666'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                child: Text('argument傳參'),
                onPressed: () =>
                    Get.toNamed('/recieveParam', arguments: 'Hello!'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
