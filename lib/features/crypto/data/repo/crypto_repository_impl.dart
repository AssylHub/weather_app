import 'package:dartz/dartz.dart';
import 'package:weather_app1/core/error/failures.dart';
import 'package:weather_app1/features/crypto/data/datasources/crypto_remote_data_source.dart';
import 'package:weather_app1/features/crypto/domain/entities/crypto.dart';
import 'package:weather_app1/features/crypto/domain/repositories/crypto_repository.dart';

class CryptoRepositoryImpl implements CryptoRepository {
  final CryptoRemoteDataSource remoteDataSource;

  CryptoRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, Crypto>> getCoinDataById(String coinId) async {
    try {
      final coin = await remoteDataSource.getCoinDataById(coinId);
      return Right(coin);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
