//
//  HelloStaticKeyword.h
//  HelloOC
//
//  Created by grassswwang(王圣伟) on 2020/11/16.
// 1. static变量是无法放在@interface中的，编译器直接报错
// 2. static变量可以声明在@interface之外，这样外部的类也是可以访问的
// 3. static变量是类变量
// 4. 和java中的static变量是一样的
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

static NSString *grassname = @"111112222";
static NSString *gName = @"gNamexxxx";

@interface HelloStaticKeyword : NSObject

-(void) startTest;
@end

NS_ASSUME_NONNULL_END
