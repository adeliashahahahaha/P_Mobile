import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Text(
          'Ini adalah aplikasi UTS sederhana untuk Pemrograman Mobile.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
