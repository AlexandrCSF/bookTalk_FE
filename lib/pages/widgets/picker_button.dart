import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickerButton extends StatefulWidget {
  final String label;
  final String value;
  final VoidCallback? onTap;

  const PickerButton({
    super.key,
    required this.label,
    required this.value,
    this.onTap,
  });

  @override
  State<PickerButton> createState() => _PickerButtonState();
}

class _PickerButtonState extends State<PickerButton> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              widget.label,
              style: text.headlineLarge?.copyWith(color: colors.onBackground),
            ),
          ),
          GestureDetector(
            onTap: widget.onTap,
            child: Container(
              decoration: BoxDecoration(
                color: colors.onInverseSurface,
                border: Border.all(
                  width: 2,
                  color: colors.inversePrimary,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                widget.value,
                style: text.labelMedium?.copyWith(color: colors.onBackground),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
