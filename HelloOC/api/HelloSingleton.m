//
//  HelloSingleton.m
//  HelloOC
//
//  Created by grassswwang on 2021/6/4.
//

#import "HelloSingleton.h"

@implementation HelloSingleton

+ (instancetype)sharedInstance {
    static HelloSingleton *_singleton;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _singleton = [[HelloSingleton alloc] init];
    });
    return _singleton;
}

@end
