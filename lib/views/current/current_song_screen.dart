import 'package:flutter/material.dart';
import '../../models/song_model.dart';
import '../drawer.dart'; 
class CurrentSongScreen extends StatelessWidget {
  final Song currentSong;

  CurrentSongScreen({required this.currentSong});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Color(0xFF1A1A2E), // Dark blue
  elevation: 0,
  leading: Builder(
    builder: (context) => IconButton(
      icon: Icon(Icons.menu, color: Colors.white),
      onPressed: () {
        Scaffold.of(context).openDrawer(); // Open drawer
      },
    ),
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
          // Existing code...
        ],
      ),
    );
  }
}