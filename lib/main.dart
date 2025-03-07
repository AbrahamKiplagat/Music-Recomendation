import 'package:flutter/material.dart';
import 'controllers/music_controller.dart';
import 'views/current/current_song_screen.dart';
import 'views/artists/artists_songs_screen.dart';
import 'views/favorite/favorites_screen.dart';
import 'views/drawer.dart'; // Import the drawer

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MusicController musicController = MusicController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luxury Music App',
      debugShowCheckedModeBanner: false, // Remove debug banner
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color(0xFF1A1A2E), // Dark blue background
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1A1A2E), // Dark blue app bar
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: '/artists',
      routes: {
        // '/': (context) => HomeScreen(musicController: musicController),
        '/current': (context) => CurrentSongScreen(
              currentSong: musicController.allSongs[0], // Example song
            ),
        '/artists': (context) => ArtistsSongsScreen(
              songs: musicController.allSongs, // Display all songs
            ),
        '/favorites': (context) => FavoritesScreen(
              favoriteSongs: musicController.getFavoriteSongs(),
            ),
      },
    );
  }

}