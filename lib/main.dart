import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app1/features/crypto/data/datasources/crypto_remote_data_source_impl.dart';
import 'package:weather_app1/features/crypto/data/repo/crypto_repository_impl.dart';
import 'package:weather_app1/features/crypto/domain/repositories/crypto_repository.dart';
import 'package:weather_app1/features/crypto/domain/usecases/get_coin_data_by_id.dart'; // Added import
import 'package:weather_app1/features/crypto/presentation/bloc/crypto_bloc.dart';
import 'package:weather_app1/features/crypto/presentation/pages/crypt_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();

  final httpClient = http.Client();

  runApp(MyApp(httpClient: httpClient));
}

class MyApp extends StatelessWidget {
  final http.Client httpClient;
  const MyApp({super.key, required this.httpClient});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create:
            (context) => CryptoBloc(
              getCoinDataById: GetCoinDataById(
                CryptoRepositoryImpl(
                  remoteDataSource: CryptoRemoteDataSourceImpl(
                    client: httpClient,
                  ),
                ),
              ),
            ),
        child: CryptoPage(),
      ),
    );
  }
}
