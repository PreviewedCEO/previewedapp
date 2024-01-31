// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color grayIcon;
  late Color darkText;
  late Color primary600;
  late Color secondary600;
  late Color dark400;
  late Color background;
  late Color grayIcon400;
  late Color lineColor;
  late Color dark500;
  late Color customColor1;
  late Color customColor2;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF004AAD);
  late Color secondary = const Color(0xFFFFDE59);
  late Color tertiary = const Color(0xFFFFFFFF);
  late Color alternate = const Color(0xFFC3724C);
  late Color primaryText = const Color(0xFF004AAD);
  late Color secondaryText = const Color(0xFF004AAD);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFF616161);
  late Color accent2 = const Color(0xFF757575);
  late Color accent3 = const Color(0xFFE0E0E0);
  late Color accent4 = const Color(0xFFEEEEEE);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color grayIcon = const Color(0xFF57636C);
  late Color darkText = const Color(0xFF090F13);
  late Color primary600 = const Color(0xFFC3724C);
  late Color secondary600 = const Color(0xFF2CAE9F);
  late Color dark400 = const Color(0xFF262D34);
  late Color background = const Color(0xFFF1F4F8);
  late Color grayIcon400 = const Color(0xFFABB3BA);
  late Color lineColor = const Color(0xFFDBE2E7);
  late Color dark500 = const Color(0xFF1D2429);
  late Color customColor1 = const Color(0xFFFFDE59);
  late Color customColor2 = const Color(0xFF00015B);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Epilogue';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Epilogue';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Epilogue';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 32.0,
      );
  String get headlineLargeFamily => 'Epilogue';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Epilogue';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 26.0,
      );
  String get headlineSmallFamily => 'Epilogue';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Epilogue';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Epilogue';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
  String get titleSmallFamily => 'Epilogue';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelLargeFamily => 'Epilogue';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Epilogue';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Epilogue';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Epilogue';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Epilogue';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Epilogue';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Epilogue';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Epilogue';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Epilogue';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 32.0,
      );
  String get headlineLargeFamily => 'Epilogue';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Epilogue';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 26.0,
      );
  String get headlineSmallFamily => 'Epilogue';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Epilogue';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Epilogue';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
  String get titleSmallFamily => 'Epilogue';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelLargeFamily => 'Epilogue';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Epilogue';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Epilogue';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Epilogue';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Epilogue';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Epilogue';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Epilogue';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'Epilogue';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Epilogue';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 32.0,
      );
  String get headlineLargeFamily => 'Epilogue';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Epilogue';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 26.0,
      );
  String get headlineSmallFamily => 'Epilogue';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Epilogue';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primary,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Epilogue';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
  String get titleSmallFamily => 'Epilogue';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelLargeFamily => 'Epilogue';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'Epilogue';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'Epilogue';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'Epilogue';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Epilogue';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Epilogue',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Epilogue';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Epilogue',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFFFDE59);
  late Color secondary = const Color(0xFF004AAD);
  late Color tertiary = const Color(0xFFFFFFFF);
  late Color alternate = const Color(0xFFC3724C);
  late Color primaryText = const Color(0xFFFFDE59);
  late Color secondaryText = const Color(0xFFFFDE59);
  late Color primaryBackground = const Color(0xFF1D2429);
  late Color secondaryBackground = const Color(0xFF090F13);
  late Color accent1 = const Color(0xFFEEEEEE);
  late Color accent2 = const Color(0xFFE0E0E0);
  late Color accent3 = const Color(0xFF757575);
  late Color accent4 = const Color(0xFF616161);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color grayIcon = const Color(0xFF57636C);
  late Color darkText = const Color(0xFF090F13);
  late Color primary600 = const Color(0xFFC3724C);
  late Color secondary600 = const Color(0xFF2CAE9F);
  late Color dark400 = const Color(0xFF262D34);
  late Color background = const Color(0xFFF1F4F8);
  late Color grayIcon400 = const Color(0xFFABB3BA);
  late Color lineColor = const Color(0xFF262D34);
  late Color dark500 = const Color(0xFF1D2429);
  late Color customColor1 = const Color(0xFF00015B);
  late Color customColor2 = const Color(0xFFFFDE59);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
