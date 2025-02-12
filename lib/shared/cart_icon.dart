import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/screens/cart/cart_screen.dart';

import '../providers/cart_provider.dart';

class CartIcon extends ConsumerWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartProducts = ref.watch(cartNotifierProvider);
    return Stack(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const CartScreen();
            }));
          },
          icon: const Icon(Icons.shopping_bag_outlined),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
            width: 18,
            height: 18,
            alignment: Alignment.center,
            child: Text(
              cartProducts.length.toString(),
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
            ),
          ),
        ),
      ],
    );
  }
}
