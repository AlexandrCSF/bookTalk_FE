import 'package:flutter/material.dart';

class SmallOutlineButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;

  const SmallOutlineButton({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: 41,
      height: 41,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colors.onPrimary,
        border: Border.all(
          width: 2,
          color: colors.primary
        )
      ),
      child: Icon(
        icon,
        color: colors.primary,
        size: 28,
      ),
    );
  }
}
