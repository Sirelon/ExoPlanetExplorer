import 'package:cached_network_image/cached_network_image.dart';
import 'package:exo_planets/data/network.dart';
import 'package:exo_planets/data/response.dart';
import 'package:flutter/material.dart';
import 'package:pagination_view/pagination_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _query = Query();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _pageWidget(),
    );
  }

  Widget _pageWidget() {
    return PaginationView(
        itemBuilder: (BuildContext context, ExoPlanet planet, int index) =>
            PlanetItemWidget(planet),
        pageFetch: (size) {
          _query.nextPageFromSize(size);
          return loadList(_query).then((value) => value.items);
        },
        onEmpty: null,
        onError: null);
  }
}

class PlanetItemWidget extends StatelessWidget {
  ExoPlanet planet;

  PlanetItemWidget(this.planet, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return CachedNetworkImage(imageUrl: planet.listImageUrl());

    return ListTile(
      title: Text(planet.title),
      subtitle: Text(planet.description),
      leading: IconButton(
        icon: Icon(Icons.person),
        onPressed: () => null,
      ),
    );
  }
}
