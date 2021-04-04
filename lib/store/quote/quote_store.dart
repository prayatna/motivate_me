import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:motivate_me/models/quote/quote_of_the_day_vm.dart';
import 'package:motivate_me/quote/quote_service.dart';

// Include generated file
part 'quote_store.g.dart';

@lazySingleton
class QuoteStore extends _QuoteStore with _$QuoteStore {
  @override
  QuoteService _quoteService;

  QuoteStore(this._quoteService) : super(_quoteService);
}

// The store-class
abstract class _QuoteStore with Store {
  QuoteService _quoteService;

  _QuoteStore(this._quoteService);

  @observable
  String quoteOfTheDay = '';

  @observable
  ObservableFuture<QuoteOfTheDayVm> _quoteOfTheDayFuture =
      ObservableFuture.value(new QuoteOfTheDayVm());

  @observable
  String author = 'Anon';

  Future<void> getNewQuoteOfTheDay() async {
    try {
      final a = await _quoteService.fetchQuoteOfTheDay();
      print(a.author);
      author = a.author!;
      quoteOfTheDay = a.quote!;
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
