// ignore: non_constant_identifier_names

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/product.dart';
part 'product_provider.g.dart';

List<Product> products = [
  const Product(
      id: '1',
      title: 'Groovy Shorts',
      price: 12,
      image: 'assets/products/shorts.png'),
  const Product(
      id: '2',
      title: 'Karate Kit',
      price: 34,
      image: 'assets/products/karati.png'),
  const Product(
      id: '3',
      title: 'Denim Jeans',
      price: 54,
      image: 'assets/products/jeans.png'),
  const Product(
      id: '4',
      title: 'Red Backpack',
      price: 14,
      image: 'assets/products/backpack.png'),
  const Product(
      id: '5',
      title: 'Drum & Sticks',
      price: 29,
      image: 'assets/products/drum.png'),
  const Product(
      id: '6',
      title: 'Blue Suitcase',
      price: 44,
      image: 'assets/products/suitcase.png'),
  const Product(
      id: '7',
      title: 'Roller Skates',
      price: 52,
      image: 'assets/products/skates.png'),
  const Product(
      id: '8',
      title: 'Electric Guitar',
      price: 79,
      image: 'assets/products/guitar.png'),
];

@riverpod
List<Product> allProducts(ref) {
  return products;
}

@riverpod
List<Product> reducedProducts(ref) {
  return products;
}
