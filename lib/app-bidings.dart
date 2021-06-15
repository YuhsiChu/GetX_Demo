import 'package:get/instance_manager.dart';

import 'pages/home/home_controller.dart';
import 'pages/login/login_controller.dart';
import 'pages/obx/obx_controller.dart';
import 'pages/param/param_controller.dart';
import 'pages/route/error/error_controller.dart';
import 'pages/route/route_test/route_test_controller.dart';
import 'pages/route/test/test_controller.dart';

class AppBidings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => RouteController);
    Get.lazyPut(() => TestController());
    Get.lazyPut(() => ErrorController);
    Get.lazyPut(() => ObxController());
    Get.lazyPut(() => ParamController());
  }
}
