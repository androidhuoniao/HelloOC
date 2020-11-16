//
//  HelloStaticKeyword.m
//  HelloOC
//
//  Created by grassswwang(王圣伟) on 2020/11/16.
//

#import "HelloStaticKeyword.h"
#import "HelloExtern.h"
extern CGFloat const GRASS_AGE;
@implementation HelloStaticKeyword
- (void)startTest{
    NSLog(@"HelloStaticKeyword %s %@",__func__,grassname);
    CGFloat age = GRASS_AGE;
    NSLog(@"HelloStaticKeyword %s age is %f",__func__,age);
}
@end
