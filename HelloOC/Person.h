//
//  Person.h
//  HelloOC
//
//  Created by grass on 2020/11/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property NSString *name;
@property NSInteger age;
@property(readonly) NSMutableArray* friends;

-(void) toString;
-(void) setName:(NSString *) name AndAge:(int) age;
-(void) yourSex;
-(void) listFriends;
@end

@protocol PersonBehaivor <NSObject>
-(void) eat;
-(void) drink;

@end
NS_ASSUME_NONNULL_END
