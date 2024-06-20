import 'package:firebase_analytics/firebase_analytics.dart';

class Analytics {
  final FirebaseAnalytics analytics;

  Analytics({required this.analytics});

  Future<void> openClubPage() async {
    await analytics.logEvent(name: 'open_club_page');
  }

  Future<void> openEventList() async {
    await analytics.logEvent(name: 'open_event_list');
  }

  Future<void> checkEvent() async {
    await analytics.logEvent(name: 'check_event');
  }

  Future<void> openProfilePage() async {
    await analytics.logEvent(name: 'open_profile_page');
  }

  Future<void> openCreateClubPage() async {
    await analytics.logEvent(name: 'open_create_club_page');
  }

  Future<void> chooseClubTags() async {
    await analytics.logEvent(name: 'choose_club_tags');
  }

  Future<void> createClub() async {
    await analytics.logEvent(name: 'create_club');
  }

  Future<void> firstOpen() async {
    await analytics.logEvent(name: 'first_open');
  }

  Future<void> firstVisit() async {
    await analytics.logEvent(name: 'first_visit');
  }

  Future<void> registrationPage() async {
    await analytics.logEvent(name: 'registration_page');
  }

  Future<void> signUp() async {
    await analytics.logEvent(name: 'sign_up');
  }

  Future<void> openRecommendationList() async {
    await analytics.logEvent(name: 'recommendation_list');
  }

  Future<void> clubSubscription() async {
    await analytics.logEvent(name: 'club_subscription');
  }

  /*Future<void> subscribe(int index) async {
    await analytics.logEvent(
      name: 'subscribe',
      parameters: {
        "club_index": index,
      },
    );
  }

  Future<void> unsubscribe(int index) async {
    await analytics.logEvent(
      name: 'unsubscribe',
      parameters: {
        "club_index": index,
      },
    );
  }*/

  /*Future<void> createComment() async {
    await analytics.logEvent(name: 'create_comment');
  }

  Future<void> createDiscussion() async {
    await analytics.logEvent(name: 'create_discussion');
  }

  Future<void> signIn() async {
    await analytics.logEvent(name: 'sign_in');
  }

  Future<void> signUp() async {
    await analytics.logEvent(name: 'sign_up');
  }

  Future<void> signOut() async {
    await analytics.logEvent(name: 'sign_out');
  }

  Future<void> openClubPage(int index, String name) async {
    await analytics.logEvent(
      name: 'open_club_page',
      parameters: {
        "club_index": index,
        "club_name": name,
      },
    );
  }*/
}
