part of 'resource.dart';

abstract class AppStyles {
  static TextStyle displayLarge = const TextStyle(
    fontFamily: 'ScoreBold',
    fontSize: 17,
  ); // Title1

  static TextStyle displayMedium = const TextStyle(
    fontFamily: 'sc_bold_dream',
    fontSize: 15,
  ); // Title2

  static TextStyle displaySmall = const TextStyle(
    fontFamily: 'sc_medium_dream',
    fontSize: 12,
  ); // SubTitle1

  static TextStyle headlineLarge = const TextStyle(
    fontFamily: 'sc_black_dream',
    fontSize: 14,
    height: 22 / 14,
  ); // Heading

  static TextStyle bodyLarge = const TextStyle(
    fontFamily: 'sc_medium_dream',
    fontSize: 15,
    height: 24 / 15,
  ); // Paragraph1

  static TextStyle bodyMedium = const TextStyle(
    fontFamily: 'sc_medium_dream',
    fontSize: 14,
  ); // Paragraph2

  static TextStyle bodySmall = const TextStyle(
    fontFamily: 'sc_medium_dream',
    fontSize: 13,
    height: 20 / 13,
  ); // Paragraph3
}
