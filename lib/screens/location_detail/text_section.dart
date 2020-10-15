import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  // defining parameters
  final Color _color; // underscore for private

  // TextSection(this._color {
  //   this._color = color; // assigning the color value to private member _color
  // }

  // short-cut
  TextSection(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color,
      ),
      child: Text('hi'),
    );
  }
}
