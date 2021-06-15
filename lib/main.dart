import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app-bidings.dart';

import 'pages/home/home_controller.dart';
import 'pages/login/login_controller.dart';
import 'pages/login/login_page.dart';
import 'pages/obx/obx_controller.dart';
import 'pages/param/param_controller.dart';
import 'pages/param/recieve_param_page.dart';
import 'pages/route/error/error_controller.dart';
import 'pages/route/error/error_page.dart';
import 'pages/route/route_test/route_test_controller.dart';
import 'pages/route/test/test_controller.dart';
import 'pages/route/test/test_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TestGetX', // App 名稱
      debugShowCheckedModeBanner: false, // 關閉 debug banner
      defaultTransition: Transition.fade, // 轉場特效 (如果想全部畫面一樣在用)
      initialRoute: '/', // 初始畫面的路由
      initialBinding: AppBidings(),
      unknownRoute:
          GetPage(name: '/errorpage', page: () => ErrorPage()), // 找不到頁面時的路由
      routingCallback: (routing) {
        if (routing!.current != '/') {
          print('routingCallback');
        }
      },
      getPages: [
        // App 各個頁面的路由
        GetPage(name: '/', page: () => MyApp()),
        GetPage(
            name: '/test',
            page: () => TestPage(),
            transition:
                Transition.rightToLeft), // 個別轉場特效 (會被 defaultTransition 蓋過！)
        GetPage(name: '/recieveParam', page: () => RecieveParamPage()),
        GetPage(
            name: '/recieveParam/:something', page: () => RecieveParamPage()),
      ],
      home: LoginPage(),
    );
  }
}
