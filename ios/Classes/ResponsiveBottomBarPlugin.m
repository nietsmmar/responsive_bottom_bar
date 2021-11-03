#import "ResponsiveBottomBarPlugin.h"
#if __has_include(<responsive_bottom_bar/responsive_bottom_bar-Swift.h>)
#import <responsive_bottom_bar/responsive_bottom_bar-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "responsive_bottom_bar-Swift.h"
#endif

@implementation ResponsiveBottomBarPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftResponsiveBottomBarPlugin registerWithRegistrar:registrar];
}
@end
