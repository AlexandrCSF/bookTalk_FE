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
    AuthorizationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorizationRouteArgs>(
          orElse: () => const AuthorizationRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthorizationPage(key: args.key),
      );
    },
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
          orElse: () => BookClubRouteArgs(id: pathParams.getInt('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BookClubPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CreateClubRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateClubPage(),
      );
    },
    CreateEventRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateEventPage(),
      );
    },
    DiscussionListRoute.name: (routeData) {
      final args = routeData.argsAs<DiscussionListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DiscussionListPage(
          key: args.key,
          clubId: args.clubId,
        ),
      );
    },
    DiscussionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiscussionPage(),
      );
    },
    EditClubRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditClubPage(),
      );
    },
    EditEventRoute.name: (routeData) {
      final args = routeData.argsAs<EditEventRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditEventPage(
          key: args.key,
          topic: args.topic,
          city: args.city,
          date: args.date,
          time: args.time,
          place: args.place,
        ),
      );
    },
    EditProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfilePage(),
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
    InterestsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InterestsPage(),
      );
    },
    MemberListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MemberListPage(),
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
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfilePage(key: args.key),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationPage(),
      );
    },
  };
}

/// generated route for
/// [AuthorizationPage]
class AuthorizationRoute extends PageRouteInfo<AuthorizationRouteArgs> {
  AuthorizationRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AuthorizationRoute.name,
          args: AuthorizationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static const PageInfo<AuthorizationRouteArgs> page =
      PageInfo<AuthorizationRouteArgs>(name);
}

class AuthorizationRouteArgs {
  const AuthorizationRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AuthorizationRouteArgs{key: $key}';
  }
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
    required int id,
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
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'BookClubRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [CreateClubPage]
class CreateClubRoute extends PageRouteInfo<void> {
  const CreateClubRoute({List<PageRouteInfo>? children})
      : super(
          CreateClubRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateClubRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateEventPage]
class CreateEventRoute extends PageRouteInfo<void> {
  const CreateEventRoute({List<PageRouteInfo>? children})
      : super(
          CreateEventRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateEventRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DiscussionListPage]
class DiscussionListRoute extends PageRouteInfo<DiscussionListRouteArgs> {
  DiscussionListRoute({
    Key? key,
    required int clubId,
    List<PageRouteInfo>? children,
  }) : super(
          DiscussionListRoute.name,
          args: DiscussionListRouteArgs(
            key: key,
            clubId: clubId,
          ),
          initialChildren: children,
        );

  static const String name = 'DiscussionListRoute';

  static const PageInfo<DiscussionListRouteArgs> page =
      PageInfo<DiscussionListRouteArgs>(name);
}

class DiscussionListRouteArgs {
  const DiscussionListRouteArgs({
    this.key,
    required this.clubId,
  });

  final Key? key;

  final int clubId;

  @override
  String toString() {
    return 'DiscussionListRouteArgs{key: $key, clubId: $clubId}';
  }
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
/// [EditClubPage]
class EditClubRoute extends PageRouteInfo<void> {
  const EditClubRoute({List<PageRouteInfo>? children})
      : super(
          EditClubRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditClubRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditEventPage]
class EditEventRoute extends PageRouteInfo<EditEventRouteArgs> {
  EditEventRoute({
    Key? key,
    required String topic,
    required String city,
    required String date,
    required String time,
    required String place,
    List<PageRouteInfo>? children,
  }) : super(
          EditEventRoute.name,
          args: EditEventRouteArgs(
            key: key,
            topic: topic,
            city: city,
            date: date,
            time: time,
            place: place,
          ),
          initialChildren: children,
        );

  static const String name = 'EditEventRoute';

  static const PageInfo<EditEventRouteArgs> page =
      PageInfo<EditEventRouteArgs>(name);
}

class EditEventRouteArgs {
  const EditEventRouteArgs({
    this.key,
    required this.topic,
    required this.city,
    required this.date,
    required this.time,
    required this.place,
  });

  final Key? key;

  final String topic;

  final String city;

  final String date;

  final String time;

  final String place;

  @override
  String toString() {
    return 'EditEventRouteArgs{key: $key, topic: $topic, city: $city, date: $date, time: $time, place: $place}';
  }
}

/// generated route for
/// [EditProfilePage]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute({List<PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

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
/// [InterestsPage]
class InterestsRoute extends PageRouteInfo<void> {
  const InterestsRoute({List<PageRouteInfo>? children})
      : super(
          InterestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'InterestsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MemberListPage]
class MemberListRoute extends PageRouteInfo<void> {
  const MemberListRoute({List<PageRouteInfo>? children})
      : super(
          MemberListRoute.name,
          initialChildren: children,
        );

  static const String name = 'MemberListRoute';

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
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }
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

/// generated route for
/// [RegistrationPage]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
