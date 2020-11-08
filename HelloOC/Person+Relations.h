//
//  Person+Relations.h
//  HelloOC
//
//  Created by grass on 2020/11/8.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person (Relations)
-(void) addFriend:(Person *) friend;
-(void) removeFriend:(Person *) friend;
-(void) sayHelloToAllFriends;
@end

NS_ASSUME_NONNULL_END
