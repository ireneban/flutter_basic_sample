import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  // defining parameters
  // final Color _color; // underscore for private
  final String _title;
  final String _body;
  static const double _hPad = 16.0; // const with static - rules of Dart

  // TextSection(this._color {
  //   this._color = color; // assigning the color value to private member _color
  // }

  // short-cut
  // TextSection(this._color);
  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // To add padding, wrap with Container
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
            child: Text(_title, style: Theme.of(context).textTheme.title),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
            child: Text(_body, style: Theme.of(context).textTheme.body1),
          ),
        ]);
  }
}
