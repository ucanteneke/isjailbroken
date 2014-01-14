//
//  sinavParkPlugin.m
//  sinavpark
//
//  Created by Can on 14.01.2014.
//
//

#import "sinavParkPlugin.h"
#import "JBroken.h"
@implementation sinavParkPlugin
- (Boolean) isJB:(NSMutableArray*)arguments{
 
    
    CDVPluginResult* pluginResult = nil;
    NSString* javaScript = nil;
    NSString* callbackId = [arguments objectAtIndex:0];
    
        @try {
     
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:isDeviceJailbroken()];
            javaScript = [pluginResult toSuccessCallbackString:callbackId];
        } @catch (NSException* exception) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_JSON_EXCEPTION messageAsString:[exception reason]];
            javaScript = [pluginResult toErrorCallbackString:callbackId];
        }
    
    [self writeJavascript:javaScript];
}
@end
