import 'package:auto_route/auto_route.dart';

import '../pages/book_club_list_page/book_club_list_page.dart';
import '../pages/my_events_page/my_events_page.dart';
import '../pages/profile_page/profile_page.dart';
import '../pages/home_page/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          initial: true,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              path: 'my-events-tab',
              initial: true,
              page: MyEventsTab.page,
              children: [
                AutoRoute(
                  path: 'my-events',
                  initial: true,
                  page: MyEventsRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'book-club-list-tab',
              page: BookClubListTab.page,
              children: [
                AutoRoute(
                  path: 'book-club-list',
                  initial: true,
                  page: BookClubListRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'profile-tab',
              page: ProfileTab.page,
              children: [
                AutoRoute(
                  path: 'profile',
                  initial: true,
                  page: ProfileRoute.page,
                )
              ],
            )
          ],
        )
      ];
}

@RoutePage(name: 'MyEventsTab')
class MyEventsTabPage extends AutoRouter {
  const MyEventsTabPage({super.key});
}

@RoutePage(name: 'BookClubListTab')
class BookClubListTabPage extends AutoRouter {
  const BookClubListTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
