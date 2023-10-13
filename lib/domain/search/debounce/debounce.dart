import 'dart:async';

class Debouncer {
  Timer? _timer;

  debounce(Duration duration, callback) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(duration, callback);
  }
}
