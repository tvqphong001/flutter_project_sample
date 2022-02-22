import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

String dateTimeToStringYMD(DateTime time) {
  return "${DateFormat('yyyy/MM/dd').format(time)}";
}

String dateTimeToShortString(DateTime time) {
  // convert to local
  return "${DateFormat('MM月dd日 HH:mm').format(time.toLocal())}";
}

DateTime stringToDateTime(String time) {
  return DateFormat('dd/MM/yyyy').parse(time);
}

String timeAgo(DateTime? date) {
  return date != null ? timeago.format(date, allowFromNow: true) : "";
}

String get timeNow => DateTime.now().millisecondsSinceEpoch.toString();
