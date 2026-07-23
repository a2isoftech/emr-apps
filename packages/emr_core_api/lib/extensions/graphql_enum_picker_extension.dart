extension GraphqlEnumPickerExtension<E extends Enum> on Iterable<E> {
  Iterable<E> get filterValues =>
      where((e) => e.name != r'$unknown' && e.name != 'UNKNOWN');
}
