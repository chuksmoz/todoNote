import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note/domain/auth/value_objects.dart';
import 'package:note/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User{
  const factory User({
    @required UniqueId id,
    @required StringSingleLine name,
    @required EmailAddress emailAddress,
  }) = _User;
}