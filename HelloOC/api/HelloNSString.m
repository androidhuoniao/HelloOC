//
//  HelloNSString.m
//  HelloOC
//
//  Created by grassswwang on 2021/6/2.
//

#import "HelloNSString.h"

@implementation HelloNSString

+ (void)run {
    NSString *strPattern = @"1,2,3,4,5";
    NSArray *aResult = [strPattern componentsSeparatedByString:@","];
    [self logArray:aResult];
    
    aResult = [@"grass," componentsSeparatedByString:@","];
    [self logArray:aResult];
    
    BOOL result = NO;
    if (result) {
        NSLog(@"result is true");
    }else {
        NSLog(@"result is false");
    }
}

+(NSArray *)splitString:(NSString *)str {
    NSString *strPattern = @"1,2,3,4,5";
    NSArray *aResult = [strPattern componentsSeparatedByString:@","];
    return nil;
}

+(void)logArray:(NSArray *)array {
    for (NSString *value in array) {
        NSLog(@"value:%@",value);
    }
}
@end
