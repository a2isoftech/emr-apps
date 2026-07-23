extension StringAddition on String{
  String addStringAsDouble(String other) {
    final number1 = double.tryParse(this) ?? 0.0;
    final number2 = double.tryParse(other) ?? 0.0;

    final sum = number1 + number2;

    final formattedSum = sum.toStringAsFixed(2);

    return formattedSum;
  }
}
