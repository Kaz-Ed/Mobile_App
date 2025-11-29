import 'package:flutter/material.dart';

class Book {
  final String title;
  final String author;
  final Color coverColor;
  final double rating;
  final String? imageUrl;

  Book({
    required this.title,
    required this.author,
    required this.coverColor,
    required this.rating,
    this.imageUrl,
  });
}