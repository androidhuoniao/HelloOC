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
 
-(void) testPrivateMethod;
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

- (NSString *)description{
    [self testPrivateMethod];
    return [NSString stringWithFormat:@"caption is %@", self.captain.name];
}

- (void)testPrivateMethod{
    NSLog(@"testPrivateMethod is working");
}
@end
