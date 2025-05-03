import 'package:weather_app1/features/crypto/data/models/crypto_model.dart';

abstract class CryptoRemoteDataSource {
  Future<CryptoModel> getCoinDataById(String coinId);
}
