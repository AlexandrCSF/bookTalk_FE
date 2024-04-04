import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;
  final String hintText;
  final String text;
  final int maxLines;


  const TextFieldWidget({super.key, required this.label, required this.hintText, required this.text, required this.maxLines});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final controller = TextEditingController();

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
              style: text.headlineLarge
                  ?.copyWith(color: colors.onBackground),
            ),
          ),
          TextFormField(
            /*controller: controller,*/
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            initialValue: widget.text,
            maxLines: widget.maxLines,
            style: text.labelMedium
                ?.copyWith(color: colors.onBackground),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle:
              text.labelMedium?.copyWith(color: colors.outline),
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
          ),
        ],
      ),
    );
  }
}
