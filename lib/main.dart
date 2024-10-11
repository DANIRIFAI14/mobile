import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Barang Bekas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ThriftShopHomePage(),
    );
  }
}

class ThriftShopHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toko Barang Bekas'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          ThriftShopItem(
            title: 'Jaket Denim Vintage',
            price: 'Rp 200.000,00',
            image: 'assets/denim_jacket.jpg',
          ),
          ThriftShopItem(
            title: 'Kacamata Retro',
            price: 'Rp 100.000,00',
            image: 'assets/sunglasses.jpg',
          ),
          ThriftShopItem(
            title: 'Celana Jeans Levi\'s',
            price: 'Rp 300.000,00',
            image: 'assets/levis_jeans.jpg',
          ),
          ThriftShopItem(
            title: 'Sepatu Converse',
            price: 'Rp 250.000,00',
            image: 'assets/converse_shoes.jpg',
          ),
        ],
      ),
    );
  }
}

class ThriftShopItem extends StatelessWidget {
  final String title;
  final String price;
  final String image;

  ThriftShopItem({required this.title, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(image),
          Text(title),
          Text(price),
        ],
      ),
    );
  }
}