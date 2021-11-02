#import "ResponsiveBottombarPlugin.h"
#if __has_include(<responsive_bottombar/responsive_bottombar-Swift.h>)
#import <responsive_bottombar/responsive_bottombar-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "responsive_bottombar-Swift.h"
#endif

@implementation ResponsiveBottombarPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftResponsiveBottombarPlugin registerWithRegistrar:registrar];
}
@end
