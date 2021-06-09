//
//  HelloSingleton.h
//  HelloOC
//
//  Created by grassswwang on 2021/6/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HelloSingleton : NSObject
+ (instancetype)sharedInstance;
@end

NS_ASSUME_NONNULL_END
