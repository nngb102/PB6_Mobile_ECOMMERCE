import '../helpers/app_helper/app_flavor_helper.dart';
import 'api_constants.dart';

class EnvironmentalAttribute {
  EnvironmentalAttribute.development()
      : flavorType = AppFlavor.development,
        apiBaseUrl = ApiConstants.devBaseUrl
        ;

  EnvironmentalAttribute.staging()
      : flavorType = AppFlavor.staging,
        apiBaseUrl = ApiConstants.stgBaseUrl;

  EnvironmentalAttribute.production()
      : flavorType = AppFlavor.production,
        apiBaseUrl = ApiConstants.prodBaseUrl;

  final String apiBaseUrl;
  final AppFlavor flavorType;

  bool get isDevelopment => flavorType == AppFlavor.development;

  bool get isStaging => flavorType == AppFlavor.staging;

  bool get isProduction => flavorType == AppFlavor.production;
}
