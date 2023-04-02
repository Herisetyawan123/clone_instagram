import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/profile/profile_page.dart';
import 'package:instagram_clone/pages/reel/reel_page.dart';
import 'package:instagram_clone/pages/search/search_page.dart';
import 'package:instagram_clone/pages/store/store_page.dart';

import 'home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectBar = 0;

  List<Widget> pages = [
    const HomePage(),
    const SearchPage(),
    const ReelPage(),
    const StorePage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectBar],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectBar,
        onTap: (value) {
          setState(() {
            selectBar = value;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/home.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/search.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/reel.png"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/store.png"),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/profile1.png"),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
