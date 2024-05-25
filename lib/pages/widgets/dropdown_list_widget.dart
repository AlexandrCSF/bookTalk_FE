import 'package:flutter/material.dart';

class DropdownListWidget extends StatefulWidget {
  final String value;
  final List<String> values;
  final ValueChanged<String?> onChooseItem;

  const DropdownListWidget({
    super.key,
    required this.value,
    required this.values,
    required this.onChooseItem
  });

  @override
  State<DropdownListWidget> createState() => _DropdownListWidgetState();
}

class _DropdownListWidgetState extends State<DropdownListWidget> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return DropdownButtonFormField<String>(
      value: widget.value,
      onChanged: (String? newValue) => widget.onChooseItem(newValue),
      items: widget.values.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      style: text.labelMedium?.copyWith(color: colors.outline),
      decoration: InputDecoration(
        hintStyle: text.labelMedium?.copyWith(color: colors.outline),
        fillColor: colors.onInverseSurface,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: colors.inversePrimary,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: colors.inversePrimary,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
