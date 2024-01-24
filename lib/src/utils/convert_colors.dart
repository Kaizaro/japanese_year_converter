import 'dart:ui';

// Color hexToColorFromCopilot(String hexColor) {
//   hexColor = hexColor.replaceAll("#", "");
//   if (hexColor.length == 6) {
//     hexColor = 'FF' "FF" + hexColor;
//   }
//   int colorValue = int.parse(hexColor, radix: 16);
//   return Color(colorValue);
// }

// Color hexToColor(String hexColor) {
//   return Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
// }

// int hexToInteger(String Settings (JSONhex) => int.parse(hex, radix: 16);

int hexToColor(String hexColor) {
  return int.parse('0xFF${hexColor.substring(1, 7)}', radix: 16);
}

Color hexToColorWithTransparency(String hexColor) {
  return Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0x80000000);
}
