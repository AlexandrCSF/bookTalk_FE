import 'package:firebase_analytics/firebase_analytics.dart';

class Analytics {
  final FirebaseAnalytics analytics;

  Analytics({required this.analytics});

  Future<void> subscribe(int index) async {
    await analytics.logEvent(
      name: 'subscribe',
      parameters: {
        "club_index": index,
      },
    );
  }

  Future<void> unsubscribe(int index) async {
    await analytics.logEvent(
      name: 'subscribe',
      parameters: {
        "club_index": index,
      },
    );
  }

  Future<void> createComment() async {
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
  }
}
