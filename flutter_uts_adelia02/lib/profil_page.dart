// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final username = ModalRoute.of(context)!.settings.arguments as String? ?? 'Guest';
    
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//       ),
//       body: Center(
//         child: Text(
//           'Username: $username',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             // Bagian latar belakang gambar dan avatar
//             Stack(
//               alignment: Alignment.center,
//               children: [
//                 // Gambar Latar Belakang
//                 Image.network(
//                   'https://your-image-url-here.com/background-image.jpg', // Ganti URL dengan gambar latar belakang yang sesuai
//                   height: 250,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//                 // Avatar
//                 Positioned(
//                   bottom: -50,
//                   child: CircleAvatar(
//                     radius: 50,
//                     backgroundColor: Colors.white,
//                     child: CircleAvatar(
//                       radius: 45,
//                       backgroundImage: NetworkImage(
//                         'https://your-image-url-here.com/avatar-image.png', // Ganti dengan URL gambar avatar
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 60), // Spasi untuk menempatkan avatar dengan konten bawahnya

//             // Nama dan jabatan
//             Text(
//               'Nabil Chen',
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 5),
//             Text(
//               'Director of Sahretech',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.grey,
//               ),
//             ),
//             SizedBox(height: 20),

//             // Tombol Follow, Message, dan Edit
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Tombol Follow
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     // Aksi untuk Follow
//                   },
//                   icon: Icon(Icons.person_add),
//                   label: Text('Follow'),
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(horizontal: 30),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     backgroundColor: Colors.blue, // Warna tombol
//                   ),
//                 ),
//                 SizedBox(width: 10),

//                 // Tombol Message
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     // Aksi untuk Message
//                   },
//                   icon: Icon(Icons.message),
//                   label: Text('Message'),
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(horizontal: 30),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     backgroundColor: Colors.blue, // Warna tombol
//                   ),
//                 ),
//                 SizedBox(width: 10),

//                 // Tombol Edit
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     // Aksi untuk Edit
//                   },
//                   icon: Icon(Icons.edit),
//                   label: Text('Edit'),
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(horizontal: 30),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     backgroundColor: Colors.blue, // Warna tombol
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 30),

//             // Bagian untuk statistik (Posts, Followers, Following)
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 // Jumlah Posts
//                 Column(
//                   children: [
//                     Text(
//                       '900',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text('Posts'),
//                   ],
//                 ),
//                 // Jumlah Followers
//                 Column(
//                   children: [
//                     Text(
//                       '9,204',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text('Followers'),
//                   ],
//                 ),
//                 // Jumlah Following
//                 Column(
//                   children: [
//                     Text(
//                       '300',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text('Following'),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ambil username dari argument yang dikirim
    final username = ModalRoute.of(context)!.settings.arguments as String? ?? 'Guest';

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Bagian latar belakang gambar dan avatar
            Stack(
              alignment: Alignment.center,
              children: [
                // Gambar Latar Belakang
                Image.network(
                  'https://mai-image-url-here.com/background-image.jpg', 
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // Avatar
                Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage(
                        'https://your-image-url-here.com/avatar-image.png', 
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60), // Spasi untuk menempatkan avatar dengan konten bawahnya

            // Nama dan jabatan
            Text(
              username,  // Menggunakan variabel username yang sudah didefinisikan
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Director of Sahretech',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),

            // Tombol Follow, Message, dan Edit
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tombol Follow
                ElevatedButton.icon(
                  onPressed: () {
                    // Aksi untuk Follow
                  },
                  icon: Icon(Icons.person_add),
                  label: Text('Follow'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.blue, // Warna tombol
                  ),
                ),
                SizedBox(width: 10),

                // Tombol Message
                ElevatedButton.icon(
                  onPressed: () {
                    // Aksi untuk Message
                  },
                  icon: Icon(Icons.message),
                  label: Text('Message'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.blue, // Warna tombol
                  ),
                ),
                SizedBox(width: 10),

                // Tombol Edit
                ElevatedButton.icon(
                  onPressed: () {
                    // Aksi untuk Edit
                  },
                  icon: Icon(Icons.edit),
                  label: Text('Edit'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.blue, // Warna tombol
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            // Bagian untuk statistik (Posts, Followers, Following)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Jumlah Posts
                Column(
                  children: [
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Posts'),
                  ],
                ),
                // Jumlah Followers
                Column(
                  children: [
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Followers'),
                  ],
                ),
                // Jumlah Following
                Column(
                  children: [
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Following'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
