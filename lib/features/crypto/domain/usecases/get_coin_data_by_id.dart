import 'package:dartz/dartz.dart';
import 'package:weather_app1/core/error/failures.dart';
import 'package:weather_app1/features/crypto/domain/entities/crypto.dart';
import 'package:weather_app1/features/crypto/domain/repositories/crypto_repository.dart';
import 'package:weather_app1/features/crypto/domain/usecases/usecase.dart';

class GetCoinDataById implements Usecase<Crypto, String> {
  final CryptoRepository cryptoRepository;

  GetCoinDataById(this.cryptoRepository);

  @override
  Future<Either<Failure, Crypto>> call(String params) async {
    return await cryptoRepository.getCoinDataById(params);
  }
}
