import 'package:intl/intl.dart';

import '../../constants/app_constants.dart';

extension MyStringExtension on String?{
  bool get isEmptyTrim => this!.trim().isEmpty;

  String get trimLowerCase => this!.trim().toLowerCase();

  DateTime get toDateTime{
    return DateFormat(dateTimeDefaultPattern).parse(this!);
  }

  bool get isNullOrEmpty => this == null ? true : this!.isEmpty;

  bool get isNotNullOrEmpty => this != null || this!.isNotEmpty;
}
