import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:motivate_me/ui/styles/theme_text.dart';
import 'package:motivate_me/constants/assets.dart';

class QuoteWidget extends StatelessWidget {
  final Color backgroundColor;
  final String quote, author;

  const QuoteWidget(
      {Key? key,
      this.backgroundColor = Colors.lightBlueAccent,
      this.quote = 'You only live once',
      this.author = 'Anon'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil().screenWidth,
        color: backgroundColor,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network(
                 
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.centerLeft,
                )
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(16),
          vertical: ScreenUtil().setHeight(48),
        ),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Assets.quoteLeft,
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
            Image.asset(
              Assets.quoteRight,
              color: Colors.white.withOpacity(0.4),
              width: ScreenUtil().setWidth(70),
              height: ScreenUtil().setHeight(70),
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
