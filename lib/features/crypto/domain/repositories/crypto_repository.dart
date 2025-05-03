import 'package:dartz/dartz.dart';
import 'package:weather_app1/core/error/failures.dart';
import 'package:weather_app1/features/crypto/domain/entities/crypto.dart';

abstract class CryptoRepository {
  Future<Either<Failure, Crypto>> getCoinDataById(String coinId);
}
