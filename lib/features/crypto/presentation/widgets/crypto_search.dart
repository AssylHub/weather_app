import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app1/features/crypto/presentation/bloc/crypto_bloc.dart';

class CryptoSearch extends StatefulWidget {
  const CryptoSearch({super.key});

  @override
  State<CryptoSearch> createState() => _CryptoSearchState();
}

class _CryptoSearchState extends State<CryptoSearch> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Enter cryptocurrency name',
          suffixIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              if (_searchController.text.isNotEmpty) {
                context.read<CryptoBloc>().add(
                  FetchCoinDataById(_searchController.text),
                );
              }
            },
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onSubmitted: (cryptoName) {
          if (cryptoName.isNotEmpty) {
            context.read<CryptoBloc>().add(FetchCoinDataById(cryptoName));
          }
        },
      ),
    );
  }
}
