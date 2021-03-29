// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuoteStore on _QuoteStore, Store {
  final _$quoteOfTheDayAtom = Atom(name: '_QuoteStore.quoteOfTheDay');

  @override
  String get quoteOfTheDay {
    _$quoteOfTheDayAtom.reportRead();
    return super.quoteOfTheDay;
  }

  @override
  set quoteOfTheDay(String value) {
    _$quoteOfTheDayAtom.reportWrite(value, super.quoteOfTheDay, () {
      super.quoteOfTheDay = value;
    });
  }

  final _$quoteOfTheDayFutureAtom =
      Atom(name: '_QuoteStore.quoteOfTheDayFuture');

  @override
  ObservableFuture<QuoteOfTheDay> get quoteOfTheDayFuture {
    _$quoteOfTheDayFutureAtom.reportRead();
    return super.quoteOfTheDayFuture;
  }

  @override
  set quoteOfTheDayFuture(ObservableFuture<QuoteOfTheDay> value) {
    _$quoteOfTheDayFutureAtom.reportWrite(value, super.quoteOfTheDayFuture, () {
      super.quoteOfTheDayFuture = value;
    });
  }

  final _$authorAtom = Atom(name: '_QuoteStore.author');

  @override
  String get author {
    _$authorAtom.reportRead();
    return super.author;
  }

  @override
  set author(String value) {
    _$authorAtom.reportWrite(value, super.author, () {
      super.author = value;
    });
  }

  final _$_QuoteStoreActionController = ActionController(name: '_QuoteStore');

  @override
  void updateQuoteOfTheDay() {
    final _$actionInfo = _$_QuoteStoreActionController.startAction(
        name: '_QuoteStore.updateQuoteOfTheDay');
    try {
      return super.updateQuoteOfTheDay();
    } finally {
      _$_QuoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateAuthor() {
    final _$actionInfo = _$_QuoteStoreActionController.startAction(
        name: '_QuoteStore.updateAuthor');
    try {
      return super.updateAuthor();
    } finally {
      _$_QuoteStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
quoteOfTheDay: ${quoteOfTheDay},
quoteOfTheDayFuture: ${quoteOfTheDayFuture},
author: ${author}
    ''';
  }
}
