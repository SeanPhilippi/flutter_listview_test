import '../../app_core.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexString) {
    String hexColor = hexString.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexString) : super(_getColorFromHex(hexString));
}
