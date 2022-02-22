import 'package:intl/intl.dart';

import '../../constants/app_constants.dart';


extension DateTimeExtension on DateTime{
  String get toStringDMY => DateFormat(dateTimeDefaultPattern).format(this);

  String get toStringTime => DateFormat('hh:mm').format(this);
}