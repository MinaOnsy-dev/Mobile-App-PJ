import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService with ChangeNotifier {
  bool _isConnected = true;
  bool get isConnected => _isConnected;

  final Connectivity _connectivity = Connectivity();

  ConnectivityService() {
    _connectivity.onConnectivityChanged
        .listen((List<ConnectivityResult> results) {
      _isConnected = results.any((result) => result != ConnectivityResult.none);
      notifyListeners();
    });
  }
}
