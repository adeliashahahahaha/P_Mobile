import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class item_page extends StatelessWidget {
  final item itemArgs; // Tambahkan parameter itemArgs

  // Perbarui konstruktor untuk menerima itemArgs
  const item_page({required this.itemArgs, super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil data yang dikirimkan dari HomePage
    final item itemArgs = ModalRoute.of(context)!.settings.arguments as item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    tag: 'imageHero-${itemArgs.name}',
                    child: Image.asset(
                      itemArgs.imageUrl,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Product: ${itemArgs.name}',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('Price: ${itemArgs.price}'),
                  Text('Stock: ${itemArgs.stock}'),
                  Text('Rating: ${itemArgs.rating}'),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.bottomCenter,
            child: const Text('Nama: ADELIA, NIM: 224760066'),
          ),
        ],
      ),
    );
  }
}
