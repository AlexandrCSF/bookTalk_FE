import 'package:booktalk_frontend/models/meeting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_card.freezed.dart';
part 'club_card.g.dart';

@freezed
abstract class ClubCard with _$ClubCard {

  const factory ClubCard({
    required int id,
    required String name,
    required String description,
    required int admin,
    required String city,
    required List<int> interests,
    required List<Meeting> meetings,
  }) = _ClubCard;

  factory ClubCard.fromJson(Map<String, dynamic> json) => _$ClubCardFromJson(json);

}