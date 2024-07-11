enum Day {
  SUNDAY,
  MONDAY,
  TUESDAY,
  WEDNESDAY,
  THURSDAY,
  FRIDAY,
  SATURDAY,
}

class DaySelector {
  final Day day;
  bool selected;

  DaySelector({required this.day, this.selected = false});
}
