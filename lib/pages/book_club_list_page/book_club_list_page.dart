import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'widgets/search_field.dart';

@RoutePage()
class BookClubListPage extends StatelessWidget {
  const BookClubListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: colors.background,
          title: const SearchField(),
          bottom: TabBar(
            indicatorColor: colors.primary,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(
                child: Text(
                  'Я участник',
                  style: text.bodySmall!.copyWith(color: colors.primary, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Рекомендации',
                  style: text.bodySmall!.copyWith(color: colors.primary, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Я управляю',
                  style: text.bodySmall!.copyWith(color: colors.primary, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('я участник')),
            Center(child: Text('рекомендации')),
            Center(child: Text('я управляю')),
          ],
        ),
      ),
    );
  }
}
