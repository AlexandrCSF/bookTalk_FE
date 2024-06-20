import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:booktalk_frontend/viewmodels/search_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return TextField(
      style: text.bodyMedium?.copyWith(color: colors.onBackground),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        fillColor: colors.onInverseSurface,
        filled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(
            MdiIcons.magnify,
            color: colors.onBackground,
            size: 20,
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
      onSubmitted: (query) async {
        final result = await Provider.of<SearchViewModel>(context, listen: false).searchClubs(query);
        context.router.navigate(SearchResultsRoute(result: result));
      },
    );
  }
}
