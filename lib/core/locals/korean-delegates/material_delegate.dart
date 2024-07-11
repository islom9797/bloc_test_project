import 'package:flutter/material.dart';

class MaterialLocalizationKoDelegate extends LocalizationsDelegate<MaterialLocalizations> {
  @override
  bool isSupported(Locale locale) {
    return locale.countryCode == "KR" && locale.languageCode == "ko";
  }

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    return MaterialLocalizationKo();
  }

  @override
  bool shouldReload(dynamic old) {
    return false;
  }
}

class MaterialLocalizationKo extends MaterialLocalizations {
  @override
  String aboutListTileTitle(String applicationName) {
    throw UnimplementedError();
  }

  @override
  String get alertDialogLabel => '알림';

  @override
  String get anteMeridiemAbbreviation => '오전';

  @override
  String get backButtonTooltip => '뒤로';

  @override
  String get calendarModeButtonLabel => '캘린더 모드로 전환';

  @override
  String get cancelButtonLabel => '취소';

  @override
  String get closeButtonLabel => '닫기';

  @override
  String get closeButtonTooltip => '닫기';

  @override
  String get continueButtonLabel => '계속하기';

  @override
  String get copyButtonLabel => '복사하기';

  @override
  String get cutButtonLabel => '잘라내기';

  @override
  String get dateHelpText => 'yyyy/mm/dd';

  @override
  String get dateInputLabel => '날짜 입력';

  @override
  String get dateOutOfRangeLabel => '날짜가 범위를 벗어남。';

  @override
  String get datePickerHelpText => '날짜 선택기 도움말';

  @override
  String dateRangeEndDateSemanticLabel(String formattedDate) => '날짜 범위 종료 날짜 의미 $formattedDate';

  @override
  String get dateRangeEndLabel => '기간 종료';

  @override
  String get dateRangePickerHelpText => '날짜 범위 선택기 도움말';

  @override
  String dateRangeStartDateSemanticLabel(String formattedDate) => '날짜 범위 시작 날짜 의미 $formattedDate';

  @override
  String get dateRangeStartLabel => '기간 시작';

  @override
  String get dateSeparator => '/';

  @override
  String get deleteButtonTooltip => '삭제';

  @override
  String get dialModeButtonLabel => '버튼';

  @override
  String get dialogLabel => '밥업';

  @override
  String get drawerLabel => '导航菜单';

  @override
  int get firstDayOfWeekIndex => throw UnimplementedError();

  @override
  String get firstPageTooltip => '第一页';

  @override
  String formatCompactDate(DateTime date) {
    throw UnimplementedError();
  }

  @override
  String formatDecimal(int number) {
    throw UnimplementedError();
  }

  @override
  String formatFullDate(DateTime date) {
    throw UnimplementedError();
  }

  @override
  String formatHour(TimeOfDay timeOfDay, {bool alwaysUse24HourFormat = false}) {
    throw UnimplementedError();
  }

  @override
  String formatMediumDate(DateTime date) {
    throw UnimplementedError();
  }

  @override
  String formatMinute(TimeOfDay timeOfDay) {
    throw UnimplementedError();
  }

  @override
  String formatMonthYear(DateTime date) {
    throw UnimplementedError();
  }

  @override
  String formatShortDate(DateTime date) {
    throw UnimplementedError();
  }

  @override
  String formatShortMonthDay(DateTime date) {
    throw UnimplementedError();
  }

  @override
  String formatTimeOfDay(TimeOfDay timeOfDay, {bool alwaysUse24HourFormat = false}) {
    throw UnimplementedError();
  }

  @override
  String formatYear(DateTime date) {
    throw UnimplementedError();
  }

  @override
  String get hideAccountsLabel => throw UnimplementedError();

  @override
  String get inputDateModeButtonLabel => throw UnimplementedError();

  @override
  String get inputTimeModeButtonLabel => throw UnimplementedError();

  @override
  String get invalidDateFormatLabel => throw UnimplementedError();

  @override
  String get invalidDateRangeLabel => throw UnimplementedError();

  @override
  String get invalidTimeLabel => throw UnimplementedError();

  @override
  String get keyboardKeyAlt => throw UnimplementedError();

  @override
  String get keyboardKeyAltGraph => throw UnimplementedError();

  @override
  String get keyboardKeyBackspace => throw UnimplementedError();

  @override
  String get keyboardKeyCapsLock => throw UnimplementedError();

  @override
  String get keyboardKeyChannelDown => throw UnimplementedError();

  @override
  String get keyboardKeyChannelUp => throw UnimplementedError();

  @override
  String get keyboardKeyControl => throw UnimplementedError();

  @override
  String get keyboardKeyDelete => throw UnimplementedError();

  @override
  String get keyboardKeyEject => throw UnimplementedError();

  @override
  String get keyboardKeyEnd => throw UnimplementedError();

  @override
  String get keyboardKeyEscape => throw UnimplementedError();

  @override
  String get keyboardKeyFn => throw UnimplementedError();

  @override
  String get keyboardKeyHome => throw UnimplementedError();

  @override
  String get keyboardKeyInsert => throw UnimplementedError();

  @override
  String get keyboardKeyMeta => throw UnimplementedError();

  @override
  String get keyboardKeyMetaMacOs => throw UnimplementedError();

  @override
  String get keyboardKeyMetaWindows => throw UnimplementedError();

