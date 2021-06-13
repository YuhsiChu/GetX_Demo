import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_demo/pages/route/test/test_page.dart';

import 'route_test_controller.dart';

class RoutePage extends GetView<RouteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RouteTestPage'), centerTitle: true),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    child: Text('TestPage (使用Get.to())'),
                    onPressed: () => Get.to(() => TestPage())),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    child: Text('TestPage (使用Get.off())'),
                    onPressed: () => Get.off(TestPage())),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    child: Text('TestPage (使用Get.toNamed())'),
                    onPressed: () => Get.toNamed('/test')),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    child: Text('TestPage (使用Get.offNamed())'),
                    onPressed: () => Get.offNamed('/test')),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    child: Text('ErrorPage'),
                    onPressed: () => Get.toNamed('/gg')), // 故意給不存在的路徑
              ),
            ],
          ),
        ),
      ),
    );
  }
}
