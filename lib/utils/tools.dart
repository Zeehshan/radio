import 'dart:ui';

class Tools {
  Color color({required String hexa}) {
    return Color(int.parse(hexa.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
