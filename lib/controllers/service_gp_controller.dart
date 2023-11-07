import 'package:get/get.dart';
import 'package:sama_gp/utils/api_endpoints.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ServiceGpController extends GetxController {

  List<dynamic> countries = <dynamic>[].obs;
  var isLoading = true.obs;

  void onInit() {
    super.onInit();
    fetchAllCountries(); // Call decodeToken when the controller is initialized
  }

  Future<List> fetchAllCountries() async {
    var url = Uri.parse(ApiEndPoints.baseUrl + "countries/");
    print(" *********************************** ");
    isLoading.value = true;
    final response = await http.get(url);

    if (response.statusCode == 200) {
      isLoading.value = false;
      List<dynamic> decodedData = json.decode(response.body);
      print(" ***************json.decode(response.body)******************** ${decodedData} ");

      countries = decodedData;
      print(" *********************************** ${countries}");
      return countries;
    } else {
      isLoading.value = false;
      throw Exception('Failed to load countries');
    }
  }
}
