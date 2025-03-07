import 'package:flutter/material.dart';
import '../../models/song_model.dart';
import '../drawer.dart'; // Import the drawer
import '../current/current_song_screen.dart';
import 'package:flutter/material.dart';
import '../../models/song_model.dart';
import '../drawer.dart'; // Import the drawer

class ArtistsSongsScreen extends StatelessWidget {
  final List<Song> songs;

  ArtistsSongsScreen({required this.songs});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  title: Text('Artist\'s Songs'),
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
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final song = songs[index];
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                song.imageUrl, // Use AssetImage
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              song.title,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              song.artist,
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CurrentSongScreen(currentSong: song),
                ),
              );
            },
          );
        },
      ),
    );
  }
}