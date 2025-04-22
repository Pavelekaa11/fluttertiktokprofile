import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('@EmperorXann', style: TextStyle(color: Colors.white70)),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
        IconButton(
        icon: Icon(Icons.directions_walk_outlined, color: Colors.white),
        onPressed: () {
          // aksi jejak kaki
          print('');
        },
        ),
        IconButton(
        icon: Icon(Icons.menu, color: Colors.white),
        onPressed: () {
          // aksi menu
          print('');
        },
      ),
    ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            // Foto Profil
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'assets/profile.jpeg'), // Ganti dengan gambar profil kamu
            ),
            SizedBox(height: 10),
            // Username
            Text(
              '@nephthysx',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      '123',
                      style: TextStyle(
                          color: Colors.white60,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(color: Colors.white54),
                    )
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      '456',
                      style: TextStyle(
                          color: Colors.white60,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.white54),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      '789',
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    Text(
                      'Likes',
                      style: TextStyle(color: Colors.white54),
                    )
                  ],
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20),
            // Tombol Edit Profil
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: Text('Edit Profil'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: Text('Share profile'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: Icon(Icons.person_add_alt_1_outlined),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            // Bio
            Text(
              'Wu shi Emperor Xann',
              style: TextStyle(color: Colors.grey[300]),
            ),
            SizedBox(height: 20),
            DefaultTabController(
              length: 5,
              child: Column(
                children: [
                  TabBar(indicatorColor: Colors.white, tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on),
                    ),
                    Tab(
                      icon: Icon(Icons.lock_outline),
                    ),
                    Tab(
                      icon: Icon(Icons.repeat_outlined),
                    ),
                    Tab(
                      icon: Icon(Icons.tag),
                    ),
                    Tab(
                      icon: Icon(Icons.favorite_border),
                    ),
                  ]),
                ],
              ),
            ),
            GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                childAspectRatio: 2/3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(15, (index) {
                  return Container(
                    color: Colors.grey[800],
                    alignment: Alignment.center,
                  );
                }),
              ),
          ],
        ),
      ),
    );
  }
}
