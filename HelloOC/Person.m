//
//  Person.m
//  HelloOC
//
//  Created by grass on 2020/11/7.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    self = [super init];
    if (self) {
        _friends = [NSMutableArray new];
    }
    return self;
}
- (void)toString{
    NSLog(@"name is %@ and age is %li ",_name,(long)_age);
}
- (void)setName:(NSString *)name AndAge:(int)age{
    self.name = name;
    self.age = age;
}
- (void)yourSex{
    
}
- (void)listFriends{
    NSLog(@"friends.length: %lu", (unsigned long)self.friends.count);
}
@end
