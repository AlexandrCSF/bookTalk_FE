import 'package:flutter/material.dart';

class MainOutlineButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback? onTap;

  const MainOutlineButton({
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
          color: colors.onPrimary,
          borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: colors.outline.withOpacity(0.7),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 2)
              ),
            ],
          border: Border.all(
            color: colors.primary,
            width: 2,
          )
        ),
        child: Padding(
          padding:
          const EdgeInsets.only(top: 10, right: 12, bottom: 10, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                label,
                style: text.headlineLarge!.copyWith(color: colors.primary),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colors.onPrimary,
                    border: Border.all(
                      color: colors.primary,
                      width: 2,
                    ),
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
