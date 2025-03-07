import '../models/song_model.dart';

class MusicController {
  // Dummy data for demonstration
  final List<Song> allSongs = [
    Song(
      title: 'Blinding Lights',
      artist: 'The Weeknd',
      album: 'After Hours',
      imageUrl: 'assets/images/african.png',
    ),
    Song(
      title: 'Levitating',
      artist: 'Dua Lipa',
      album: 'Future Nostalgia',
      imageUrl: 'assets/images/africanamerican.png',
    ),
    Song(
      title: 'Peaches',
      artist: 'Justin Bieber',
      album: 'Justice',
      imageUrl: 'assets/images/popsinger.png',
    ),
    Song(
      title: 'Drivers License',
      artist: 'Olivia Rodrigo',
      album: 'Sour',
      imageUrl: 'assets/images/singer.png',
    ),
    Song(
      title: 'Save Your Tears',
      artist: 'The Weeknd',
      album: 'After Hours',
      imageUrl: 'assets/images/te-nguyen.png',
    ),
  ];

  List<Song> getFavoriteSongs() {
    return allSongs.where((song) => song.artist == 'The Weeknd').toList();
  }

  List<Song> getArtistSongs(String artist) {
    return allSongs.where((song) => song.artist == artist).toList();
  }
}