// import 'package:flutter/services.dart';
// import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
// import 'package:intl/intl.dart';
//
// String currencyFormatter(double value, {bool withoutSymbol = false}) {
//   var currencyFormatter = NumberFormat.currency(
//           locale: "ko_KR", symbol: "", name: "", decimalDigits: 0)
//       .format(value);
//   if (withoutSymbol) return currencyFormatter;
//   return "$currencyFormatter원";
// }
//
// String calculateDiscount(
//     {required double price, required double originalPrice}) {
//   var discountRate = originalPrice - price;
//   return ((discountRate / originalPrice * 100).toInt()).toString();
// }
//
// class Regexpr {
//   static RegExp Email = RegExp(
//       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
//   static RegExp Password =
//       RegExp(r'^(?=.*[a-z])(?=.*\d)(?=.*[\!\ @#$%^&+=]).{8,16}$');
//   static RegExp NickName = RegExp(r"^([a-zA-Z]{4,15}|[ㄱ-ㅎ가-힣]{2,10})$");
//   static RegExp Phone = RegExp(r"^\d{3}-\d{4}-\d{4}$");
//   static RegExp NickNameInput = RegExp(r'[a-z|A-Z|가-힣|ㄱ-ㅎ]');
//   static RegExp NumberInput = RegExp('[0-9]');
//   static RegExp PasswordInput =
//       RegExp('[0-9a-zA-Z!@#\$%^&*()-_=~`{}[]|:;"\']');
//   static RegExp PhoneInput = RegExp('[0-9-]');
//   static RegExp BirthdayInput = RegExp('[0-9.]');
//   static RegExp HashTag = RegExp(r"\#\w+(?: \#\w+)+");
//   static RegExp HashTagBoundary = RegExp(r"(\B#\w+\b)");
//   static RegExp HashTagInput = RegExp('[a-zA-Zㄱ-ㅎ가-힣#]');
//   static RegExp HashTagExtract =
//       RegExp(r'(?:(?<=\s)|^)#(\w*[A-Z0-9a-z_ㄱ-ㅎ가-힣]+\w*)');
//   static RegExp NameInput = RegExp('[가-힣]');
//   static RegExp ExtractReviewId = RegExp(r'(\d{1,})');
//   static RegExp ExtractConsultingIRI =
//       RegExp(r'/api/mindtt/consultings/\d{1,}');
//   static RegExp BirthYear = RegExp(r'^(19|20)\d{2}$');
// }
//
// List<TextInputFormatter> customPhoneInputFormatter() {
//   return [
//     FilteringTextInputFormatter.allow(Regexpr.PhoneInput),
//     MaskedInputFormatter('###-####-####')
//   ];
// }
//
// List<TextInputFormatter> customBirthdayInputFormatter() {
//   return [
//     FilteringTextInputFormatter.allow(Regexpr.BirthdayInput),
//     MaskedInputFormatter('####.##.##')
//   ];
// }
