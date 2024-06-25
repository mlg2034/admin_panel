class ParseUtils {
  static int? parseInt(dynamic str) {
    if (str == null) return null;
    try {
      return int.parse(str);
    } catch (e) {
      return null;
    }
  }

  static double parseDouble(dynamic str) {
    if (str is int) {
      return str.toDouble();
    } else if (str is double) {
      return str;
    } else if (str is String) {
      return double.parse(str);
    } else {
      throw Exception('Unknown type: ${str.runtimeType}');
    }
  }

  static bool parseBool(dynamic str) {
    return str?.toLowerCase() == 'true';
  }

  static DateTime? parseDate(dynamic str, {String format = "yyyy-MM-dd"}) {
    if (str == null) return null;
    try {
      return DateTime.parse(str);
    } catch (e) {
      return null;
    }
  }

  static String intToString(dynamic value) {
    if (value == null) return "";
    return value.toString();
  }

  static int toInt(dynamic value){
    if(value is String){
      return int.parse(value);
    }else if (value is double){
      return value.toInt();
    }else {
      return value;
    }
  }

  static String doubleToString(dynamic value) {
    if (value == null) return "";
    return value.toString();
  }

  static String boolToString(dynamic value) {
    if (value == null) return "false";
    return value ? "true" : "false";
  }

  static String dateToString(dynamic date, {String format = "yyyy-MM-dd"}) {
    if (date == null) return "";
    return date.toIso8601String();
  }
}
