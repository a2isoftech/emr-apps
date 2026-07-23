extension DoubleExtensions on double {
  double get absoluteIfZero => this == 0 ? abs() : this;
}
