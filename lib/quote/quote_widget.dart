import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:motivate_me/ui/styles/theme_text.dart';
import 'package:motivate_me/constants/assets.dart';

class QuoteWidget extends StatelessWidget {
  final Color backgroundColor;
  final String? quote, author, backgroundImageUrl;

  QuoteWidget({
    Key? key,
    this.backgroundColor = Colors.lightBlueAccent,
    this.quote,
    this.author,
    this.backgroundImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenUtil().screenWidth,
        color: backgroundImageUrl == null ? backgroundColor : null,
        decoration: backgroundImageUrl != null
            ? BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                  backgroundImageUrl!,
                  //fit: BoxFit.fitHeight,
                  // alignment: Alignment.centerLeft,
                )),
              )
            : null,
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
                  quote != null
                      ? quote!
                      : 'I never dream about success, I work for it',
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
                author != null ? author! : 'Este Lauder',
                style: ThemeText.subHeader,
              ),
            ),
          ],
        ));
  }
}
