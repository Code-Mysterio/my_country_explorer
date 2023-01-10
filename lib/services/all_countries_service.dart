import 'package:http/http.dart' as http;
import 'package:my_country_explorer/utils/const/app_urls.dart';
import 'dart:developer';

class AllCountriesService {
  Future<http.Response?> allCountries() async {
    http.Response? response;
    try {
      response = await http.get(
        Uri.parse(AppUrl.baseUrl + AppUrl.allEndPoint),
      );
    } catch (e) {
      log(e.toString());
    }
    return response;
  }
}
