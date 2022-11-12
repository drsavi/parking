import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:parking/app/controllers/parking_spot_controller.dart';

class ControllerBinding implements Bindings  {
  @override
  void dependencies(){
    Get.lazyPut<ParkingSpotController>(() => ParkingSpotController());
  }

}