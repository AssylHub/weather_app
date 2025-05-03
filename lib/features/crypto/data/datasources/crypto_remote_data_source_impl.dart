import 'dart:convert';

import "package:http/http.dart" as http;
import 'package:weather_app1/core/constants/app_constants.dart';

import 'package:weather_app1/features/crypto/data/datasources/crypto_remote_data_source.dart';
import 'package:weather_app1/features/crypto/data/models/crypto_model.dart';

class CryptoRemoteDataSourceImpl implements CryptoRemoteDataSource {
  final http.Client client;

  CryptoRemoteDataSourceImpl({required this.client});

  @override
  Future<CryptoModel> getCoinDataById(String coinId) async {
    final response = await client.get(
      Uri.parse(
        "${AppConstants.baseUrl}coins/${coinId}?x_cg_demo_api_key=${AppConstants.apiKey}",

        // https://api.coingecko.com/api/v3/coins/bitcoin
      ),
    );

    if (response.statusCode == 200) {
      return CryptoModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
