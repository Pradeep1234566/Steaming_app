import 'package:flutter/material.dart';
import 'package:streaming_app/pages/grid.dart';

class MyHome extends StatelessWidget {
  final List<String> Path = [
    'asset/images/Axe.jpg',
    'asset/images/Seeker.jpg',
    'asset/images/Shaker.jpg',
    'asset/images/Mars.jpg'
  ];
  final List<String> name = ['Axe', 'Seeker', 'Shaker', 'Mars'];
  MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  Icon(Icons.person, color: Colors.white, size: 28),
                  Spacer(),
                  Image.asset(
                    'asset/images/Icon.png', // Replace with your actual logo asset path
                    height: 60,
                  ),
                ],
              ),
            ),

            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Search your hero...",
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16.0),
                        ),
                      ),
                    ),
                    const Icon(Icons.search, color: Colors.white),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
            ),

            // Learn your favourite Hero
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
              child: Text(
                "Learn Your\nFavourite Hero",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: 'Amaranth-Bold',
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
            ),

            // Grid Section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemCount: Path.length,
                  itemBuilder: (context, index) {
                    return Grid(
                      path: Path[index],
                      title:
                          name[index], // Assuming Grid takes a `path` argument
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
