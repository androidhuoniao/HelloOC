//
//  PersonFactory.h
//  HelloOC
//
//  Created by grassswwang(王圣伟) on 2020/11/12.
//

#import <Foundation/Foundation.h>
#import "Person.h"
NS_ASSUME_NONNULL_BEGIN

@interface PersonFactory : NSObject
+(Person *) makePerson;
+(Person *) copyPerson:(Person *)sourcePerson;
@end

NS_ASSUME_NONNULL_END
