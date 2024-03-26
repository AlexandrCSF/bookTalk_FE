import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          fillColor: colors.onInverseSurface,
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(
              MdiIcons.magnify,
              color: colors.onBackground,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: colors.inversePrimary,
            ),
            borderRadius: BorderRadius.circular(32),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: colors.inversePrimary,
            ),
            borderRadius: BorderRadius.circular(32),
          ),
        ),
      ),
    );
  }
}
