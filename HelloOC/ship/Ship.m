//
//  Ship.m
//  HelloOC
//
//  Created by grass on 2020/11/8.
//

#import "Ship.h"
// The class extension.
@interface Ship()
 
@property (strong, readwrite) Person *captain;
 
@end

@implementation Ship
@synthesize caption = _caption;
- (id)initWithCaption:(Person *)caption{
    self = [super init];
    if(self){
        [self setCaptain:caption];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"caption is %@", self.captain.name];
}
@end
