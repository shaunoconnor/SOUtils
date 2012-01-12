//
//  SOLog.h
//
//  Created by Shaun O'Connor on 24/05/11.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define SOLogString(s,...) \
[SOLog logFile:__FILE__ lineNumber:__LINE__ \
format:(s),##__VA_ARGS__]

@interface SOLog : NSObject {}

extern NSString * const LOGGING_ON;

+(void)logFile:(char*)sourceFile lineNumber:(int)lineNumber format:(NSString*)format, ...;

@end