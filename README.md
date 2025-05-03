📊 Crypto Tracker App - Flutter + Clean Architecture

A cryptocurrency tracking application built with Flutter and Clean Architecture principles. This app fetches real-time data from the CoinGecko API, showcasing scalable architecture, modular code separation, and reactive UI updates.
📱 Features

    Search and browse cryptocurrencies

    View price, symbol, image, 24h change, and market cap

    Pull-to-refresh for real-time updates

    Clean Architecture (Domain, Data, Presentation layers)

    State management using BLoC (or Provider)

    Responsive UI for mobile and tablet

    Optional: Sort/filter by price, market cap, or volume

🧱 Project Structure (Clean Architecture)

lib/
├── core/               # Shared utilities, constants, error handling
├── features/
│   └── crypto/
│       ├── data/       # Models, data sources, repository implementation
│       ├── domain/     # Entities, repositories, use cases
│       └── presentation/ # BLoC/Provider, UI widgets, screens
└── main.dart

🧰 Dependencies
Package	Usage
http	API communication
flutter_bloc	State management
equatable	Value equality in entities
get_it	Dependency injection
dartz	Functional programming support
cached_network_image	Optimized image loading from CoinGecko
pull_to_refresh	Refresh list of coins manually
🔧 Setup Instructions

    Clone the project:

git clone https://github.com/your-username/flutter-crypto-tracker.git
cd flutter-crypto-tracker

Install dependencies:

flutter pub get

Run the app:

    flutter run

    CoinGecko API Usage:

        CoinGecko is a free, no-auth API.

        Base URL: https://api.coingecko.com/api/v3/

        Example endpoint: /coins/markets?vs_currency=usd

🚀 Development Phases

✅ Phase 1: Project Setup

    Scaffold Flutter project

    Add core dependencies

    Organize folders using Clean Architecture

✅ Phase 2: Domain Layer

    Define CryptoCoin entity

    Create repository interface CryptoRepository

    Create use cases (e.g., GetTopCoinsUseCase)

✅ Phase 3: Data Layer

    Implement remote data source using CoinGecko API

    Create data models and convert to domain entities

    Implement the repository

✅ Phase 4: Presentation Layer

    Implement state management using BLoC (or Provider)

    UI screens for coin list, details, loading, and error

    Connect use cases to UI

✅ Phase 5: Dependency Injection

    Configure service locator with GetIt

    Register all layers (data sources, use cases, BLoCs)

✅ Phase 6: UI Enhancements

    Use cached_network_image for coin icons

    Add percent change indicators, price charts (optional)

    Add refresh and filter/sort features

✅ Phase 7: Testing (Optional)

    Unit test domain logic

    Widget test BLoC and UI

    Mock data source for test isolation

📸 Screenshots

Add screenshots or demo GIFs here
🧪 Testing

    Highly recommended for production apps

    Unit testing with mockito

    Widget testing with flutter_test

    Test repository and BLoC logic separately

📄 License

This project is licensed under the MIT License. See the LICENSE file for details.
👤 Author

Your Name
GitHub • Portfolio
🌟 Support

If you find this project helpful, feel free to ⭐️ the repo, share it, or contribute with PRs!

Would you like this as a downloadable README.md file or want help publishing this to a GitHub repo?