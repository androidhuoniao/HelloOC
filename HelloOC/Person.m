//
//  Person.m
//  HelloOC
//
//  Created by grass on 2020/11/7.
//

#import "Person.h"

@implementation Person
- (void)toString{
    NSLog(@"name is %@ and age is %li ",_name,(long)_age);
}
- (void)setName:(NSString *)name AndAge:(int)age{
    self.name = name;
    self.age = age;
}
@end
