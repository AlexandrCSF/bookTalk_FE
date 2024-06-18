import 'package:flutter/material.dart';

class DropdownListWidget extends StatefulWidget {
  final String value;
  final List<String> values;
  final ValueChanged<String?> onChooseItem;
  final String label;

  const DropdownListWidget({
    super.key,
    required this.value,
    required this.values,
    required this.onChooseItem,
    required this.label,
  });

  @override
  State<DropdownListWidget> createState() => _DropdownListWidgetState();
}

class _DropdownListWidgetState extends State<DropdownListWidget> {
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
          Container(
            height: 52,
            width: double.infinity,
            child: DropdownButtonFormField<String>(
              value: widget.value,
              onChanged: (String? newValue) => widget.onChooseItem(newValue),
              items: widget.values.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              style: text.labelMedium?.copyWith(color: colors.onBackground),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                hintStyle: text.labelMedium?.copyWith(color: colors.outline),
                fillColor: colors.onInverseSurface,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: colors.inversePrimary,
                  ),
                  borderRadius: BorderRadius.circular(22),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: colors.inversePrimary,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
