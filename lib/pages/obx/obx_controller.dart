import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class ObxController extends GetxController {
  var count = 0.obs;

  void add() {
    count++;
  }
}
