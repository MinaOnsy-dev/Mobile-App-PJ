import 'package:NewsCloud/services/internet_connect_service.dart';
import 'package:flutter/material.dart';
import 'package:NewsCloud/views/home_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DefaultCacheManager().emptyCache();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ConnectivityService(),
      child: const MyApp(),
    ),
  );
}

final dio = Dio();

void getNews() async {
  final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?language=en&country=us&apiKey=8b272a179cfe4970bfa1dcba6270915f');
  print(response);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        scaffoldBackgroundColor: Colors.white, // الخلفية كلها بيضا
      ),
      home: name(),
    );
  }
}

// ignore: camel_case_types
class name extends StatelessWidget {
  const name({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeView();
  }
}
