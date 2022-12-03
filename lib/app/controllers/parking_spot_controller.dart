import 'package:get/get.dart';
import 'package:parking/app/models/parking_spot_model.dart';

import '../services/parking_spot_service.dart';

class ParkingSpotController extends GetxController {
  ParkingSpotService parkingSpotService = ParkingSpotService();
  var isLoading = false.obs;
  var listParkingSpotObs = <ParkingSpotModel>[].obs;
  var parkingSpotObs = ParkingSpotModel;

  static ParkingSpotController get parkingSpotController => Get.find();

  Future<dynamic> listParkingSpot()  async {
    isLoading.value = true;
    var list = await parkingSpotService.fetchListParkingSpot();
    listParkingSpotObs.value = list.listParkingSpotModel;
    isLoading.value = false;
    update();
    return listParkingSpotObs;
  }

  Future<dynamic> post(ParkingSpotModel objeto)  async {
    isLoading.value = true;
    var list = await parkingSpotService.fetchPostGarage(objeto);
    isLoading.value = false;
    update();
    return list;
  }

  Future<dynamic> edit(ParkingSpotModel objeto)  async {
    isLoading.value = true;
    var list = await parkingSpotService.fetchPostGarageEdit(objeto);
    isLoading.value = false;
    update();
    return list;
  }

  Future<dynamic> delete(String id)  async {
    isLoading.value = true;
    var list = await parkingSpotService.fetchGarageDelete(id);
    isLoading.value = false;
    update();
    return list;
  }


}