import 'package:intl/intl.dart';

var numberFormat = NumberFormat("#,###", "vi_VN");

String convertNumber(int number) {
  return numberFormat.format(number);
}
