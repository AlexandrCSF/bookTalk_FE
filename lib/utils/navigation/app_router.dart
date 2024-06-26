import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/models/club_meeting.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/search_results_page.dart';
import 'package:booktalk_frontend/pages/interests_page/edit_club_interests_page.dart';
import 'package:booktalk_frontend/pages/interests_page/edit_profile_interests_page.dart';
import 'package:booktalk_frontend/pages/interests_page/registration_interests_page.dart';
import 'package:booktalk_frontend/pages/onboarding/welcome_view_page.dart';
import 'package:flutter/material.dart';

import 'package:booktalk_frontend/pages/authorization_page/authorization_page.dart';
import 'package:booktalk_frontend/pages/create_club_page/create_club_page.dart';
import 'package:booktalk_frontend/pages/discussion_list_page/discussion_list_page.dart';
import 'package:booktalk_frontend/pages/discussion_page/discussion_page.dart';
import 'package:booktalk_frontend/pages/edit_profile_page/edit_profile_page.dart';
import 'package:booktalk_frontend/pages/event_list_page/event_list_page.dart';
import 'package:booktalk_frontend/pages/book_club_page/book_club_page.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/book_club_list_page.dart';
import 'package:booktalk_frontend/pages/interests_page/create_club_interests_page.dart';
import 'package:booktalk_frontend/pages/member_list_page/member_list_page.dart';
import 'package:booktalk_frontend/pages/my_events_page/my_events_page.dart';
import 'package:booktalk_frontend/pages/profile_page/profile_page.dart';
import 'package:booktalk_frontend/pages/home_page/home_page.dart';
import 'package:booktalk_frontend/pages/registration_page/registration_page.dart';
import 'package:booktalk_frontend/pages/create_event_page/create_event_page.dart';
import 'package:booktalk_frontend/pages/edit_club_page/edit_club_page.dart';
import 'package:booktalk_frontend/pages/edit_event_page/edit_event_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
          initial: true,
          guards: [AuthGuard()],
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
                AutoRoute(
                  path: 'member-list',
                  page: MemberListRoute.page,
                ),
                AutoRoute(
                  path: 'create-event',
                  page: CreateEventRoute.page,
                ),
                AutoRoute(
                  path: 'edit-event',
                  page: EditEventRoute.page,
                ),
                AutoRoute(
                  path: 'search-results',
                  page: SearchResultsRoute.page,
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
          path: '/create-club-interests',
          page: CreateClubInterestsRoute.page,
        ),
        AutoRoute(
          path: '/edit-club-interests',
          page: EditClubInterestsRoute.page,
        ),
        AutoRoute(
          path: '/create-club',
          page: CreateClubRoute.page,
        ),
        AutoRoute(
          path: '/authorization',
          page: AuthorizationRoute.page,
        ),
        AutoRoute(
          path: '/registration',
          page: RegistrationRoute.page,
        ),
        AutoRoute(
          path: '/edit-club',
          page: EditClubRoute.page,
        ),
        AutoRoute(
          path: '/registration-interests',
          page: RegistrationInterestsRoute.page,
        ),
        AutoRoute(
          path: '/edit-profile-interests',
          page: EditProfileInterestsRoute.page,
        ),
        AutoRoute(
          path: '/welcome',
          page: WelcomeViewRoute.page,
        ),
      ];
}

class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstLaunch = prefs.getBool('isFirstLaunch') ?? true;

    if (isFirstLaunch) {
      router.push(WelcomeViewRoute());
      await prefs.setBool('isFirstLaunch', false);
    } else {
      resolver.next(true);
    }
  }
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
