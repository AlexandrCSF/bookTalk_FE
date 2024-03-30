// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BookClubListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BookClubListPage(),
      );
    },
    BookClubListTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BookClubListTabPage(),
      );
    },
    BookClubRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BookClubRouteArgs>(
          orElse: () => BookClubRouteArgs(
                  id: pathParams.getInt(
                'id',
                1,
              )));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BookClubPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    DiscussionListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiscussionListPage(),
      );
    },
    DiscussionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiscussionPage(),
      );
    },
    EventListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EventListPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MyEventsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyEventsPage(),
      );
    },
    MyEventsTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyEventsTabPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
  };
}

/// generated route for
/// [BookClubListPage]
class BookClubListRoute extends PageRouteInfo<void> {
  const BookClubListRoute({List<PageRouteInfo>? children})
      : super(
          BookClubListRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookClubListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BookClubListTabPage]
class BookClubListTab extends PageRouteInfo<void> {
  const BookClubListTab({List<PageRouteInfo>? children})
      : super(
          BookClubListTab.name,
          initialChildren: children,
        );

  static const String name = 'BookClubListTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BookClubPage]
class BookClubRoute extends PageRouteInfo<BookClubRouteArgs> {
  BookClubRoute({
    Key? key,
    int id = 1,
    List<PageRouteInfo>? children,
  }) : super(
          BookClubRoute.name,
          args: BookClubRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'BookClubRoute';

  static const PageInfo<BookClubRouteArgs> page =
      PageInfo<BookClubRouteArgs>(name);
}

class BookClubRouteArgs {
  const BookClubRouteArgs({
    this.key,
    this.id = 1,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'BookClubRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [DiscussionListPage]
class DiscussionListRoute extends PageRouteInfo<void> {
  const DiscussionListRoute({List<PageRouteInfo>? children})
      : super(
          DiscussionListRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscussionListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DiscussionPage]
class DiscussionRoute extends PageRouteInfo<void> {
  const DiscussionRoute({List<PageRouteInfo>? children})
      : super(
          DiscussionRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscussionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EventListPage]
class EventListRoute extends PageRouteInfo<void> {
  const EventListRoute({List<PageRouteInfo>? children})
      : super(
          EventListRoute.name,
          initialChildren: children,
        );

  static const String name = 'EventListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyEventsPage]
class MyEventsRoute extends PageRouteInfo<void> {
  const MyEventsRoute({List<PageRouteInfo>? children})
      : super(
          MyEventsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyEventsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyEventsTabPage]
class MyEventsTab extends PageRouteInfo<void> {
  const MyEventsTab({List<PageRouteInfo>? children})
      : super(
          MyEventsTab.name,
          initialChildren: children,
        );

  static const String name = 'MyEventsTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}
