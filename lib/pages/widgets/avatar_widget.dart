import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final Image img;

  const AvatarWidget({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 77.5,
      backgroundImage: img.image,
    );
  }
}
