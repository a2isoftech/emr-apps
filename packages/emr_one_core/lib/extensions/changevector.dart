extension ChangeVectorExtension on String {
  bool isNewerThan(String other) {
    // Parse the digit portion of the start of this string
    // "A:7944449-4anNEdqu1UKG+bUdDnnW1g, RAFT:4-Oc/FIRlREU+BFPniBoUlaQ"
    final thisDigits =
        int.parse(RegExp(r'(?<=[ABC]:)\d+').firstMatch(this)!.group(0)!);
    final otherDigits =
        int.parse(RegExp(r'(?<=[ABC]:)\d+').firstMatch(other)!.group(0)!);

    return thisDigits > otherDigits;
  }
}
