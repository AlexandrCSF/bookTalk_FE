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
      final args = routeData.argsAs<DiscussionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DiscussionPage(
          key: args.key,
          id: args.id,
          title: args.title,
          description: args.description,
          createdBy: args.createdBy,
        ),
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
      final args = routeData.argsAs<EventListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EventListPage(
          key: args.key,
          clubId: args.clubId,
          isAdministrator: args.isAdministrator,
        ),
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
class DiscussionRoute extends PageRouteInfo<DiscussionRouteArgs> {
  DiscussionRoute({
    Key? key,
    required int id,
    required String title,
    required String description,
    required int createdBy,
    List<PageRouteInfo>? children,
  }) : super(
          DiscussionRoute.name,
          args: DiscussionRouteArgs(
            key: key,
            id: id,
            title: title,
            description: description,
            createdBy: createdBy,
          ),
          initialChildren: children,
        );

  static const String name = 'DiscussionRoute';

  static const PageInfo<DiscussionRouteArgs> page =
      PageInfo<DiscussionRouteArgs>(name);
}

class DiscussionRouteArgs {
  const DiscussionRouteArgs({
    this.key,
    required this.id,
    required this.title,
    required this.description,
    required this.createdBy,
  });

  final Key? key;

  final int id;

  final String title;

  final String description;

  final int createdBy;

  @override
  String toString() {
    return 'DiscussionRouteArgs{key: $key, id: $id, title: $title, description: $description, createdBy: $createdBy}';
  }
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
class EventListRoute extends PageRouteInfo<EventListRouteArgs> {
  EventListRoute({
    Key? key,
    required int clubId,
    required bool isAdministrator,
    List<PageRouteInfo>? children,
  }) : super(
          EventListRoute.name,
          args: EventListRouteArgs(
            key: key,
            clubId: clubId,
            isAdministrator: isAdministrator,
          ),
          initialChildren: children,
        );

  static const String name = 'EventListRoute';

  static const PageInfo<EventListRouteArgs> page =
      PageInfo<EventListRouteArgs>(name);
}

class EventListRouteArgs {
  const EventListRouteArgs({
    this.key,
    required this.clubId,
    required this.isAdministrator,
  });

  final Key? key;

  final int clubId;

  final bool isAdministrator;

  @override
  String toString() {
    return 'EventListRouteArgs{key: $key, clubId: $clubId, isAdministrator: $isAdministrator}';
  }
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
