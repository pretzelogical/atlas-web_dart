double roundTo(double number, int places) {
  return double.parse(number.toStringAsFixed(places));
}

List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC
      .map((temp) => roundTo((temp * 9 / 5) + 32, 2))
      .toList();
}