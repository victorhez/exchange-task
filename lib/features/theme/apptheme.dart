import 'package:exchange/features/theme/pallets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme extends ChangeNotifier {
  ThemeData get selectedTheme => _selectedTheme;
  ThemeData _selectedTheme = lightTheme;

  TextTheme get selectedTextTheme => _selectedTheme.textTheme;

  void toggleTheme() {
    _selectedTheme = _selectedTheme == lightTheme ? darkTheme : lightTheme;
    notifyListeners();
  }

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Pallets.primary,
    // hintColor: Pallets.grey,
    scaffoldBackgroundColor: Pallets.onbackgroundlight,
    fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
    sliderTheme: const SliderThemeData(
      showValueIndicator: ShowValueIndicator.always,
    ),
    appBarTheme: const AppBarTheme(
      color: Pallets.white,
      iconTheme: IconThemeData(
        color: Pallets.primary,
        size: 24,
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.black,
        size: 24,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 96.0.sp, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontSize: 60.0.sp, fontWeight: FontWeight.bold),
      displaySmall: TextStyle(fontSize: 48.0.sp, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(fontSize: 34.0.sp, fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(fontSize: 24.0.sp, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(
          fontSize: 20.0.sp, fontWeight: FontWeight.w600, height: 1.5),
      titleMedium: TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.normal),
      titleSmall: TextStyle(fontSize: 14.0.sp, fontWeight: FontWeight.normal),
      bodyLarge: TextStyle(fontSize: 16.0.sp),
      bodyMedium: TextStyle(fontSize: 14.0.sp),
      bodySmall: TextStyle(fontSize: 12.sp),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Pallets.primary,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    iconTheme: const IconThemeData(color: Pallets.primary),
    inputDecorationTheme: const InputDecorationTheme(
      isDense: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
      contentPadding: EdgeInsets.only(
        bottom: 16,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    ),
    colorScheme: ColorScheme(
      background: Pallets.iconcolorlight,
      onPrimaryContainer:Colors.white,
      brightness: Brightness.light,
      primary: Pallets.textcolorlight,
      secondary:  Pallets.iconcolorlight,
      error: Colors.white,
      onBackground: Pallets.onbackgrounddark,
      onError: Pallets.miccolor,
      onPrimary:Pallets.miccolor,
      onSecondary: Pallets.iconcolorlight,
      onSurface: Colors.white,
      surface: Pallets.containerlight,
    ),
  );

  static final ThemeData darkTheme = lightTheme.copyWith(
    brightness: Brightness.dark,
    primaryColor: Pallets.primary,
    hintColor: Colors.lightBlueAccent,
    scaffoldBackgroundColor: Pallets.onbackgrounddark,
    appBarTheme: const AppBarTheme(
      color: Pallets.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    sliderTheme: const SliderThemeData(
      showValueIndicator: ShowValueIndicator.always,
    ),
    textTheme: lightTheme.textTheme.apply(bodyColor: Colors.white70),
    iconTheme: const IconThemeData(color: Colors.white70),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blueGrey,
      textTheme: ButtonTextTheme.primary,
    ),
    inputDecorationTheme: lightTheme.inputDecorationTheme,
    colorScheme: ColorScheme(
      onPrimaryContainer: Pallets.whitegray,
      background: Pallets.iconcolor,
      brightness: Brightness.light,
      primary: Pallets.textcolor,
      secondary: Pallets.iconcolor,
      error: Pallets.whitegray,
      onBackground: Pallets.onbackgroundlight,
      onError:Pallets.whitegray,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      surface: Pallets.containerdark,
    ),
  );
}

// final themeProvider = ChangeNotifierProvider<AppTheme>((ref) {
//   return AppTheme();
// });
