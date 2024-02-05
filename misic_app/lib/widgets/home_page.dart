import 'package:flutter/material.dart';
import 'package:music_app/data.dart';
import 'package:music_app/widgets/song_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Perform any necessary initialization, like location-based logic
    // (modify based on your final approach)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music App'),
      ),
      body: ListView(
        children: [
          _buildRecommendedSongsSection(),
          const Divider(),
          _buildAllSongsSection(),
        ],
      ),
    );
  }

  Widget _buildRecommendedSongsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Recommended for You',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        _buildSongList(songs
            .where((song) =>
                    // Include your location-based logic here based on your approach
                    false // Replace with appropriate filtering criteria
                )
            .toList()),
      ],
    );
  }

  Widget _buildAllSongsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'All Songs',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        _buildSongList(songs),
      ],
    );
  }

  Widget _buildSongList(List<Song> songs) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: songs.length,
      itemBuilder: (context, index) {
        final song = songs[index];
        return ListTile(
          leading: Image.asset(song.coverImage, width: 50),
          title: Text(song.title),
          subtitle: Text(song.artist),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SongPage(song: song),
              ),
            );
          },
        );
      },
    );
  }
}
