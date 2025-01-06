import 'package:intl/intl.dart';

class FormatDate {
  String formatDate(String date) {
    var dateTime = DateTime.parse(date);
    var formattedDate = DateFormat('MMM D, yy').format(dateTime);
    return formattedDate;
  }
}
