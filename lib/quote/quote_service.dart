import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:motivate_me/models/quote/quote_of_the_day.dart';

@lazySingleton
class QuoteService {
  QuoteService() {}

  Future<QuoteOfTheDay> fetchQuoteOfTheDay() async {
    final response = await http
        .get(Uri.https('https://quotes.rest', 'qod.json?category=inspire'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      var res = response.body;
      //TODO: map response toobject properly
      return QuoteOfTheDay.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
