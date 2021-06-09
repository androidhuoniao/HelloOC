//
//  HelloNSArray.m
//  HelloOC
//
//  Created by grassswwang on 2021/6/2.
//

#import "HelloNSArray.h"

@implementation HelloNSArray
+ (void)run {
    [self splitString];
}

+ (void)splitString {
    NSString *strPattern = @"1,2,3,4,5";
    NSArray *aResult = [strPattern componentsSeparatedByString:@","];
    NSLog(@"%s result:%@", __func__, aResult);
}
@end
