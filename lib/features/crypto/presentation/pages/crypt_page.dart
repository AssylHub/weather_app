import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app1/features/crypto/presentation/bloc/crypto_bloc.dart';
import 'package:weather_app1/features/crypto/presentation/widgets/crypto_search.dart';

class CryptoPage extends StatelessWidget {
  const CryptoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Crypto App"), centerTitle: true),
      body: Column(
        children: [
          CryptoSearch(),
          Expanded(
            child: BlocBuilder<CryptoBloc, CryptoState>(
              builder: (context, state) {
                if (state is CryptoEmpty) {
                  return Center(child: Text("Enter coin name:"));
                } else if (state is CryptoLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is CryptoError) {
                  return Center(child: Text(state.message));
                } else if (state is CryptoLoaded) {
                  return Center(child: Image.network(state.crypto.logoUrl));
                }

                return Center(child: Text("Something went wrong"));
              },
            ),
          ),
        ],
      ),
    );
  }
}
