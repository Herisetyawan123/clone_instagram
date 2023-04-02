import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/home/sections/feed_section.dart';
import 'package:instagram_clone/pages/home/sections/stories_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Billabong',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/messanger.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/add.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: const [
              StoriesSection(),
              FeedSection(),
            ],
          ),
        ),
      ),
    );
  }
}
