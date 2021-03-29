import 'package:flutter/material.dart';

class QuoteOfTheDay {
  final String? quote;
  final String? author;
  final String? backgroundImage;

  QuoteOfTheDay({this.quote, this.author, this.backgroundImage});

  factory QuoteOfTheDay.fromJson(Map<String, dynamic> json) {
    return QuoteOfTheDay(
      quote: json['quote'],
      author: json['author'],
      backgroundImage: json['background'],
    );
  }
}
