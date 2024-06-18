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
          clubCard: args.clubCard,
        ),
      );
    },
    CreateClubInterestsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateClubInterestsPage(),
      );
    },
    CreateClubRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateClubPage(),
      );
    },
    CreateEventRoute.name: (routeData) {
      final args = routeData.argsAs<CreateEventRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CreateEventPage(
          key: args.key,
          clubId: args.clubId,
        ),
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
    EditClubInterestsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditClubInterestsPage(),
      );
    },
    EditClubRoute.name: (routeData) {
      final args = routeData.argsAs<EditClubRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditClubPage(
          key: args.key,
          club: args.club,
        ),
      );
    },
    EditEventRoute.name: (routeData) {
      final args = routeData.argsAs<EditEventRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditEventPage(
          key: args.key,
          meeting: args.meeting,
        ),
      );
    },
    EditProfileInterestsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfileInterestsPage(),
      );
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditProfilePage(
          key: args.key,
          user: args.user,
        ),
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
    MemberListRoute.name: (routeData) {
      final args = routeData.argsAs<MemberListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MemberListPage(
          key: args.key,
          members: args.members,
        ),
      );
    },
    MyEventsRoute.name: (routeData) {
      final args = routeData.argsAs<MyEventsRouteArgs>(
          orElse: () => const MyEventsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyEventsPage(key: args.key),
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
    RegistrationInterestsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationInterestsPage(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationPage(),
      );
    },
    WelcomeViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WelcomeViewPage(),
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
    ClubCard? clubCard,
    List<PageRouteInfo>? children,
  }) : super(
          BookClubRoute.name,
          args: BookClubRouteArgs(
            key: key,
            id: id,
            clubCard: clubCard,
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
    this.clubCard,
  });

  final Key? key;

  final int id;

  final ClubCard? clubCard;

  @override
  String toString() {
    return 'BookClubRouteArgs{key: $key, id: $id, clubCard: $clubCard}';
  }
}

/// generated route for
/// [CreateClubInterestsPage]
class CreateClubInterestsRoute extends PageRouteInfo<void> {
  const CreateClubInterestsRoute({List<PageRouteInfo>? children})
      : super(
          CreateClubInterestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateClubInterestsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
class CreateEventRoute extends PageRouteInfo<CreateEventRouteArgs> {
  CreateEventRoute({
    Key? key,
    required int clubId,
    List<PageRouteInfo>? children,
  }) : super(
          CreateEventRoute.name,
          args: CreateEventRouteArgs(
            key: key,
            clubId: clubId,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateEventRoute';

  static const PageInfo<CreateEventRouteArgs> page =
      PageInfo<CreateEventRouteArgs>(name);
}

class CreateEventRouteArgs {
  const CreateEventRouteArgs({
    this.key,
    required this.clubId,
  });

  final Key? key;

  final int clubId;

  @override
  String toString() {
    return 'CreateEventRouteArgs{key: $key, clubId: $clubId}';
  }
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
/// [EditClubInterestsPage]
class EditClubInterestsRoute extends PageRouteInfo<void> {
  const EditClubInterestsRoute({List<PageRouteInfo>? children})
      : super(
          EditClubInterestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditClubInterestsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditClubPage]
class EditClubRoute extends PageRouteInfo<EditClubRouteArgs> {
  EditClubRoute({
    Key? key,
    required ClubCard club,
    List<PageRouteInfo>? children,
  }) : super(
          EditClubRoute.name,
          args: EditClubRouteArgs(
            key: key,
            club: club,
          ),
          initialChildren: children,
        );

  static const String name = 'EditClubRoute';

  static const PageInfo<EditClubRouteArgs> page =
      PageInfo<EditClubRouteArgs>(name);
}

class EditClubRouteArgs {
  const EditClubRouteArgs({
    this.key,
    required this.club,
  });

  final Key? key;

  final ClubCard club;

  @override
  String toString() {
    return 'EditClubRouteArgs{key: $key, club: $club}';
  }
}

/// generated route for
/// [EditEventPage]
class EditEventRoute extends PageRouteInfo<EditEventRouteArgs> {
  EditEventRoute({
    Key? key,
    required ClubMeeting meeting,
    List<PageRouteInfo>? children,
  }) : super(
          EditEventRoute.name,
          args: EditEventRouteArgs(
            key: key,
            meeting: meeting,
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
    required this.meeting,
  });

  final Key? key;

  final ClubMeeting meeting;

  @override
  String toString() {
    return 'EditEventRouteArgs{key: $key, meeting: $meeting}';
  }
}

/// generated route for
/// [EditProfileInterestsPage]
class EditProfileInterestsRoute extends PageRouteInfo<void> {
  const EditProfileInterestsRoute({List<PageRouteInfo>? children})
      : super(
          EditProfileInterestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileInterestsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditProfilePage]
class EditProfileRoute extends PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    Key? key,
    required User user,
    List<PageRouteInfo>? children,
  }) : super(
          EditProfileRoute.name,
          args: EditProfileRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const PageInfo<EditProfileRouteArgs> page =
      PageInfo<EditProfileRouteArgs>(name);
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final User user;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key, user: $user}';
  }
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
/// [MemberListPage]
class MemberListRoute extends PageRouteInfo<MemberListRouteArgs> {
  MemberListRoute({
    Key? key,
    required List<User> members,
    List<PageRouteInfo>? children,
  }) : super(
          MemberListRoute.name,
          args: MemberListRouteArgs(
            key: key,
            members: members,
          ),
          initialChildren: children,
        );

  static const String name = 'MemberListRoute';

  static const PageInfo<MemberListRouteArgs> page =
      PageInfo<MemberListRouteArgs>(name);
}

class MemberListRouteArgs {
  const MemberListRouteArgs({
    this.key,
    required this.members,
  });

  final Key? key;

  final List<User> members;

  @override
  String toString() {
    return 'MemberListRouteArgs{key: $key, members: $members}';
  }
}

/// generated route for
/// [MyEventsPage]
class MyEventsRoute extends PageRouteInfo<MyEventsRouteArgs> {
  MyEventsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MyEventsRoute.name,
          args: MyEventsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MyEventsRoute';

  static const PageInfo<MyEventsRouteArgs> page =
      PageInfo<MyEventsRouteArgs>(name);
}

class MyEventsRouteArgs {
  const MyEventsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MyEventsRouteArgs{key: $key}';
  }
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
/// [RegistrationInterestsPage]
class RegistrationInterestsRoute extends PageRouteInfo<void> {
  const RegistrationInterestsRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationInterestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationInterestsRoute';

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

/// generated route for
/// [WelcomeViewPage]
class WelcomeViewRoute extends PageRouteInfo<void> {
  const WelcomeViewRoute({List<PageRouteInfo>? children})
      : super(
          WelcomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
