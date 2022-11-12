import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/parking_spot_list_model.dart';

class ParkingSpotService{
  String urlGetListParkingSpot = "https://controle-vaga.herokuapp.com/parking-spot";
  dynamic _response;

  ParkingSpotService(){
    _response="";
  }

  Future<ParkingSpotList> fetchListParkingSpot() async {
    _response = await http.get(Uri.parse(urlGetListParkingSpot));
    if (_response.statusCode == 200) {
      List<dynamic> list = json.decode(_response.body);
      return ParkingSpotList.fromJson(list);
    } else {
      throw Exception('Failed to load cote');
    }
  }

/*
  Future<ListCurrencies> fetchListCurrencies() async {
    _response = await http.get(Uri.parse(url));
    if (_response.statusCode == 200) {
      Map<String, dynamic> retorno = json.decode(_response.body);
      return  ListCurrencies.fromJson(retorno);
    } else {
      throw Exception('Failed to load cote');
    }
  }*/
}