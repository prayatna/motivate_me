import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeText {
  static final header = GoogleFonts.dosis(
    textStyle: _header.copyWith(
      fontSize: ScreenUtil().setSp(36),
    ),
  );

  static final subHeader = GoogleFonts.dosis(
    textStyle: _subHeader.copyWith(
      fontSize: ScreenUtil().setSp(20),
    ),
  );

  static const _header = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
  );

  static const _subHeader = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
}
