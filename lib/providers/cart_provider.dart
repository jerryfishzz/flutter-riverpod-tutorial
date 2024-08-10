import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

// Set here is to avoid duplicate
class CartNotifier extends Notifier<Set<Product>> {
  // Initial value
  @override
  Set<Product> build() {
    return {
      const Product(
          id: '4',
          title: 'Red Backpack',
          price: 14,
          image: 'assets/products/backpack.png'),
    };
  }

  // Methods to update state
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
  return CartNotifier();
});
