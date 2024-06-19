import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_search.freezed.dart';
part 'club_search.g.dart';

@freezed
abstract class ClubSearch with _$ClubSearch {

  const factory ClubSearch({
    required String name,
  }) = _ClubSearch;

  factory ClubSearch.fromJson(Map<String, dynamic> json) => _$ClubSearchFromJson(json);

}