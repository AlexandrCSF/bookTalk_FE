import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;
  final String hintText;
  final int maxLines;
  final TextEditingController? controller;
  final bool? isObscure;

  const TextFieldWidget({
    super.key,
    required this.label,
    required this.hintText,
    required this.maxLines,
    this.controller,
    this.isObscure,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {

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
          TextFormField(
            controller: widget.controller,
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            maxLines: widget.maxLines,
            style: text.headlineSmall?.copyWith(color: colors.onBackground),
            obscureText: widget.isObscure ?? false,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              hintText: widget.hintText,
              hintStyle: text.headlineSmall?.copyWith(color: colors.outline),
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
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
