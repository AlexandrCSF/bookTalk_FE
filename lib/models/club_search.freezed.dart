// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClubSearch _$ClubSearchFromJson(Map<String, dynamic> json) {
  return _ClubSearch.fromJson(json);
}

/// @nodoc
mixin _$ClubSearch {
  String get search => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubSearchCopyWith<ClubSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubSearchCopyWith<$Res> {
  factory $ClubSearchCopyWith(
          ClubSearch value, $Res Function(ClubSearch) then) =
      _$ClubSearchCopyWithImpl<$Res, ClubSearch>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class _$ClubSearchCopyWithImpl<$Res, $Val extends ClubSearch>
    implements $ClubSearchCopyWith<$Res> {
  _$ClubSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_value.copyWith(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClubSearchImplCopyWith<$Res>
    implements $ClubSearchCopyWith<$Res> {
  factory _$$ClubSearchImplCopyWith(
          _$ClubSearchImpl value, $Res Function(_$ClubSearchImpl) then) =
      __$$ClubSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$ClubSearchImplCopyWithImpl<$Res>
    extends _$ClubSearchCopyWithImpl<$Res, _$ClubSearchImpl>
    implements _$$ClubSearchImplCopyWith<$Res> {
  __$$ClubSearchImplCopyWithImpl(
      _$ClubSearchImpl _value, $Res Function(_$ClubSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$ClubSearchImpl(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClubSearchImpl implements _ClubSearch {
  const _$ClubSearchImpl({required this.search});

  factory _$ClubSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClubSearchImplFromJson(json);

  @override
  final String search;

  @override
  String toString() {
    return 'ClubSearch(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubSearchImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClubSearchImplCopyWith<_$ClubSearchImpl> get copyWith =>
      __$$ClubSearchImplCopyWithImpl<_$ClubSearchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClubSearchImplToJson(
      this,
    );
  }
}

abstract class _ClubSearch implements ClubSearch {
  const factory _ClubSearch({required final String search}) = _$ClubSearchImpl;

  factory _ClubSearch.fromJson(Map<String, dynamic> json) =
      _$ClubSearchImpl.fromJson;

  @override
  String get search;
  @override
  @JsonKey(ignore: true)
  _$$ClubSearchImplCopyWith<_$ClubSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
