import 'package:emr_sharedtypes/enums/payment_method.dart';
import 'package:flutter/foundation.dart';

class PaymentBasketController<T> extends ChangeNotifier {
  PaymentBasketController({
    this.getItemPrice,
    this.isSameItem,
    this.getCurrencyCode,
  }) {
    selectedItems.addListener(notifyListeners);

    basketItems.addListener(() {
      _updateCounts();
      notifyListeners();
    });
  }

  final ValueNotifier<List<T>> selectedItems = ValueNotifier<List<T>>([]);
  final ValueNotifier<List<T>> basketItems = ValueNotifier<List<T>>([]);

  final ValueNotifier<(int, double)> basketStateNotifier =
      ValueNotifier<(int, double)>((0, 0.0));

  PaymentMethod? selectedPaymentMethod;

  double Function(T item)? getItemPrice;
  bool Function(T a, T b)? isSameItem;
  String? Function(T? item)? getCurrencyCode;
  final ValueNotifier<bool> canPay = ValueNotifier<bool>(false);

  @override
  void dispose() {
    selectedItems.dispose();
    basketItems.dispose();
    basketStateNotifier.dispose();
    super.dispose();
  }

  // --- PUBLIC METHODS ---

  // Selected Items
  void addSelectedItem(T item) => _addItem(selectedItems, item);
  void addSelectedItems(List<T> items) => _addItems(selectedItems, items);
  void removeSelectedItem(T item) => _removeItem(selectedItems, item);
  void clearSelectedItems() => _clearItems(selectedItems);

  // Basket Items
  void addBasketItem(T item) => _addItem(basketItems, item);
  void addBasketItems(List<T> items) => _addItems(basketItems, items);
  void removeBasketItem(T item) => _removeItem(basketItems, item);
  void clearBasketItems() => _clearItems(basketItems);

  // Optional toggle
  void toggleSelectedItem(T item) => _toggleItem(selectedItems, item);
  void toggleBasketItem(T item) => _toggleItem(basketItems, item);

  void updateItem(T item) {}

  // --- PRIVATE HELPERS ---

  void _addItem(ValueNotifier<List<T>> listNotifier, T item) {
    if (!_contains(listNotifier.value, item)) {
      listNotifier.value = [...listNotifier.value, item];
    }
  }

  void _addItems(ValueNotifier<List<T>> listNotifier, List<T> items) {
    var current = listNotifier.value;
    for (final item in items) {
      if (!_contains(current, item)) {
        current = [...current, item];
      }
    }
    listNotifier.value = current;
  }

  void _removeItem(ValueNotifier<List<T>> listNotifier, T item) {
    listNotifier.value =
        listNotifier.value.where((i) => !_isSame(i, item)).toList();
  }

  void _clearItems(ValueNotifier<List<T>> listNotifier) {
    if (listNotifier.value.isNotEmpty) {
      listNotifier.value = [];
    }
  }

  void _toggleItem(ValueNotifier<List<T>> listNotifier, T item) {
    if (_contains(listNotifier.value, item)) {
      _removeItem(listNotifier, item);
    } else {
      _addItem(listNotifier, item);
    }
  }

  void _updateCounts() {
    basketStateNotifier.value = (
      basketItems.value.length,
      getItemPrice == null
          ? 0.0
          : basketItems.value.fold(
              0,
              (sum, item) => sum + getItemPrice!(item),
            )
    );
  }

  bool _contains(List<T> list, T item) => list.any((i) => _isSame(i, item));

  bool _isSame(T a, T b) => isSameItem?.call(a, b) ?? a == b;
}
