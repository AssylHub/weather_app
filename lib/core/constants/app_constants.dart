import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants {
  static const String appName = "Crypto Tracker App";
  static String get apiKey => dotenv.env["COINGECKO_API_KEY"] ?? "";

  // Base URL for CoinGecko API
  static const String baseUrl = 'https://api.coingecko.com/api/v3/';

  // API endpoints
  static const String coinsMarketsEndpoint = 'coins/markets';
  static const String coinsListEndpoint = 'coins/list';
  static const String coinDetailEndpoint = 'coins/{id}';
  static const String marketChartEndpoint = 'coins/{id}/market_chart';

  // Default currency for tracking
  static const String defaultCurrency = 'usd';

  // Default page size for the list of coins (Pagination)
  static const int defaultPageSize = 20;

  // API Query parameters
  static const String vsCurrency = 'vs_currency';
  static const String order = 'order'; // Sort by market cap, volume, etc.
  static const String perPage =
      'per_page'; // Limit the number of coins per page
  static const String page = 'page'; // Page number for pagination
}
