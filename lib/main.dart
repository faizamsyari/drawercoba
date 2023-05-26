import 'package:drawer/profile.dart';
import 'package:drawer/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DrawerStudy(),
  ));
}

class DrawerStudy extends StatelessWidget {
  const DrawerStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.grey.shade600,
        centerTitle: false,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.grey.shade400),
                child: Row(
                  children: [
                    CircleAvatar(
                      minRadius: 20,
                      maxRadius: 40,
                      child: Image.asset("images/noimage.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Faiz Amsyari Rustam",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1102210012",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        )
                      ],
                    )
                  ],
                )),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const Profile();
                  },
                ));
              },
              leading: const Icon(Icons.person),
              title: const Text("Profile Page"),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const Setting();
                  },
                ));
              },
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
            )
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selamat Datang",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
            Text(
              "Nama: Faiz Amsyari Rustam",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
            Text(
              "1102210012",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "BELAJAR DRAWER DAN BOTTOM NAVIGATION BAR",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  fontSize: 16),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: 0,
          onTap: (value) {
            print(value);
            if (value == 0) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const Drawer();
                },
              ));
            } else if (value == 1) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const Profile();
                },
              ));
            } else {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const Setting();
                },
              ));
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting")
          ]),
    );
  }
}
