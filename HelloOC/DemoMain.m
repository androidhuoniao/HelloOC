//
//  DemoMain.m
//  HelloOC
//
//  Created by grass on 2020/11/8.
//

#import "DemoMain.h"
#import "Person.h"
#import "Ship.h"

@implementation DemoMain
+ (void)helloExtensions{
    Person *caption = [Person new];
    [caption setName:@"grass"];
    Ship *ship = [Ship new];
    [ship initWithCaption:caption];
    NSLog(@"ship is %@",ship);

}


@end
