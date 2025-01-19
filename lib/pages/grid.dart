import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  final String path;
  final String title;
  const Grid({required this.title, required this.path, super.key});

  @override
  Widget build(BuildContext context) {
    // Wrap the Container with a SingleChildScrollView to prevent Bottom Overflow error
    return SingleChildScrollView(
      child: Container(
        // Set a fixed height to the Container to prevent it from taking the full screen height
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                path,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  title, // Use the title property instead of path
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '0 views',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 14,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.play_circle_fill,
                  color: Colors.red, size: 32),
            ),
          ],
        ),
      ),
    );
  }
}
