//
//  Ship.h
//  HelloOC
//
//  Created by grass on 2020/11/8.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Ship : NSObject
@property(strong,readonly) Person *caption;
-(id) initWithCaption:(Person *) caption;
@end

NS_ASSUME_NONNULL_END
