import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app1/features/crypto/domain/usecases/get_coin_data_by_id.dart'
    as id_coin;
import 'package:weather_app1/features/crypto/domain/entities/crypto.dart';

part 'crypto_event.dart';
part 'crypto_state.dart';

class CryptoBloc extends Bloc<CryptoEvent, CryptoState> {
  final id_coin.GetCoinDataById getCoinDataById;

  CryptoBloc({required this.getCoinDataById}) : super(CryptoEmpty()) {
    on<FetchCoinDataById>(onGetCoinDataById);
  }

  Future<void> onGetCoinDataById(
    FetchCoinDataById event,
    Emitter<CryptoState> emit,
  ) async {
    emit(CryptoLoading());
    final result = await getCoinDataById(event.coinId);

    result.fold(
      (failure) => emit(CryptoError(failure.message)),
      (crypto) => emit(CryptoLoaded(crypto)),
    );
  }
}
