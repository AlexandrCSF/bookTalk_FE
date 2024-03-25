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
        return CupertinoTabBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          border: Border.all(style: BorderStyle.none),
          height: 40,
          iconSize: 32,
          backgroundColor: colors.background,
          activeColor: colors.primary,
          inactiveColor: colors.outline,
          items: [
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.calendarClockOutline),
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.bookOpenPageVariantOutline),
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.accountCircleOutline),
            )
          ],
        );
      },
    );
  }
}
