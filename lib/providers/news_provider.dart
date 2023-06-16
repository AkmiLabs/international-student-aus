import 'package:flutter/material.dart';

class NewsProvider with ChangeNotifier {
  bool _isLoading = true;

  bool get isLoading => _isLoading;

  Future<void> getData() async {}
}
