import 'package:mobx/mobx.dart';
import 'package:motivate_me/models/quote/quote_of_the_day.dart';
import 'package:motivate_me/quote/quote_service.dart';

// Include generated file
part 'quote_store.g.dart';

// This is the class used by rest of your codebase
class QuoteStore = _QuoteStore with _$QuoteStore;

// The store-class
abstract class _QuoteStore with Store {
  QuoteService _quoteService;

  _QuoteStore(this._quoteService);

  @observable
  String quoteOfTheDay = '';

  @observable
  ObservableFuture<QuoteOfTheDay> quoteOfTheDayFuture;

  @observable
  String author = 'Anon';

  void getNewQuoteOfTheDay() {
    try {
      quoteOfTheDayFuture =
          ObservableFuture(_quoteService.fetchQuoteOfTheDay());
    } catch (e) {
      print(e);
    }
  }

  @action
  void updateQuoteOfTheDay() {
    quoteOfTheDay = 'I never dream about success, I work for it';
  }

  @action
  void updateAuthor() {
    author = 'Este Lauder';
  }
}
