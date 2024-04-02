import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/authorization_page/authorization_page.dart';
import '../pages/create_club_page/create_club_page.dart';
import '../pages/discussion_list_page/discussion_list_page.dart';
import '../pages/discussion_page/discussion_page.dart';
import '../pages/edit_profile_page/edit_profile_page.dart';
import '../pages/event_list_page/event_list_page.dart';
import '../pages/book_club_page/book_club_page.dart';
import '../pages/book_club_list_page/book_club_list_page.dart';
import '../pages/interests_page/interests_page.dart';
import '../pages/my_events_page/my_events_page.dart';
import '../pages/profile_page/profile_page.dart';
import '../pages/home_page/home_page.dart';
import '../pages/registration_page/registration_page.dart';

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
                AutoRoute(
                  path: 'book-club:id',
                  page: BookClubRoute.page,
                ),
                AutoRoute(
                  path: 'event-list',
                  page: EventListRoute.page,
                ),
                AutoRoute(
                  path: 'discussion-list',
                  page: DiscussionListRoute.page,
                ),
                AutoRoute(
                  path: 'discussion:id',
                  page: DiscussionRoute.page,
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
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          path: '/edit-profile',
          page: EditProfileRoute.page,
        ),
        AutoRoute(
          path: '/interests',
          page: InterestsRoute.page,
        ),
        AutoRoute(
          path: '/create-club',
          page: CreateClubRoute.page,
        ),
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