  @override
  String get keyboardKeyNumLock => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad0 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad1 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad2 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad3 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad4 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad5 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad6 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad7 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad8 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad9 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadAdd => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadComma => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadDecimal => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadDivide => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadEnter => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadEqual => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadMultiply => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadParenLeft => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadParenRight => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadSubtract => throw UnimplementedError();

  @override
  String get keyboardKeyPageDown => throw UnimplementedError();

  @override
  String get keyboardKeyPageUp => throw UnimplementedError();

  @override
  String get keyboardKeyPower => throw UnimplementedError();

  @override
  String get keyboardKeyPowerOff => throw UnimplementedError();

  @override
  String get keyboardKeyPrintScreen => throw UnimplementedError();

  @override
  String get keyboardKeyScrollLock => throw UnimplementedError();

  @override
  String get keyboardKeySelect => throw UnimplementedError();

  @override
  String get keyboardKeySpace => throw UnimplementedError();

  @override
  String get lastPageTooltip => throw UnimplementedError();

  @override
  String licensesPackageDetailText(int licenseCount) {
    throw UnimplementedError();
  }

  @override
  String get licensesPageTitle => throw UnimplementedError();

  @override
  String get menuBarMenuLabel => "메뉴 바";

  // @override
  // String get modalBarrierDismissLabel => throw UnimplementedError();

  @override
  String get moreButtonTooltip => "복사";

  @override
  List<String> get narrowWeekdays => ['월요일',
    '화요일',
    '수요일',
    '목요일',
    '금요일',
    '토요일',
    '일요일',];

  @override
  String get nextMonthTooltip => "다음 달";

  @override
  String get nextPageTooltip => "다음 페이지";

  @override
  String get okButtonLabel => "확인";

  @override
  String get openAppDrawerTooltip =>"앱 서랍 열기";

  @override
  String pageRowsInfoTitle(int firstRow, int lastRow, int rowCount, bool rowCountIsApproximate) {
    throw UnimplementedError();
  }

  @override
  DateTime? parseCompactDate(String? inputString) {
    throw UnimplementedError();
  }

  @override
  String get pasteButtonLabel => "붙여넣기";

  @override
  String get popupMenuLabel => "";

  @override
  String get postMeridiemAbbreviation => "";

  @override
  String get previousMonthTooltip => "전 달";

  @override
  String get previousPageTooltip => "전 페이지";

  @override
  String get refreshIndicatorSemanticLabel => "새로 고침";

  @override
  String remainingTextFieldCharacterCount(int remaining) {
    throw UnimplementedError();
  }

  @override
  String get reorderItemDown =>"재주문";

  @override
  String get reorderItemLeft => "재주문";

  @override
  String get reorderItemRight => "재주문";

  @override
  String get reorderItemToEnd => "재주문 종료";

  @override
  String get reorderItemToStart => "재주문 시작";

  @override
  String get reorderItemUp => "재주문";

  @override
  String get rowsPerPageTitle => "페이지 제목당 행";

  @override
  String get saveButtonLabel => "저장";

  @override
  ScriptCategory get scriptCategory => ScriptCategory.dense;

  @override
  String get searchFieldLabel => "검색 필드";

  @override
  String get selectAllButtonLabel => "전체선택";

  @override
  String get selectYearSemanticsLabel => "연도 선택";

  @override
  String selectedRowCountTitle(int selectedRowCount) {
    throw UnimplementedError();
  }

  @override
  String get showAccountsLabel => '显示帐号';

  @override
  String get showMenuTooltip => '显示菜单';

  @override
  String get signedInLabel => '已登录';

  @override
  String tabLabel({required int tabIndex, required int tabCount}) => '第 $tabIndex 个标签，共 $tabCount 个';

  @override
  TimeOfDayFormat timeOfDayFormat({bool alwaysUse24HourFormat = false}) => TimeOfDayFormat.a_space_h_colon_mm;

  @override
  String get timePickerDialHelpText => '选择时间';

  @override
  String get timePickerHourLabel => '小时';

  @override
  String get timePickerHourModeAnnouncement => '选择小时';

  @override
  String get timePickerInputHelpText => '输入时间';

  @override
  String get timePickerMinuteLabel => '分钟';

  @override
  String get timePickerMinuteModeAnnouncement => '选择分钟';

  @override
  String get unspecifiedDate => '日期';

  @override
  String get unspecifiedDateRange => '日期范围';

  @override
  String get viewLicensesButtonLabel => '查看许可';

  @override
  // TODO: implement modalBarrierDismissLabel
  String get modalBarrierDismissLabel => "Close";

  @override
  // TODO: implement bottomSheetLabel
  String get bottomSheetLabel => "Close";

  @override
  // TODO: implement currentDateLabel
  String get currentDateLabel => "Close";

  @override
  // TODO: implement keyboardKeyShift
  String get keyboardKeyShift => "Close";

  @override
  // TODO: implement scanTextButtonLabel
  String get scanTextButtonLabel => "Close";

  @override
  // TODO: implement scrimLabel
  String get scrimLabel => "Close";

  @override
  String scrimOnTapHint(String modalRouteContentName) {
    // TODO: implement scrimOnTapHint
    return "Close";
  }

  @override
  // TODO: implement lookUpButtonLabel
  String get lookUpButtonLabel => "상세보기";

  @override
  // TODO: implement menuDismissLabel
  String get menuDismissLabel => "menuDismissLabel";

  @override
  // TODO: implement searchWebButtonLabel
  String get searchWebButtonLabel => "인터넷 검색";

  @override
  // TODO: implement shareButtonLabel
  String get shareButtonLabel => "공유";
}
