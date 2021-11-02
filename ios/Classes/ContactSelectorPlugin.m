#import "ContactSelectorPlugin.h"
#if __has_include(<contact_selector/contact_selector-Swift.h>)
#import <contact_selector/contact_selector-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "contact_selector-Swift.h"
#endif

@implementation ContactSelectorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftContactSelectorPlugin registerWithRegistrar:registrar];
}
@end
