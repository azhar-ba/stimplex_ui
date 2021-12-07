#import "StimplexUiPlugin.h"
#if __has_include(<stimplex_ui/stimplex_ui-Swift.h>)
#import <stimplex_ui/stimplex_ui-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "stimplex_ui-Swift.h"
#endif

@implementation StimplexUiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftStimplexUiPlugin registerWithRegistrar:registrar];
}
@end
