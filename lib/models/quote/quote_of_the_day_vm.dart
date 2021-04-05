import 'package:motivate_me/models/quote/quote_of_the_day_dto.dart';

class QuoteOfTheDayVm {
  final String? quote;
  final String? author;
  final String? backgroundImage;

  QuoteOfTheDayVm({this.quote, this.author, this.backgroundImage});

  factory QuoteOfTheDayVm.fromDto(QuoteOfTheDayDto quoteOfTheDayDto) {
    return QuoteOfTheDayVm(
      quote: quoteOfTheDayDto.contents.quotes[0].quote,
      author: quoteOfTheDayDto.contents.quotes[0].author,
      backgroundImage: quoteOfTheDayDto.contents.quotes[0].background,
    );
  }
}
