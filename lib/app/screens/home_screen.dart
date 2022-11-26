import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/menu_components.dart';
import '../controllers/parking_spot_controller.dart';
import 'edit_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                          ListTile(
                            title: Text(controller.listParkingSpotObs[index].responsibleName),
                            trailing: Wrap(
                              spacing: 12, // space between two icons
                              children: <Widget>[
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  color: Colors.deepOrangeAccent,
                                  onPressed: () {
                                    Get.to(const EditScreen(title: "EDIT"));
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  color: Colors.red,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                  );
              }),
        )
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}