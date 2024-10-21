import 'package:flutter/material.dart';
import 'package:first_app/pages/home/widgets/product_card.dart';
import 'package:first_app/pages/home/model/product_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bodega Digital',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ProductListPage(),
    );
  }
}

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bodega Digital'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.green,
            width: double.infinity,
            height: 150,
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Lista de productos',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/cart.png',
                  width: 80,
                  height: 80,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: const [
                  ProductCard(product: ProductType.arroz),
                  ProductCard(product: ProductType.azucar),
                  ProductCard(product: ProductType.aceite),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
