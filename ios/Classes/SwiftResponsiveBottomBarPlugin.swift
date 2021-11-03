import Flutter
import UIKit

public class SwiftResponsiveBottomBarPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "responsive_bottom_bar", binaryMessenger: registrar
    .messenger())
    let instance = SwiftResponsiveBottomBarPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
