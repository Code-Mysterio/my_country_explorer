import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:my_country_explorer/models/country_model.dart';
import 'package:my_country_explorer/services/all_countries_service.dart';

class AllCountriesProvider extends ChangeNotifier {
  List<AllCountriesModel> _countries = [];
  List<AllCountriesModel> get countries => _countries;
  Future<void> allCountries() async {
    http.Response? response = (await AllCountriesService().allCountries())!;
    if (response.statusCode == 200 || response.statusCode == 201) {
      final List allCountryResponse = jsonDecode(response.body);
      var ade =
          allCountryResponse.map((e) => AllCountriesModel.fromJson(e)).toList();
      ade.sort((a, b) =>
          a.name!.official.toString().compareTo(b.name!.official.toString()));
      _countries = ade;
      notifyListeners();
    } else if (response.statusCode == 500) {
      notifyListeners();
    } else {
      throw Exception(response.reasonPhrase);
      notifyListeners();
    }
  }
}
