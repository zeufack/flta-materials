import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double imageRaduis;
  final ImageProvider? imageProvider;
  const CircleImage({Key? key, this.imageProvider, this.imageRaduis = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRaduis,
      child: CircleAvatar(
        radius: imageRaduis - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
