import 'package:flutter/material.dart';

import '../widget/feed_widget.dart';

class FeedSection extends StatefulWidget {
  const FeedSection({
    Key? key,
  }) : super(key: key);

  @override
  State<FeedSection> createState() => _FeedSectionState();
}

class _FeedSectionState extends State<FeedSection> {
  List<dynamic> postFeeds = [
    {"img": "assets/profile1.png", "name": "Ruffles"},
    {"img": "assets/profile2.png", "name": "Hachiko"},
    {"img": "assets/profile3.png", "name": "Asw"},
    {"img": "assets/profile4.png", "name": "Blacky"},
    {"img": "assets/profile5.png", "name": "Guguk"},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [for (var item in postFeeds) FeedWidget(item: item)],
    );
  }
}
