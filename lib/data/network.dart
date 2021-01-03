import 'dart:convert';

import 'package:exo_planets/data/response.dart';
import 'package:http/http.dart' as http;

const String HOST = "https://exoplanets.nasa.gov";

const String _API = HOST + "/api/v1/";

Future<ListResponse> loadList() async {
  final response = await http.get(
      _API + "planets/" + "?order=display_name+asc&per_page=10&page=0&search=");
  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    return ListResponse.fromMap(json);
  } else {
    return Future.error("Http error ${response.reasonPhrase}");
  }
}
