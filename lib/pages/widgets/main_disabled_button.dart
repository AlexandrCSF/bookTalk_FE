import 'package:flutter/material.dart';

class MainDisabledButton extends StatelessWidget {
  final String label;
  final IconData icon;

  const MainDisabledButton({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFCDCDCD),
        borderRadius: BorderRadius.circular(16),
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
              style: text.headlineLarge!.copyWith(color: const Color(0xFF919191)),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colors.background
              ),
              child: Icon(
                icon,
                color: const Color(0xFFCDCDCD),
                size: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
