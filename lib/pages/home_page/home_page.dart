import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/navigation/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return AutoTabsScaffold(
      backgroundColor: colors.background,
      routes: const [
        MyEventsTab(),
        BookClubListTab(),
        ProfileTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          iconSize: 32,
          backgroundColor: colors.background,
          selectedItemColor: colors.primary,
          unselectedItemColor: colors.outline,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.calendarClock),
              label: 'events',
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.bookOpenPageVariantOutline),
              label: 'clubs',
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.accountCircleOutline),
              label: 'profile',
            )
          ],
        );
      },
    );
  }
}
