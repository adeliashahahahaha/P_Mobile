import 'package:flutter/material.dart';
import 'login.dart'; 
import 'home_page.dart';     
import 'profil_page.dart';    
import 'about_page.dart';    

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi UTS Mobile | Adelia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
      routes: {
        '/login': (context) => LoginPage(),  // Tambahkan route untuk LoginPage
        '/home': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700, // Warna latar belakang biru
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Judul utama
            Text(
              'ETS',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),

            // Deskripsi
            Text(
              'Ini aplikasi untuk penilaian UTS mata kuliah pemrograman mobile dirancang oleh Adelia SIB 3D.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 50),

            // Tombol Login
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman login
                Navigator.pushNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.white, // Warna tombol putih
              ),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.blue.shade700, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
