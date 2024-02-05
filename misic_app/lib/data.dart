import 'package:flutter/material.dart';

class Song {
  final String title;
  final String artist;
  final String genre;
  final String coverImage; // Path to the image asset
  final List<String> recommendedLocations;

  Song({
    required this.title,
    required this.artist,
    required this.genre,
    required this.coverImage,
    required this.recommendedLocations,
  });
}

// Ensure Poland and Zimbabwe are included in song recommendations
List<Song> songs = [
  Song(
    title: "Szum",
    artist: "Krzysztof Penderecki",
    genre: "Classical",
    coverImage: "assets/images/song1.jpg",
    recommendedLocations: ["Poland", "Germany", "Austria"],
  ),
  Song(
    title: "Mbira Nyanga",
    artist: "The Zimbabwean Mbira Project",
    genre: "World",
    coverImage: "assets/images/song2.jpg",
    recommendedLocations: ["Zimbabwe", "South Africa", "Mozambique"],
  ),
  Song(
    title: "Bohemian Rhapsody",
    artist: "Queen",
    genre: "Rock",
    coverImage: "assets/images/song3.jpg",
    recommendedLocations: ["United Kingdom", "United States", "Canada"],
  ),
  Song(
    title: "Despacito",
    artist: "Luis Fonsi & Daddy Yankee",
    genre: "Latin Pop",
    coverImage: "assets/images/song4.jpg",
    recommendedLocations: ["Puerto Rico", "Spain", "Mexico"],
  ),
  Song(
    title: "Imagine",
    artist: "John Lennon",
    genre: "Pop",
    coverImage: "assets/images/song5.jpg",
    recommendedLocations: ["Global"],
  ),
  Song(
    title: "Hallelujah",
    artist: "Leonard Cohen",
    genre: "Folk",
    coverImage: "assets/images/song6.jpg",
    recommendedLocations: ["Canada", "United States", "Israel"],
  ),
  Song(
    title: "What a Wonderful World",
    artist: "Louis Armstrong",
    genre: "Jazz",
    coverImage: "assets/images/song7.jpg",
    recommendedLocations: ["United States", "Global"],
  ),
  Song(
    title: "The Sound of Silence",
    artist: "Simon & Garfunkel",
    genre: "Folk Rock",
    coverImage: "assets/images/song8.jpg",
    recommendedLocations: ["United States", "Global"],
  ),
  Song(
    title: "Viva La Vida",
    artist: "Coldplay",
    genre: "Alternative Rock",
    coverImage: "assets/images/song9.jpg",
    recommendedLocations: ["United Kingdom", "Europe", "North America"],
  ),
  Song(
    title: "Roar",
    artist: "Katy Perry",
    genre: "Pop",
    coverImage: "assets/images/song10.jpg",
    recommendedLocations: ["United States", "Global"],
  ),
];
