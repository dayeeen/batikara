import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const gold = Color(0xffEDBE6B);
  static const brown = Color(0xff754219);
  static const black = Color(0xff050505);
  static const white = Color(0xffFFF9F9);
  static const grey = Color(0xffA5A5A5);
  static const darkGrey = Color(0xff2D2D2D);
}

class AppSpacing {
  static const double edge = 24;
}

class AppText {
  // Auth
  static const String loginTitle = "Good to see you again";
  static const String loginSubtitle = "Reconnect with your saved items, AI recommendations, and your favorite local brands.";
  static const String registerTitle = "Create Your Batikara Account";
  static const String registerSubtitle = "Join a movement to support local artisans and find batik pieces that match your unique style.";
  
  static const String login = "LOGIN";
  static const String register = "REGISTER";

  static const String orcw = "Or continue with";

  static const String donthaveacc = "Don't have an account?";
  static const String haveacc = "Already have an account?";

  static const String signuphere = "Sign Up here";
  static const String signinhere = "Sign In here";
  

  static const String signInToContinue = "Sign in to continue";
  static const String email = "Email";
  static const String password = "Password";
  static const String confirmPassword = "Confirm Password";
  static const String forgotPassword = "Forgot Password?";

  // Home
  static const String greeting = "Hello Dayen,";
  static const String greetingSubtitle = "What’s your batik mood today?";
  static const String recommend = "Recommended";



}

class AppTextStyle {
  static final title = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w800,
    color: AppColors.brown,
    fontSize: 20,
  );

  static final subtitle = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontSize: 12,
  );

  static final label = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w500,
    color: AppColors.brown,
    fontSize: 14,
  );

  static final actionText = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w800,
    color: AppColors.brown,
    fontSize: 14,
  );

  static final black = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static final white = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static final grey = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w300,
    color: AppColors.grey,
  );

  static final gold = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w500,
    color: AppColors.gold,
  );

  static final regular = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  
  static final small = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    fontSize: 12,
  );
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.gold,
      scaffoldBackgroundColor: AppColors.white,
      // AppTheme.lightTheme
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.gold, // <— ganti ke gold
        primary: AppColors.gold,
        secondary: AppColors.brown,
        surface: AppColors.white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: AppColors.brown,
      ),
      textTheme: TextTheme(
        bodyLarge: AppTextStyle.regular,
        bodyMedium: AppTextStyle.grey,
        titleLarge: AppTextStyle.black,
        titleMedium: AppTextStyle.gold,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.gold,
          foregroundColor: AppColors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: AppTextStyle.black,
        ),
      ),
    );
  }
}
