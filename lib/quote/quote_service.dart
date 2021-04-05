import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:motivate_me/models/quote/quote_of_the_day_dto.dart';
import 'package:motivate_me/models/quote/quote_of_the_day_vm.dart';

@lazySingleton
class QuoteService {
  QuoteService();

  Future<QuoteOfTheDayVm> fetchQuoteOfTheDay() async {
    try {
      final response =
          await http.get(Uri.https('quotes.rest', 'qod.json?category=inspire'));
      if (response.statusCode == 200) {
        var responseDto = QuoteOfTheDayDto.fromJson(jsonDecode(response.body));
        return QuoteOfTheDayVm.fromDto(responseDto);
      } else {
        throw Exception('Failed to load album');
      }
    } catch (e) {
      throw Exception('Failed to load album');
    }
  }
}
