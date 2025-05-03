import 'package:weather_app1/features/crypto/domain/entities/crypto.dart';

class CryptoModel extends Crypto {
  const CryptoModel({
    required super.id,
    required super.name,
    required super.symbol,
    required super.logoUrl,
    required super.price,
  });

  factory CryptoModel.fromJson(Map<String, dynamic> json) {
    return CryptoModel(
      id: json['id'],
      name: json['name'],
      symbol: json["symbol"],
      logoUrl: json["image"]['large'],
      price: (json["market_data"]["current_price"]["usd"] as num).toDouble(),
    );
  }
}
