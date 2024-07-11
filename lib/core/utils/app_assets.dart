class AppAssets {
  static Images images = const Images();
  static IconsInAssets icons = const IconsInAssets();
  static TxtInAssets txt = const TxtInAssets();
  static LottieAssets lottie = const LottieAssets();

  const AppAssets._();
}

class TxtInAssets {
  const TxtInAssets();

  String get policyPart1 => 'assets/policies/Part 1.pdf';

  String get policyPart2 => 'assets/policies/Part 2.pdf';

  String get policyPart3 => 'assets/policies/Part 3.pdf';

  String get policyPart4 => 'assets/policies/Part 4.pdf';
}

class Images {
  const Images();

  String get logo => "assets/images/splash/splash.svg";
  String get login => "assets/images/login/login.svg";
  String get login2 => "assets/images/login/login_photo.png";
  String get splash => "assets/images/splash/splash.svg";
  String get doctor => "assets/images/intro/intro_doctor.png";
  String get intro1 => "assets/images/intro/intro_1.png";
}

class IconsInAssets {
  const IconsInAssets();

  String get logo => "assets/logo.svg";

  String get ok => "assets/icons/registration/ok.svg";
  String get appleLogin => "assets/images/login/appleLogin.svg";
  String get emailLogin => "assets/images/login/emailLogin.svg";
  String get kakao => "assets/images/login/kakao_login.svg";
  String get naver => "assets/images/login/naverLogin.svg";
  String get versus_proper => "assets/images/login/atSymbol.svg";
  String get google => "assets/images/login/google.svg";
  String get googleLogin => "assets/images/login/googleLogin.svg";
  String get success => "assets/images/login/success.svg";


  String get home => "assets/images/home/home.svg";

  String get document => "assets/images/home/document.svg";

  String get consulting => "assets/icons/bottom-nav/consulting.svg";

  String get myPage => "assets/images/home/my_page.svg";


  String get search => "assets/images/home/search.svg";
  String get searchIcon => "assets/images/reservation/search_icon.svg";

  String get selected => "assets/images/login/selected.svg";
  String get unselected => "assets/images/login/unselected.svg";
  String get girl => "assets/images/login/girl.svg";
  String get men => "assets/images/login/men.svg";
  String get bell => "assets/images/home/bell.svg";
  String get push_not_granted => "assets/images/my_page/push_not_granted.svg";

///home icons
  String get caution => "assets/images/home/caution.svg";
  String get health_managment => "assets/images/home/health_managment.svg";
  String get avarageAgeHealth => "assets/images/home/40_age_health_check.svg";
  String get oldAgeHealth => "assets/images/home/50_heath_check.svg";
  String get checkResult => "assets/images/home/check_result.svg";
  String get healthCheckList => "assets/images/home/helth_check_list.svg";
  String get healthCheckCompare => "assets/images/home/health_check_compare.svg";
  String get heartHealth => "assets/images/home/heart_health.svg";
  String get aiCheck => "assets/images/home/ai_check.svg";
  String get homeReserveHospital => "assets/images/home/home_reserve_hospital.svg";
  String get b2bBox => "assets/images/home/b2bBox.svg";
  String get b2cBox => "assets/images/home/b2cBox.svg";

  String get bannerTest => "assets/images/home/banner01.png";
  String get callCounseling => "assets/images/home/call_counseling.svg";
  String get kakaoCounseling => "assets/images/home/kakao_counseling.svg";

  String get companyPartnership => "assets/images/home/company_partnership.svg";
  String get announcement => "assets/images/home/announcement.svg";
  String get filterIcon => "assets/images/home/filter_icon.svg";
  String get recycling => "assets/images/home/recycling.svg";
  /// reserve_record 검진내옹
  String get selectedRadio => "assets/images/reserve_record/selected_radio.svg";
  String get unselectedRadio => "assets/images/reserve_record/unselected_radio.svg";
  String get close => "assets/images/reserve_record/close.svg";

