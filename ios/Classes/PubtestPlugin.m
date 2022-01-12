#import "PubtestPlugin.h"
#if __has_include(<pubtest/pubtest-Swift.h>)
#import <pubtest/pubtest-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pubtest-Swift.h"
#endif

@implementation PubtestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPubtestPlugin registerWithRegistrar:registrar];
}
@end
