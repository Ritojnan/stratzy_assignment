import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'DM Sans',
    textTheme: const TextTheme(
      headlineMedium: TextStyle(fontFamily: 'DM Sans'),
      bodyLarge: TextStyle(
        fontFamily: 'DM Sans',
        fontVariations: <FontVariation>[
          FontVariation('wght', 700), // Weight
        ],
      ),
      bodyMedium: TextStyle(
        fontFamily: 'DM Sans',
        fontVariations: <FontVariation>[
          FontVariation('wght', 400), // Weight
        ],
      ),
      bodySmall: TextStyle(
        fontFamily: 'DM Sans',
        fontVariations: <FontVariation>[
          FontVariation('wght', 400), // Weight
        ],
      ),
    ),
  );
}