  ///myPage
  String get setting => "assets/images/my_page/setting.svg";
  String get location => "assets/images/my_page/location.svg";
  String get push => "assets/images/my_page/push.svg";
  String get familySetting => "assets/images/my_page/family_setting.svg";
  String get noPush => "assets/images/my_page/no_push.svg";
  ///address add and managment page
  String get address_home => "assets/images/my_page/home.svg";

  String get company => "assets/images/my_page/company.svg";
  String get companyInfos => "assets/images/home/company_infos.svg";
  String get currentLocationIcon => "assets/images/my_page/current_location_icon.svg";
  String get location2 => "assets/images/reservation/location2.svg";
  String get currentLocationBoldIcon => "assets/images/my_page/current_location_bold_icon.svg";
  String get phone => "assets/images/other/phone.svg";

  String get addressHome => "assets/images/my_page/home_address_icon.svg";
  String get addressCompany => "assets/images/my_page/address_company.svg";
  String get noListOfPayment => "assets/images/my_page/noListOfPayment.svg";
  String get partnership_suggestion => "assets/images/my_page/partnership_suggestion.svg";

  /// caution

  String get cautions => "assets/images/caution/caution.svg";
  String get endoscopy => "assets/images/caution/endoscopy.svg";
  String get gastrointestinalContrastt => "assets/images/caution/Gastrointestinal_contrastt.svg";
  String get polypectomy => "assets/images/caution/polypectomy.svg";
  String get ultrasoundExamination => "assets/images/caution/Ultrasound_examination.svg";

///reservation detail
  String get my_location => "assets/images/other/location.svg";
  String get error => "assets/images/other/caution.svg";
  String get errorGrey => "assets/images/other/caution_grey.svg";
  String get payment_cancel_infos => "assets/images/other/payment_cancel_infos.svg";
  String get B2B_cancel_payment => "assets/images/other/B2B_cancel_payment.svg";
  String get payment_cancel_infos2 => "assets/images/other/payment_cancel_infos2.svg";
  String get payment_cancel_infos_for_cancelling => "assets/images/reserve_record/refund_info.svg";
  String get rectangle_selected => "assets/images/other/rectangle_selected.svg";
  String get rectangle_unselected => "assets/images/other/rectangle_unselected.svg";
  // B2C reservation
  String get lineDivider => "assets/images/reservation/lineDivider.svg";
  String get lineDivider2 => "assets/images/reservation/lineDivider2.svg";
  String get bus => "assets/images/reservation/bus.svg";
  String get errorRed => "assets/images/reservation/caution.svg";
  String get caution3 => "assets/images/reservation/caution3.svg";
  String get document_icon => "assets/images/other/document.svg";
  String get reservation_agreement1 => "assets/images/reservation/reservation_agreement1.svg";
  String get reservation_agreement2 => "assets/images/reservation/reservation_agreement2.svg";
  String get no_data => "assets/images/reservation/no_data.svg";
  String get callCounseling2 => "assets/images/reservation/call_counseling2.svg";
  String get kakaoCounseling2 => "assets/images/reservation/kakao_counseling2.svg";
  String get like => "assets/images/reservation/like.svg";
  String get like_active => "assets/images/reservation/like_active.svg";
  String get people => "assets/images/reservation/people.svg";
  String get map => "assets/images/reservation/map.svg";
  // other
  String get arrowRight => "assets/images/other/arrowRight.svg";
  String get arrowTop => "assets/images/home/arrowTop.svg";
  String get arrowDown => "assets/images/other/arrow2.svg";
  String get selectedIcon => "assets/images/reservation/selected.svg";
  String get circle => "assets/images/reservation/circle.svg";
  String get close2 => "assets/images/reservation/close2.svg";
}

class LottieAssets {
  const LottieAssets();

  String get error => 'assets/lottie/error.json';

  String get empty => 'assets/images/other/empty.svg';

  String get confetti => 'assets/lottie/confetti.json';
}
