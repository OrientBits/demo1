import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/bg.jpg",
      fit: BoxFit.fill,
      color: Colors.black.withOpacity(0.2),
      colorBlendMode: BlendMode.darken,
    );
  }
}
