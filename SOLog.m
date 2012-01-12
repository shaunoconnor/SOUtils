//
//  SOLog.m
//
//  Created by Shaun O'Connor on 24/05/11.
//

#import "SOLog.h"

@implementation SOLog

+(void)initialize
{
	    
}

+(void)logFile:(char*)sourceFile lineNumber:(int)lineNumber format:(NSString*)format, ...;
{
    if( [LOGGING_ON isEqualToString:@"NO"] )
        return;
    
	va_list ap;
	NSString *print,*file;
    
	va_start(ap,format);
    
	file=[[NSString alloc] initWithBytes:sourceFile 
                                  length:strlen(sourceFile) 
                                encoding:NSUTF8StringEncoding];
    
	print=[[NSString alloc] initWithFormat:format arguments:ap];
	va_end(ap);
    
	// handles synchronization issues
	NSLog(@"%s:%d %@",[[file lastPathComponent] UTF8String], lineNumber,print);
    
	[print release];
	[file release];
	
	return;
}


@end