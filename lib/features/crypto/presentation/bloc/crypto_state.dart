part of 'crypto_bloc.dart';

sealed class CryptoState extends Equatable {
  const CryptoState();

  @override
  List<Object> get props => [];
}

final class CryptoEmpty extends CryptoState {}

final class CryptoLoading extends CryptoState {}

final class CryptoLoaded extends CryptoState {
  final Crypto crypto;

  const CryptoLoaded(this.crypto);

  @override
  List<Object> get props => [crypto];
}

final class CryptoError extends CryptoState {
  final String message;

  const CryptoError(this.message);

  @override
  List<Object> get props => [message];
}
