import 'package:equatable/equatable.dart';

class Crypto extends Equatable {
  final String id;
  final String name;
  final String symbol;
  final String logoUrl;
  final double price;

  const Crypto({
    required this.id,
    required this.name,
    required this.symbol,
    required this.logoUrl,
    required this.price,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, symbol, logoUrl, price];

  Crypto copyWith({
    String? id,
    String? name,
    String? symbol,
    String? logoUrl,
    double? price,
  }) {
    return Crypto(
      id: id ?? this.id,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      logoUrl: logoUrl ?? this.logoUrl,
      price: price ?? this.price,
    );
  }
}
