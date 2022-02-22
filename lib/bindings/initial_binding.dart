import 'package:flutter_application/utils/services/storage.service.dart';
import 'package:get/get.dart';


class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(const StorageService());
  }
}
