import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_demo/pages/obx/obx_page.dart';
import 'package:getx_demo/pages/param/param_page.dart';
import 'package:getx_demo/pages/route/route_test/route_test_page.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage'), centerTitle: true),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    child: Text('route跳轉'),
                    onPressed: () => Get.to(() => RoutePage())),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    child: Text('obs刷新'),
                    onPressed: () => Get.to(() => ObxPage())),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    child: Text('參數傳遞'),
                    onPressed: () => Get.to(() => ParamPage())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
