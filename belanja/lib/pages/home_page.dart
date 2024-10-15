import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class home_page extends StatelessWidget {
  final List<item> items = [
    item(name: 'Sugar', price: 5000, imageUrl: 'images/sugar.jpeg', stock: 10, rating: 8.5),
    item(name: 'Salt', price: 2000, imageUrl: 'images/salt.jpeg', stock: 15, rating: 9.0),
  ];

  home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          // Expanded untuk memastikan GridView mengisi ruang yang tersedia
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/item', arguments: item);
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Tambahkan Hero di sini
                          Hero(
                            tag: 'imageHero-${item.name}',  // Tag unik berdasarkan nama produk
                            child: Image.asset(
                              item.imageUrl,
                              height: 100,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              item.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('Price: ${item.price}'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('Stock: ${item.stock}'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('Rating: ${item.rating}'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // Footer dengan nama dan NIM
          Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.bottomCenter,
            child: const Text('Nama: ADELIA, NIM: 2241760066'),
          ),
        ],
      ),
    );
  }
}
