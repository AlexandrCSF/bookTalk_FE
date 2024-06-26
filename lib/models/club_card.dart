import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_card.freezed.dart';
part 'club_card.g.dart';

@freezed
abstract class ClubCard with _$ClubCard {

  const factory ClubCard({
    required int id,
    required String name,
    required String description,
    required User admin,
    required String city,
    required List<Genre> interests,
    required List<Meeting> meetings,
    required String picture,
    int? numOfSubscribers,
  }) = _ClubCard;

  factory ClubCard.fromJson(Map<String, dynamic> json) => _$ClubCardFromJson(json);

}