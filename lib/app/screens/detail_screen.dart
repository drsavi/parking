import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../components/menu_components.dart';
import '../controllers/parking_spot_controller.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DetailScreen> createState() => _MyDetailScreenState();
}

class _MyDetailScreenState extends State<DetailScreen> {
  int _counter = 0;
  var controller = ParkingSpotController.parkingSpotController;

  @override
  void initState() {
    super.initState();
    print(controller.listParkingSpot());
    // controller.listCurrecies();
  }
  void _incrementCounter() {
    setState(() {

      _counter  ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),

        drawer:
        MenuComponent(context),

        body:
        Obx(() =>
        controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            :
        Container(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: controller.listParkingSpotObs.length,
              itemBuilder: (BuildContext context, int index) {
                return
                  Card(
                    child:
                    Column(
                      children: [
                        // Text(
                        //     controller.listParkingSpotObs[index].id
                        // ),
                        Text(
                            controller.listParkingSpotObs[index].responsibleName
                        ),
                        Text(
                            controller.listParkingSpotObs[index].parkingSpotNumber
                        ),
                        Text(
                            controller.listParkingSpotObs[index].licensePlateCar
                        ),
                        Text(
                            controller.listParkingSpotObs[index].brandCar
                        ),
                        Text(
                            controller.listParkingSpotObs[index].modelCar
                        ),
                        Text(
                            controller.listParkingSpotObs[index].colorCar
                        ),
                        Text(
                            controller.listParkingSpotObs[index].registrationDate
                        ),
                        Text(
                            controller.listParkingSpotObs[index].responsibleName
                        ),
                        Text(
                            controller.listParkingSpotObs[index].apartment
                        ),
                        Text(
                            controller.listParkingSpotObs[index].block
                        ),
                      ],
                    )

                  );
              }),
        )
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}