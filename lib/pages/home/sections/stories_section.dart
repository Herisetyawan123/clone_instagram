import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/home/widget/story_widget.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(25, 0, 0, 0),
            blurRadius: 1,
            spreadRadius: 0,
            offset: Offset(0, 2),
          ),
        ],
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            StoryWidget(),
            StoryWidget(),
            StoryWidget(),
            StoryWidget(),
            StoryWidget(),
            StoryWidget(),
          ],
        ),
      ),
    );
  }
}
