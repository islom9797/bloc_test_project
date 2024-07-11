import 'package:flutter/cupertino.dart';

class CupertinoLocalizationKoDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  @override
  bool isSupported(Locale locale) {
    return locale.countryCode == "KR" && locale.languageCode == "ko";
  }

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    return CupertinoLocalizationKo();
  }

  @override
  bool shouldReload(dynamic old) {
    return false;
  }
}

class CupertinoLocalizationKo extends CupertinoLocalizations {
  @override
  String get alertDialogLabel => '알림';

  @override
  String get anteMeridiemAbbreviation => '오전';

  @override
  String get copyButtonLabel => '복사하기';

  @override
  String get cutButtonLabel => '잘라내기';

  @override
  DatePickerDateOrder get datePickerDateOrder => throw UnimplementedError();

  @override
  DatePickerDateTimeOrder get datePickerDateTimeOrder => throw UnimplementedError();

  // @override
  // String datePickerDayOfMonth(int dayIndex) {
  //  return "weather";
  // }

  @override
  String datePickerHour(int hour) {
    throw UnimplementedError();
  }

  @override
  String? datePickerHourSemanticsLabel(int hour) => '$hour시 정각';

  @override
  String datePickerMediumDate(DateTime date) {
    throw UnimplementedError();
  }

  @override
  String datePickerMinute(int minute) {
    throw UnimplementedError();
  }

  @override
  String? datePickerMinuteSemanticsLabel(int minute) => '$minute분';

  @override
  String datePickerMonth(int monthIndex) {
    throw UnimplementedError();
  }

  @override
  String datePickerYear(int yearIndex) {
    throw UnimplementedError();
  }

  @override
  String get modalBarrierDismissLabel => throw UnimplementedError();

  @override
  String get pasteButtonLabel => "붙여넣기";

  @override
  String get postMeridiemAbbreviation => throw UnimplementedError();

  @override
  String get searchTextFieldPlaceholderLabel => throw UnimplementedError();


  @override
  String get selectAllButtonLabel => "전체선택";

  @override
  String tabSemanticsLabel({required int tabIndex, required int tabCount}) {
    throw UnimplementedError();
  }

  @override
  String timerPickerHour(int hour) {
    return "timerPickerHour";
  }

  @override
  String? timerPickerHourLabel(int hour) {
    return "timerPickerHourLabel";
  }

  @override
  List<String> get timerPickerHourLabels => throw UnimplementedError();

  @override
  String timerPickerMinute(int minute) {
    throw UnimplementedError();
  }

  @override
  String? timerPickerMinuteLabel(int minute) {
    throw UnimplementedError();
  }

  @override
  List<String> get timerPickerMinuteLabels => throw UnimplementedError();

  @override
  String timerPickerSecond(int second) {
    throw UnimplementedError();
  }

  @override
  String? timerPickerSecondLabel(int second) {
    return "$second";
  }

  @override
  List<String> get timerPickerSecondLabels => ["timerPickerSecondLabels"];

  @override
  String get todayLabel => '오늘';

  @override
  // TODO: implement noSpellCheckReplacementsLabel
  String get noSpellCheckReplacementsLabel => 'noSpellCheckReplacementsLabel';

  @override
  String datePickerDayOfMonth(int dayIndex, [int? weekDay]) {
    // TODO: implement datePickerDayOfMonth
    return 'noSpellCheckReplacementsLabel';
    ;
  }

  @override
  String datePickerStandaloneMonth(int monthIndex) {
    // TODO: implement datePickerStandaloneMonth
    throw UnimplementedError();
  }

  @override
  // TODO: implement lookUpButtonLabel
  String get lookUpButtonLabel => "보기";

  @override
  // TODO: implement menuDismissLabel
  String get menuDismissLabel => "menuDismissLabel";

  @override
  // TODO: implement searchWebButtonLabel
  String get searchWebButtonLabel => "웹검색";

  @override
  // TODO: implement shareButtonLabel
  String get shareButtonLabel => "공유";

  @override
  // TODO: implement clearButtonLabel
  String get clearButtonLabel => "지우기";
}

