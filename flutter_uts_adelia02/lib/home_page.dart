// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final username = ModalRoute.of(context)!.settings.arguments as String? ?? 'Guest';
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Halaman Utama'),
//       ),
//       drawer: Drawer(
//         child: Column(
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Menu Navigasi',
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//             ),
//             ListTile(
//               title: Text('Profile'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/profile', arguments: username);
//               },
//             ),
//             ListTile(
//               title: Text('About'),
//               onTap: () {
//                 Navigator.pushNamed(context, '/about');
//               },
//             ),
//             Spacer(),
//             ListTile(
//               title: Text('Logout'),
//               onTap: () {
//                 Navigator.pushReplacementNamed(context, '/login');
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: Text(
//           'Selamat datang, $username!',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String? ?? 'Guest';

    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Header Drawer dengan styling yang lebih menarik
            UserAccountsDrawerHeader(
              accountName: Text(
                username,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              accountEmail: Text('email@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.blue,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text('Profile', style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pushNamed(context, '/profile', arguments: username);
              },
            ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.blue),
              title: Text('About', style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            Divider(), // Pembatas antara menu dan logout
            // Menu Logout
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text('Logout', style: TextStyle(fontSize: 16, color: Colors.red)),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Selamat datang, $username!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
