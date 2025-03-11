import 'package:flutter/material.dart';

// Custom theme extension for additional app-specific styling
class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final Color cardBackground;
  final Color photoCardBorder;
  final Color eventCardBackground;
  final List<Color> featuredGradient;
  final EdgeInsets defaultPadding;
  final BorderRadius defaultBorderRadius;

  CustomThemeExtension({
    required this.cardBackground,
    required this.photoCardBorder,
    required this.eventCardBackground,
    required this.featuredGradient,
    required this.defaultPadding,
    required this.defaultBorderRadius,
  });

  // Light theme extension
  static final light = CustomThemeExtension(
    cardBackground: Colors.white,
    photoCardBorder: const Color(0xFFE0E0E0),
    eventCardBackground: const Color(0xFFF5F5F5),
    featuredGradient: const [Color(0xFF9C27B0), Color(0xFF6750A4)],
    defaultPadding: const EdgeInsets.all(16.0),
    defaultBorderRadius: BorderRadius.circular(16.0),
  );

  // Dark theme extension
  static final dark = CustomThemeExtension(
    cardBackground: const Color(0xFF2D2D2D),
    photoCardBorder: const Color(0xFF3D3D3D),
    eventCardBackground: const Color(0xFF353535),
    featuredGradient: const [Color(0xFFD0BCFF), Color(0xFF9C27B0)],
    defaultPadding: const EdgeInsets.all(16.0),
    defaultBorderRadius: BorderRadius.circular(16.0),
  );

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? cardBackground,
    Color? photoCardBorder,
    Color? eventCardBackground,
    List<Color>? featuredGradient,
    EdgeInsets? defaultPadding,
    BorderRadius? defaultBorderRadius,
  }) {
    return CustomThemeExtension(
      cardBackground: cardBackground ?? this.cardBackground,
      photoCardBorder: photoCardBorder ?? this.photoCardBorder,
      eventCardBackground: eventCardBackground ?? this.eventCardBackground,
      featuredGradient: featuredGradient ?? this.featuredGradient,
      defaultPadding: defaultPadding ?? this.defaultPadding,
      defaultBorderRadius: defaultBorderRadius ?? this.defaultBorderRadius,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
    ThemeExtension<CustomThemeExtension>? other,
    double t,
  ) {
    if (other is! CustomThemeExtension) {
      return this;
    }

    return CustomThemeExtension(
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      photoCardBorder: Color.lerp(photoCardBorder, other.photoCardBorder, t)!,
      eventCardBackground:
          Color.lerp(eventCardBackground, other.eventCardBackground, t)!,
      featuredGradient: [
        Color.lerp(featuredGradient[0], other.featuredGradient[0], t)!,
        Color.lerp(featuredGradient[1], other.featuredGradient[1], t)!,
      ],
      defaultPadding: EdgeInsets.lerp(defaultPadding, other.defaultPadding, t)!,
      defaultBorderRadius:
          BorderRadius.lerp(defaultBorderRadius, other.defaultBorderRadius, t)!,
    );
  }
}