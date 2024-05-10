abstract class ClubUrls {

  /// GET
  static const String getAdministratedClubsForUser = '/clubs/administrated_clubs_for_user';
  static const String getClubById = '/clubs/club/';
  static const String getMeetingsByClubId = '/clubs/meetings/';
  static const String getMembershipForUser = '/clubs/membership_for_user/';
  static const String getListOfMembersByClubId = '/clubs/users/';

  /// PUT
  static const String createClub = '/clubs/club/';

  /// PATCH
  static const String editClub = '/clubs/club/';

  /// DELETE
  static const String deleteClub = '/clubs/club/';

  /// POST
  static const String subscribeToClub = '/clubs/subscribe/';

}