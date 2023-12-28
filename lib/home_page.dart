import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  final List<String> imageUrls = [
    "assets/Screenshot 2023-12-28 224045.png",
    "assets/Screenshot 2023-12-28 224543.png",
    "assets/Screenshot 2023-12-28 224641.png",
  ];

  final List<String> textTitle = [
    "Welcome to Music",
    "Explore new features",
    "New Podcast library",
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Icon(Icons.queue_music_outlined, color: Colors.white),
          title: const Text(
            "Music.io",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth,
                    child: Image.asset(
                      imageUrls[index],
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          textTitle[index],
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Id in cillum eiusmod laborum elit commodo aliqua dolor aute proident.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
            itemCount: imageUrls.length),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black)),
              onPressed: () {},
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Icon(
                    Icons.arrow_forward_sharp,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
