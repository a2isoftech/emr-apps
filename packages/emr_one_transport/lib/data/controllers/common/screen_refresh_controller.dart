class ScreenRefreshController {
  bool _canRefresh = true;

  bool canRefreshScreen() {
    return _canRefresh;
  }

  void pauseScreenRefresh() {
    _canRefresh = false;
  }

  void resumeScreenRefresh() {
    _canRefresh = true;
  }
}
