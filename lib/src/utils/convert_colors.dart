int hexToColor(String hexColor) {
  return int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000;
}

int hexToColorWithTransparency(String hexColor) {
  return int.parse(hexColor.substring(1, 7), radix: 16) + 0x80000000;
}
