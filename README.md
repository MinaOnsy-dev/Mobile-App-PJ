# 📰 NewsCloud

**NewsCloud** is a clean, minimal Flutter app for reading the latest headlines by category — General, Business, Entertainment, Health, Science, Technology, and Sports — with smooth cached images, real-time connectivity handling, and an in-app browser for full articles.

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.0.5%2B-02569B?logo=flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-3.0.5%2B-0175C2?logo=dart&logoColor=white" alt="Dart">
  <img src="https://img.shields.io/badge/Platforms-Android%20%7C%20iOS-lightgrey" alt="Platforms">
  <img src="https://img.shields.io/badge/License-MIT-green" alt="License">
</p>

---

## ✨Features

- **Category-based browsing** — General, Business, Entertainment, Health, Science, Technology, and Sports, each with its own headline feed
- **Live news feed** powered by the [NewsAPI](https://newsapi.org/) REST API
- **In-app article reader** — articles open in a built-in WebView instead of kicking users out to a browser
- **Image caching** with `cached_network_image`, including loading and error placeholders for a smooth scroll experience
- **Real-time connectivity awareness** — automatically detects when the device goes offline and shows a friendly "No Internet Connection" state instead of failed requests
- **State management with Provider** for reactive connectivity updates across the app

| Home | Category | Article |
|:---:|:---:|:---:|
| _screenshot_ | _screenshot_ | _screenshot_ |

##  Tech Stack

| Purpose | Package |
|---|---|
| Networking | [`dio`](https://pub.dev/packages/dio) |
| State management | [`provider`](https://pub.dev/packages/provider) |
| Image loading & caching | [`cached_network_image`](https://pub.dev/packages/cached_network_image) + [`flutter_cache_manager`](https://pub.dev/packages/flutter_cache_manager) |
| In-app article viewer | [`webview_flutter`](https://pub.dev/packages/webview_flutter) |
| Network status detection | [`connectivity_plus`](https://pub.dev/packages/connectivity_plus) |
| App icon & splash screen | `flutter_launcher_icons`, `flutter_native_splash` |

##  Project Structure

```
lib/
├── main.dart                     # App entry point, providers setup
├── models/
│   ├── article_model.dart        # News article data model
│   └── category_model.dart       # Category card model
├── services/
│   ├── news_service.dart         # NewsAPI integration
│   └── internet_connect_service.dart  # Connectivity listener (ChangeNotifier)
├── views/
│   ├── home_view.dart            # Main screen: categories + general feed
│   ├── category_view.dart        # Feed filtered by a single category
│   └── news_webview.dart         # In-app article reader
└── widgets/
    ├── categories_list_view.dart # Horizontal scrollable category list
    ├── category_card.dart        # Individual category card
    ├── news_list_view_builder.dart # Fetches & builds the news list
    ├── news_list_view.dart       # Sliver list of articles
    └── news_tile.dart            # Individual article card
```

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) `>=3.0.5`
- A free API key from [NewsAPI](https://newsapi.org/register)
- Android Studio / Xcode set up for your target platform

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/MinaOnsy-dev/newscloud.git
   cd newscloud
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add your NewsAPI key**

   This project calls the NewsAPI directly from `lib/services/news_service.dart`. Add your own key there:
   ```dart
   final response = await dio.get(
     'https://newsapi.org/v2/top-headlines?country=us&apiKey=YOUR_API_KEY_HERE&category=$category',
   );
   ```
   > ⚠️ **Don't commit your real API key.** For a production setup, pass it in at build time instead, e.g.:
   > ```bash
   > flutter run --dart-define=NEWS_API_KEY=your_key_here
   > ```
   > and read it with `const String.fromEnvironment('NEWS_API_KEY')`.

4. **Run the app**
   ```bash
   flutter run
   ```

## 🗺️ Roadmap

- [ ] Move the API key out of source code (`--dart-define` / `.env`)
- [ ] Add search functionality
- [ ] Add a bookmark/save-for-later feature
- [ ] Support light/dark theme toggle
- [ ] Add pull-to-refresh on the news feed
- [ ] Localize headlines beyond the `us` country code

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](../../issues) or open a pull request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Mina Onsy**

- GitHub: [@MinaOnsy-dev](https://github.com/MinaOnsy-dev)
- LinkedIn: [mina-wasif](https://www.linkedin.com/in/mina-wasif)

---

<p align="center">If you found this project useful, consider giving it a ⭐!</p>

