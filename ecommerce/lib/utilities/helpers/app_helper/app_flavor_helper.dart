import '../../constants/environmental_attribute.dart';

enum AppFlavor {
  development,
  staging,
  production,
}

extension AppFlavorHelper on AppFlavor {
  EnvironmentalAttribute get attributeFlavor {
    switch (this) {
      case AppFlavor.development:
        return EnvironmentalAttribute.development();
      case AppFlavor.staging:
        return EnvironmentalAttribute.staging();
      case AppFlavor.production:
        return EnvironmentalAttribute.production();
    }
  }

  AppFlavor get flavorType => attributeFlavor.flavorType;

  String get apiBaseUrl => attributeFlavor.apiBaseUrl;

  bool get isDevelopment => attributeFlavor.isDevelopment;

  bool get isStaging => attributeFlavor.isStaging;

  bool get isProduction => attributeFlavor.isProduction;
}
