import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.black, // Set the background color to match the design
      body: SafeArea(
        child: Column(
          children: [
            // Top Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.person, color: Colors.white, size: 28),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0, bottom: 15),
                    child: Image.asset(
                      'asset/images/Icon.png', // Replace with your actual logo asset path
                      height: 100,
                    ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Search your hero...",
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0), // Padding added here
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.search, color: Colors.white),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
            ),
            //Learn your favourite Hero
            Text(
              "Learn Your",
              style: TextStyle(
                  fontSize: 25, color: Colors.white, fontFamily: 'Roboto'),
            )
          ],
        ),
      ),
    );
  }
}
