import 'package:flutter/material.dart';
import 'login.dart'; // Impor halaman LoginPage

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
              'CERITERA',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),

            // Deskripsi
            Text(
              'Through our application you can\n easily get solutions to all your\n personal problems',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 50),

            // Tombol Sign Up (tidak berubah, jika tetap diperlukan)
            ElevatedButton(
              onPressed: () {
                // Aksi untuk Sign Up (bisa dikosongkan dulu jika belum ada halaman Sign Up)
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.white, // Warna tombol putih
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.blue.shade700, fontSize: 18),
              ),
            ),
            SizedBox(height: 20),

            // Tombol Login (menggantikan Sign In)
            OutlinedButton(
              onPressed: () {
                // Navigasi ke LoginPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                side: BorderSide(color: Colors.white, width: 2),
              ),
              child: Text(
                'Login', // Ganti teks menjadi "Login"
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
