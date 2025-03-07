import 'package:flutter/material.dart';
import '../../models/song_model.dart';
import '../drawer.dart'; // Import the drawer

class CurrentSongScreen extends StatelessWidget {
  final Song currentSong;

  CurrentSongScreen({required this.currentSong});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A1A2E), // Dark blue
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Scaffold.of(context).openDrawer(); // Open drawer
          },
        ),
      ),
      drawer: AppDrawer(), // Use the drawer
      backgroundColor: Color(0xFF1A1A2E), // Dark blue
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(currentSong.imageUrl), // Use AssetImage
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    currentSong.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    currentSong.artist,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Slider(
                  value: 0.5, // Example progress
                  onChanged: (value) {
                    // Update progress
                  },
                  activeColor: Color(0xFFFFD700), // Gold
                  inactiveColor: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1:30', // Example current time
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '3:45', // Example total time
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.shuffle, color: Colors.grey, size: 30),
                      onPressed: () {
                        // Shuffle songs
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.skip_previous, color: Colors.white, size: 40),
                      onPressed: () {
                        // Previous song
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.play_circle_filled, color: Color(0xFFFFD700)), // Gold
                      iconSize: 60,
                      onPressed: () {
                        // Play/pause
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.skip_next, color: Colors.white, size: 40),
                      onPressed: () {
                        // Next song
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.repeat, color: Colors.grey, size: 30),
                      onPressed: () {
                        // Repeat songs
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}