import 'package:intl/intl.dart';

class AppDateFormat {
  static String appDateFormat({required String date}) {
    DateFormat inputFormat = DateFormat('E, d MMM yyyy HH:mm:ss Z');
    DateFormat outputFormat = DateFormat('dd-MM-yyyy').add_Hm();

    DateTime parsedDate = inputFormat.parse(date);
    String formattedDate = outputFormat.format(parsedDate);
    return formattedDate;
  }
}
