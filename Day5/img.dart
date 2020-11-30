import 'package:flutter/material.dart';

class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/a.jpeg",
      fit: BoxFit.cover,
    );
  }
}
