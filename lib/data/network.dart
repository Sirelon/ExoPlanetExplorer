import 'dart:convert';

import 'package:exo_planets/data/response.dart';
import 'package:http/http.dart' as http;

const String HOST = "https://exoplanets.nasa.gov";

const String _API = HOST + "/api/v1/";

Future<ListResponse> loadList(Query query) async {
  final response = await http.get(_API +
      "planets/" +
      "?order=${query._order}&per_page=${query._perPage}&search=${query._search}&page=${query._page}");

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);

    var e = ListResponse.fromMap(json).items;

    // var s = e.map((e) => "'$HOST" + e.url + "'").toString();
    // print(s);
    //

    return ListResponse.fromMap(json);
  } else {
    return Future.error("Http error ${response.reasonPhrase}");
  }
}

class Query {
  var _order = "display_name+asc";
  var _perPage = 10;
  var _page = 0;
  var _search = "";

  nextPage() {
    _page++;
  }

  search(String search) => _search = search;

  void nextPageFromSize(int size) {
    _page = size ~/ _perPage;
    print("Page is $_page");
  }
}

extension UI on ExoPlanet {
  String imageUrl() => HOST + image;

  String listImageUrl() => HOST + listImage;
}
