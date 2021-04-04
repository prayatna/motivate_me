class QuoteOfTheDayDto {
  late Success success;
  late Contents contents;
  late String baseurl;
  late Copyright copyright;

  QuoteOfTheDayDto({
    required this.success,
    required this.contents,
    required this.baseurl,
    required this.copyright,
  });

  QuoteOfTheDayDto.fromJson(Map<String, dynamic> json) {
    success = Success.fromJson(json['success']);
    contents = Contents.fromJson(json['contents']);
    baseurl = json['baseurl'];
    copyright = Copyright.fromJson(json['copyright']);
  }
}

class Success {
  late int total;

  Success({
    required this.total,
  });

  Success.fromJson(Map<String, dynamic> json) {
    total = json['total'];
  }
}

class Contents {
  late List<Quotes> quotes;

  Contents({
    required this.quotes,
  });

  Contents.fromJson(Map<String, dynamic> json) {
    quotes = List<dynamic>.from(json['quotes'])
        .map((e) => Quotes.fromJson(e))
        .toList();
  }
}

class Quotes {
  late String quote;
  late String length;
  late String author;
  late List<String> tags;
  late String category;
  late String language;
  late String date;
  late String permalink;
  late String id;
  late String background;
  late String title;

  Quotes({
    required this.quote,
    required this.length,
    required this.author,
    required this.tags,
    required this.category,
    required this.language,
    required this.date,
    required this.permalink,
    required this.id,
    required this.background,
    required this.title,
  });

  Quotes.fromJson(Map<String, dynamic> json) {
    quote = json['quote'];
    length = json['length'];
    author = json['author'];
    tags = List<String>.from(json['tags']);
    category = json['category'];
    language = json['language'];
    date = json['date'];
    permalink = json['permalink'];
    id = json['id'];
    background = json['background'];
    title = json['title'];
  }
}

class Copyright {
  late int year;
  late String url;

  Copyright({
    required this.year,
    required this.url,
  });

  Copyright.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    url = json['url'];
  }
}
