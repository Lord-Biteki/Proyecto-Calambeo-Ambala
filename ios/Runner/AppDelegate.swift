import UIKit
import Flutter
import GoogleMaps // Importa Google Maps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    
    // Proveer la clave API de Google Maps
    GMSServices.provideAPIKey("AIzaSyD1Ahnr9g3hUO1moZ11F2W1FN3vH7kJM_w") // Reemplaza con tu clave API de Google Maps

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
