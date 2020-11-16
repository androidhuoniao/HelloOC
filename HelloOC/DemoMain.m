//
//  DemoMain.m
//  HelloOC
//
//  Created by grass on 2020/11/8.
//

#import "DemoMain.h"
#import "Person.h"
#import "Ship.h"
#import "HelloExtern.h"
#import "HelloStaticKeyword.h"

@implementation DemoMain
+ (void)helloExtensions{
    Person *caption = [Person new];
    [caption setName:@"grass"];
    Ship *ship = [Ship new];
    [ship initWithCaption:caption];
    NSLog(@"ship is %@",ship);
    [DemoMain helloExternKeyWord];

}

+ (void)helloExternKeyWord{
    extern CGFloat const GRASS_AGE;
    CGFloat myage = 38;

    NSLog(@"DemoMain.helloExternKeyWord grass age is %f",myage);
    HelloExtern *demo = [[HelloExtern alloc] init];
    [demo helloTest];
}

+ (void)helloStaticKeyWord{
    HelloStaticKeyword *staticDemo = [[HelloStaticKeyword alloc] init];
//    [HelloStaticKeyword gName];
    
    [staticDemo startTest];
}
@end
