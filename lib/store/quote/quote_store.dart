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
  ObservableFuture<QuoteOfTheDayVm> quoteOfTheDayFuture =
      ObservableFuture.value(new QuoteOfTheDayVm());

  @computed
  bool get isLoading => quoteOfTheDayFuture.status == FutureStatus.pending;

  @action
  Future<void> getNewQuoteOfTheDay() async {
    try {
      quoteOfTheDayFuture =
          ObservableFuture.value(await _quoteService.fetchQuoteOfTheDay());
      //TODO: save to cache with time so that we do not hammer the quote api
    } catch (e) {
      print(e);
    }
  }
}
