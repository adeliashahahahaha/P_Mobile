import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat widget titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(
          32), // padding sepanjang tepinya sebesar 32 piksel
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // Warna teks diatur menjadi abu-abu
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red, // Warna ikon bintang diatur ke merah
          ),
          const Text('41'),
        ],
      ),
    );


Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    // Mendapatkan warna tema dan membuat buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Maecenas sit amet turpis a odio suscipit gravida. Aenean sit amet quam neque. Nullam fermentum, justo nec pulvinar pretium, eros purus pretium sem, at malesuada erat lorem id turpis. Donec vehicula sollicitudin libero non vestibulum. Ut ut ipsum id mauris mollis pharetra at eget libero. Fusce dictum urna at felis ultrices, nec lobortis enim gravida. Ut sit amet tincidunt nibh.'

'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis vehicula dui id nunc sollicitudin, in sodales velit fermentum. Donec volutpat tellus ut felis scelerisque, sit amet dapibus velit scelerisque. Curabitur tristique nulla ac nisi faucibus, ut efficitur sapien lacinia. Aliquam erat volutpat. Nullam vitae magna nec arcu condimentum dignissim. In hac habitasse platea dictumst. Vivamus condimentum, lorem sit amet vulputate bibendum, nunc purus fringilla arcu, nec pulvinar urna risus in lorem.'

'Curabitur ac orci purus. Proin lacinia tortor vitae risus tincidunt, at viverra nunc dapibus. Nulla facilisi. Sed non varius neque. Nulla facilisi. Vestibulum imperdiet ante eu metus ultricies bibendum. Praesent tristique eros ut velit dapibus, ut luctus arcu tristique.'
        'ADELIA SYAHARANI | SIB 3D | 2241760066 🙂.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: ADEL, 2241760000',
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'images/kucing.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, // Menampilkan widget titleSection
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}