import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:motivate_me/quote/quote_widget.dart';
import 'package:motivate_me/store/quote/quote_store.dart';

import 'injectable.dart';

final quoteStore = QuoteStore();

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    quoteStore.updateQuoteOfTheDay();
    quoteStore.updateAuthor();

    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: true,
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: QuoteWidget(
          quote: quoteStore.quoteOfTheDay,
          author: quoteStore.author,
          backgroundColor: Colors.redAccent,
        )),
      ),
    );
  }
}
