import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/providers/cart_provider.dart';
import 'package:riverpod_files/shared/cart_icon.dart';

import '../../providers/product_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(allProductsProvider);
    final cartProducts = ref.watch(cartNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garage Sale Products'),
        actions: const [CartIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blueGrey.withOpacity(0.05),
              child: Column(
                children: [
                  Image.asset(
                    products[index].image,
                    width: 50,
                    height: 50,
                  ),
                  Text(products[index].title),
                  Text("Rs ${products[index].price}"),
                  if (cartProducts.contains(products[index]))
                    TextButton(
                        onPressed: () {
                          ref
                              .read(cartNotifierProvider.notifier)
                              .removeProduct(products[index]);
                        },
                        child: Text("Remove"))
                  else
                    TextButton(
                        onPressed: () {
                          ref
                              .read(cartNotifierProvider.notifier)
                              .addProduct(products[index]);
                        },
                        child: Text("Add to Cart"))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
