import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:swapy/core/navigation/navigation_service.dart';

abstract class BaseViewModel extends ChangeNotifier {
  final BuildContext context =
      NavigationService.instance.navigationKey.currentContext!;
  bool _isLoading = false;
  bool _isDisposed = false;
  bool _isInitializeDone = false;

  FutureOr<void> _initState;

  BaseViewModel() {
    _init();
  }

  FutureOr<void> init();

  void _init() async {
    this.isLoading = true;
    _initState = init();
    await _initState;
    this._isInitializeDone = true;
    this.isLoading = false;
  }

  set isLoading(bool value) {
    _isLoading = value;
    scheduleMicrotask(() {
      if (!_isDisposed) notifyListeners();
    });
  }

  @override
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }

  FutureOr<void>? get initState => _initState;

  bool get isInitializeDone => _isInitializeDone;

  bool get isDisposed => _isDisposed;

  bool get isLoading => _isLoading;
}
