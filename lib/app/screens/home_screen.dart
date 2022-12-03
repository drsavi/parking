import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/menu_components.dart';
import '../controllers/parking_spot_controller.dart';
import 'detail_screen.dart';
import 'edit_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var controller = ParkingSpotController.parkingSpotController;

  @override
  void initState() {
    super.initState();
    controller.listParkingSpot();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: MenuComponent(context),
        body: Obx(() => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Container(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: controller.listParkingSpotObs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          child: Column(
                        children: [
                          ListTile(
                            title: Text(controller
                                .listParkingSpotObs[index].responsibleName),
                            trailing: Wrap(
                              spacing: 12,
                              children: <Widget>[
                                IconButton(
                                  icon: const Icon(Icons.remove_red_eye),
                                  color: Colors.lightBlue,
                                  onPressed: () {
                                    Get.to(DetailScreen(
                                      objeto:
                                      controller.listParkingSpotObs[index],
                                      title: 'Detalhes',
                                    ));
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  color: Colors.deepOrangeAccent,
                                  onPressed: () {
                                    Get.to(EditScreen(
                                      objeto:
                                          controller.listParkingSpotObs[index],
                                      title: 'Editar',
                                    ));
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  color: Colors.red,
                                  onPressed: () async {
                                    var retorno = await controller.delete(controller
                                        .listParkingSpotObs[index].id);

                                    if (retorno != false) {
                                      Get.snackbar(
                                        "Sucesso",
                                        "Deletado com Sucesso",
                                        icon: Icon(Icons.check,
                                            color: Colors.white),
                                        snackPosition: SnackPosition.BOTTOM,
                                        backgroundColor: Colors.lightGreen,
                                        colorText: Colors.white,
                                      );
                                      controller.listParkingSpot();
                                    } else {
                                      Get.snackbar("Houve um erro",
                                          "O registro não foi deletado",
                                          icon: Icon(Icons.error,
                                              color: Colors.white),
                                          snackPosition: SnackPosition.BOTTOM,
                                          backgroundColor: Colors.redAccent,
                                          borderColor: Colors.black,
                                          colorText: Colors.white);
                                    }
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ));
                    }),
              )) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
