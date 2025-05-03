part of 'crypto_bloc.dart';

abstract class CryptoEvent extends Equatable {
  const CryptoEvent();

  @override
  List<Object> get props => [];
}

class FetchCoinDataById extends CryptoEvent {
  final String coinId;

  const FetchCoinDataById(this.coinId);

  @override
  List<Object> get props => [coinId];
}
