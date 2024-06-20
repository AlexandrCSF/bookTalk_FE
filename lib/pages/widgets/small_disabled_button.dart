import 'package:flutter/material.dart';

class SmallDisabledButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;

  const SmallDisabledButton({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 45,
        height: 45,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFCDCDCD),
        ),
        child: Icon(
          icon,
          color: colors.background,
          size: 28,
        ),
      ),
    );
  }
}
