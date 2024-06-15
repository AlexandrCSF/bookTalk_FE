import 'package:flutter/material.dart';

class MainPrimaryButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback? onTap;

  const MainPrimaryButton({
    super.key,
    required this.label,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: colors.primary,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 12, right: 12, bottom: 12, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                label,
                style: text.headlineLarge!.copyWith(color: colors.onPrimary),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors.onPrimary
                ),
                child: Icon(
                  icon,
                  color: colors.primary,
                  size: 28,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
