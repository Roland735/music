import 'package:flutter/material.dart';
import 'package:music_app/data.dart';

class SongPage extends StatelessWidget {
  final Song song;

  const SongPage({Key? key, required this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(song.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(song.coverImage, width: 250),
            const SizedBox(height: 20),
            Text(song.title, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 10),
            Text(song.artist, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Use a clear label explaining the lack of playback
                // Consider linking to external streaming services with user consent
                // and clear disclosures
                ElevatedButton(
                  onPressed: () => _openStreamingOption(context),
                  child: const Text('Listen on Streaming Service'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Genre: ${song.genre}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  void _openStreamingOption(BuildContext context) {
    // Replace with your desired logic for linking to streaming services
    // Ensure proper user consent and disclaimers
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Streaming Options'),
        content: const Text(
            'Please select a streaming service to listen to this song:'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Handle opening streaming service app or website
              print('Opening Spotify...');
            },
            child: const Text('Spotify'),
          ),
          // Add other streaming options as needed
        ],
      ),
    );
  }
}
