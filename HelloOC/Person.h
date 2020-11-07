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
-(void) toString;
-(void) setName:(NSString *) name AndAge:(int) age;
@end

NS_ASSUME_NONNULL_END
