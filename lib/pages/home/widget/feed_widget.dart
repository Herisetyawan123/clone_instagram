import 'package:flutter/material.dart';

class FeedWidget extends StatelessWidget {
  final Map<dynamic, String> item;
  const FeedWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = item["name"];
    var img = item["img"];
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.3,
          color: Colors.grey,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerFeed(context, name!, img!),
          Container(
            height: 390,
            decoration: const BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: AssetImage(
                  "assets/post1.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          iconFeed(),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "100 Likes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          textFeed(),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/profile1.png"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Tambah Komentar...",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "21 jam yang lalu",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container textFeed() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            textAlign: TextAlign.start,
            text: const TextSpan(children: [
              TextSpan(
                text: "Ruffles",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "  Most of the apps have login screen and an option to create an account. The create account section is usually a combination of regular text followed by",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: " ...selengkapnya.",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ]),
          ),
          const SizedBox(height: 10),
          const Text(
            "View all comment",
            style: TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }

  Padding iconFeed() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 3,
      ),
      child: Row(
        children: [
          Row(
            children: const [
              Icon(
                Icons.favorite,
                size: 30,
                color: Colors.red,
              ),
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.comment_outlined,
                size: 30,
              ),
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.send_outlined,
                size: 30,
              ),
            ],
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.bookmark_outline,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container headerFeed(BuildContext context, String name, String img) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.purple,
                            Colors.red,
                            Colors.amber,
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            50,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        image: DecorationImage(
                          image: AssetImage(img),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    "Sponsored",
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.menu,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
