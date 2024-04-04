import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final Image img;

  const AvatarWidget({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 37),
      child: CircleAvatar(
        radius: 77.5,
        backgroundImage: img.image,
      ),
    );
  }
}
