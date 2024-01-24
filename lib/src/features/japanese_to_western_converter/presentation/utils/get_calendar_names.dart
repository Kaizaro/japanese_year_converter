import 'dart:convert';

import 'package:http/http.dart';
import 'package:japanese_calendar/src/features/japanese_to_western_converter/data/japanese_calendar.dart';

Future<JapaneseCalendar> getCalendarNames() async {
  final response = await get(Uri.parse('https://gist.githubusercontent.com/Kaizaro/bba48ac751ac4ad3d684041d705b4c0f/raw/f6ea97f53badd0d2f3fb563420f2d1048d007fbd/eras.json'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return JapaneseCalendar.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}