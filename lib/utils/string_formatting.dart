import 'dart:math';

import 'package:flutter/material.dart';

abstract class StringFormatting {

  static String getFormattedDateFromDate(DateTime date) {
    final month = date.month;
    return '${date.day} ${_getMonth(month)} ${date.year}';
  }

  static String getFormattedDateFromString(String date) {
    List<String> parts = date.split('-');
    int year = int.parse(parts[0]);
    int month = int.parse(parts[1]);
    int day = int.parse(parts[2]);
    return '$day ${_getMonth(month)} $year';
  }

  static String getFormattedTimeFromTime(TimeOfDay time) {
    int minute = time.minute;
    String stringMinute;
    int hour = time.hour;
    String stringHour;
    if (minute < 10) {
       stringMinute = '0$minute';
    } else {
      stringMinute = '$minute';
    }
    if (hour < 10) {
      stringHour = '0$hour';
    } else {
      stringHour = '$hour';
    }
    return '$stringHour:$stringMinute';
  }

  static String getFormattedTimeFromString(String time) {
    List<String> parts = time.split(':');
    int hour = int.parse(parts[0]);
    int minute = int.parse(parts[1]);
    String stringMinute;
    String stringHour;
    if (minute < 10) {
      stringMinute = '0$minute';
    } else {
      stringMinute = '$minute';
    }
    if (hour < 10) {
      stringHour = '0$hour';
    } else {
      stringHour = '$hour';
    }
    return '$stringHour:$stringMinute';
  }

  static String getFormattedTag(String tag) {
    String lowerTag = tag.toLowerCase();
    String underscoreTag = lowerTag.replaceAll(' ', '_');
    return '#$underscoreTag';
  }

  static String _getMonth(int intMonth) {
    String stringMonth = '';
    switch (intMonth) {
      case 1:
        stringMonth = 'января';
        break;
      case 2:
        stringMonth = 'февраля';
        break;
      case 3:
        stringMonth = 'марта';
        break;
      case 4:
        stringMonth = 'апреля';
        break;
      case 5:
        stringMonth = 'мая';
        break;
      case 6:
        stringMonth = 'июня';
        break;
      case 7:
        stringMonth = 'июля';
        break;
      case 8:
        stringMonth = 'августа';
        break;
      case 9:
        stringMonth = 'сентября';
        break;
      case 10:
        stringMonth = 'октября';
        break;
      case 11:
        stringMonth = 'ноября';
        break;
      case 12:
        stringMonth = 'декабря';
        break;
    }
    return stringMonth;
  }

  static String generateRandomSequence(int length) {
    String chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    Random rnd = Random();
    String randomString = String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(rnd.nextInt(chars.length))));
    return randomString;
  }

}
