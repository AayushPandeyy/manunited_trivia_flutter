import 'dart:math';

class Utilities{
  double truncateToDecimalPlaces(double value, int decimalPlaces) {
  final num fac = pow(10, decimalPlaces);
  return (value * fac).truncateToDouble() / fac;
}
}