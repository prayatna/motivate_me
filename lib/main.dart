import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:motivate_me/quote/quote_widget.dart';
import 'package:motivate_me/store/quote/quote_store.dart';

import 'injectable.dart';

QuoteStore get quoteStore => getIt<QuoteStore>();

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // quoteStore.updateQuoteOfTheDay();
    quoteStore.getNewQuoteOfTheDay().then((value) => print('inside main.dart'));
    if (quoteStore.isLoading) {
      return CircularProgressIndicator();
    }

    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: true,
      builder: () => MaterialApp(
        title: 'Motivate Me',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Container(
              child: Observer(
            builder: (_) => QuoteWidget(
              quote: quoteStore.quoteOfTheDayFuture.value?.quote,
              author: quoteStore.quoteOfTheDayFuture.value?.author,
              backgroundColor: Colors.lightBlueAccent,
              backgroundImageUrl:
                  quoteStore.quoteOfTheDayFuture.value?.backgroundImage,
            ),
          )),
        ),
      ),
    );
  }
}
