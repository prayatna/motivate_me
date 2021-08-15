// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuoteStore on _QuoteStore, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading => (_$isLoadingComputed ??=
          Computed<bool>(() => super.isLoading, name: '_QuoteStore.isLoading'))
      .value;

  final _$quoteOfTheDayFutureAtom =
      Atom(name: '_QuoteStore.quoteOfTheDayFuture');

  @override
  ObservableFuture<QuoteOfTheDayVm> get quoteOfTheDayFuture {
    _$quoteOfTheDayFutureAtom.reportRead();
    return super.quoteOfTheDayFuture;
  }

  @override
  set quoteOfTheDayFuture(ObservableFuture<QuoteOfTheDayVm> value) {
    _$quoteOfTheDayFutureAtom.reportWrite(value, super.quoteOfTheDayFuture, () {
      super.quoteOfTheDayFuture = value;
    });
  }

  final _$getNewQuoteOfTheDayAsyncAction =
      AsyncAction('_QuoteStore.getNewQuoteOfTheDay');

  @override
  Future<void> getNewQuoteOfTheDay() {
    return _$getNewQuoteOfTheDayAsyncAction
        .run(() => super.getNewQuoteOfTheDay());
  }

  @override
  String toString() {
    return '''
quoteOfTheDayFuture: ${quoteOfTheDayFuture},
isLoading: ${isLoading}
    ''';
  }
}
