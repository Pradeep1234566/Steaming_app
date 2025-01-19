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
  final List<String> views = ['1.2K', '2.3K', '1.5K', '1.8K'];
  MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Removing backgroundColor and applying gradient to the entire body
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.black], // Gradient colors
              begin: Alignment.topCenter, // Starting point of the gradient
              end: Alignment.bottomCenter, // End point of the gradient
            ),
          ),
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
                padding: const EdgeInsets.symmetric(
                    horizontal: 35.0, vertical: 10.0),
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
              SizedBox(height: 10),
              // Grid Section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 50,
                    ),
                    itemCount: Path.length,
                    itemBuilder: (context, index) {
                      return Grid(
                        path: Path[index],
                        title: name[index],
                        views: views[
                            index], // Assuming Grid takes a `path` argument
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.orangeAccent
            ], // Gradient from orange to orange accent
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black, // Set background color to black
          selectedItemColor: Colors.white, // Set selected icon color to white
          unselectedItemColor: Colors.white.withOpacity(
              0.6), // Set unselected icon color to white with some // Set unselected icon color to white with some opacity
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call),
              label: 'Tutorial',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.youtube_searched_for),
              label: 'Stream',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: 'Match',
            ),
          ],
        ),
      ),
    );
  }
}
