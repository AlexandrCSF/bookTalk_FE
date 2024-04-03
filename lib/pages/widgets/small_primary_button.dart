import 'package:flutter/material.dart';

class SmallPrimaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;

  const SmallPrimaryButton({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colors.primary,
      ),
      child: Icon(
        icon,
        color: colors.onPrimary,
        size: 28,
      ),
    );
  }
}
