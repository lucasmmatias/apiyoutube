import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Image.network(
          'https://i.imgur.com/2LW0IkI.png',
          width: 200,
        ),
      ),
    );
  }
}
