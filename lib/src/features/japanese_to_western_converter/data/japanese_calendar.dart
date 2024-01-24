class JapaneseCalendar {
  final String name;
  final String furigana;
  final int startYear;
  final int endYear;
  final String? additionalInfo;

  const JapaneseCalendar({
    required this.name,
    required this.furigana,
    required this.startYear,
    required this.endYear,
    this.additionalInfo,
  });

  factory JapaneseCalendar.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'name': String name,
        'furigana': String furigana,
        'start_year': int startYear,
        'end_year': int endYear,
        'additional_info': String? additionalInfo,
      } =>
        JapaneseCalendar(
          name: name,
          furigana: furigana,
          startYear: startYear,
          endYear: endYear,
          additionalInfo: additionalInfo,
        ),
      _ => throw const FormatException('Failed to load japanese calendar.'),
    };
  }
}