//
//  Person+Relations.m
//  HelloOC
//
//  Created by grass on 2020/11/8.
//

#import "Person+Relations.h"

@implementation Person (Relations)
- (void)addFriend:(Person *)friend{
   NSInteger oldcount =  [self friends].count;
    [[self friends] addObject:friend];
    NSInteger newcount =  [self friends].count;
    NSLog(@"addFriend: %@ oldCount: %li newCount: %li",friend,oldcount,newcount);
    
}

- (void)removeFriend:(Person *)friend{
    NSLog(@"removeFriend: %@",friend);
    [[self friends] removeObject:friend];
}

- (void)sayHelloToAllFriends{
    NSLog(@"sayHelloToAllFriends ");
    for (Person* p in [self friends]) {
        NSLog(@"person %@ ", p.name);
    }
    NSLog(@"--------sayHelloToAllFriends end------");
}
@end
