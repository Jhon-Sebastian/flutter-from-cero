import 'dart:convert';

import 'package:superhero_app/data/model/superhero_response.dart';
import 'package:http/http.dart' as http;

const String baseUrl = "https://superheroapi.com/api";
const String accessToken = "1d51ff2119488dda5a5b2f61e7107aea";
const String searchEndpoint = "search";

class Repository {
  Future<SuperheroResponse?> fetchSuperheroInfo(String text) async {
    final response = await http.get(Uri.parse(getUrlForSuperhero(text)));
    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      return SuperheroResponse.fromJson(decodedJson);
    } else {
      return null;
    }
  }

  String getUrlForSuperhero(String text) {
    return "$baseUrl/$accessToken/$searchEndpoint/$text";
  }
}
