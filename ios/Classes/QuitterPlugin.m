#import "QuitterPlugin.h"
#import <quitter/quitter-Swift.h>

@implementation QuitterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftQuitterPlugin registerWithRegistrar:registrar];
}
@end
