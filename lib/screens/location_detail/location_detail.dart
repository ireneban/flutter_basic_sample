import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);
    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner(location.imagePath),
              // Cascades: to invoke addAll() method
            ]..addAll(textSections(location))));
  }

  List<Widget> textSections(Location location) {
    // Transforming a List<LocationFact> into List<Widget>
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList(); // TextSection takes title and text
  }
}
