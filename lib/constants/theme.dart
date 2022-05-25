import 'package:travel_app_ui/constants/constants.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
    backgroundColor: AppColors.white,
    textTheme: lightTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline1: _headline1, //30px/700
    headline2: _headline2, //30px/400
    headline3: _headline3, //22px
    headline4: _headline4, //16px
  );

  static final TextStyle _headline1 = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w700,
    color: const Color(0xFF000000),
    fontSize: 30.sp,
  );
  static final TextStyle _headline2 = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    color: const Color(0xFF878593),
    fontSize: 30.sp,
  );

  static final TextStyle _headline3 = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w700,
    color: const Color(0xFF000000),
    fontSize: 22.sp,
  );

  static final TextStyle _headline4 = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    color: const Color(0xFF959595),
    fontSize: 16.sp,
  );
}
