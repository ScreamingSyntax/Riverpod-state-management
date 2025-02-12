import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_files/models/product.dart';
import 'package:riverpod_files/providers/product_provider.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Set<Product> build() {
    return {};
  }

  void addProduct(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

// ignore: prefer_function_declarations_over_variables
@riverpod
num cartTotal(ref) {
  final cartProducts = ref.watch(cartNotifierProvider);
  num total = 0;
  for (var products in cartProducts) {
    total += products.price;
  }
  return total;
}
