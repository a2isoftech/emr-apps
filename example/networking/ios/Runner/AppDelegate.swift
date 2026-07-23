import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // This is a "fix" when running the app in release mode on iOS. It looks crazy, but it does
    // seem to work - somehow! Without this a WebSocket/HTTP call fails to resolve a DNS to an
    // Edge gateway API running locally on the network using e.g. a `10.` IP address.
    // It must be a timing issue somewhere, but that could be between the iOS app launching, and
    // Dart/Flutter initialising maybe?
    // There's no guarantee this "fix" will keep working.
    Thread.sleep(forTimeInterval: 0)

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
