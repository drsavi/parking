import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../components/menu_components.dart';
import '../controllers/parking_spot_controller.dart';
import '../models/parking_spot_model.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.title, required this.objeto}) : super(key: key);

  final String title;
  final ParkingSpotModel objeto;

  @override
  State<DetailScreen> createState() => _MyDetailScreenState();
}

class _MyDetailScreenState extends State<DetailScreen> {
  var controller = ParkingSpotController.parkingSpotController;

  final _parkingSpotNumber = TextEditingController();
  final _licensePlateCar = TextEditingController();
  final _brandCar = TextEditingController();
  final _modelCar = TextEditingController();
  final _colorCar = TextEditingController();
  final _responsibleName = TextEditingController();
  final _apartment = TextEditingController();
  final _block = TextEditingController();

  @override
  void initState() {
    super.initState();

    _parkingSpotNumber.text = widget.objeto.parkingSpotNumber;
    _licensePlateCar.text = widget.objeto.licensePlateCar;
    _brandCar.text = widget.objeto.brandCar;
    _modelCar.text = widget.objeto.modelCar;
    _colorCar.text = widget.objeto.colorCar;
    _responsibleName.text = widget.objeto.responsibleName;
    _apartment.text = widget.objeto.apartment;
    _block.text = widget.objeto.block;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title, textAlign: TextAlign.center)),
      drawer: MenuComponent(context),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Número da vaga',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.objeto.parkingSpotNumber,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),

              const Text(
                'Placa do veículo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.objeto.licensePlateCar,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),


              const Text(
                'Marca do veículo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.objeto.brandCar,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),


              const Text(
                'Modelo do veículo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.objeto.modelCar,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),


              const Text(
                'Cor do veículo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.objeto.colorCar,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),


              const Text(
                'Proprietário do veículo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.objeto.responsibleName,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),


              const Text(
                'Apartamento',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.objeto.apartment,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),


              const Text(
                'Bloco',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.objeto.block,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),

            ]),
      ),
    );
  }
}