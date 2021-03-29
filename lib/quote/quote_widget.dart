import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:motivate_me/ui/styles/theme_text.dart';

class QuoteWidget extends StatelessWidget {
  final Color backgroundColor;
  final String quote, author;

  const QuoteWidget(
      {Key? key,
      this.backgroundColor = Colors.redAccent,
      this.quote = 'You only live once',
      this.author = 'Anon'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil().screenWidth,
        color: backgroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(16),
          vertical: ScreenUtil().setHeight(48),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/left-quote.png',
              color: Colors.white.withOpacity(0.4),
              width: ScreenUtil().setWidth(70),
              height: ScreenUtil().setHeight(70),
            ),
            Expanded(
              child: Center(
                child: Text(
                  quote,
                  style: ThemeText.header,
                ),
              ),
            ),
            Center(
              child: Text(
                author,
                style: ThemeText.subHeader,
              ),
            ),
          ],
        ));
  }
}
